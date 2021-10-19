package e.market.kurly.mypage.review;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import e.market.kurly.board.BoardFilesDTO;
import e.market.kurly.members.MembersDTO;
import e.market.kurly.util.FileManager;

@Service
public class ReviewService {
	@Autowired
	private ReviewDAO reviewDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	public int setInsert(ReviewDTO reviewDTO, MultipartFile [] files) throws Exception {
		// 1. 어느 폴더 /resources/upload/review/
		String realPath = servletContext.getRealPath("/resources/upload/review/");
		System.out.println(realPath);
		File file = new File(realPath);
		
		// 글 insert
		int result = reviewDAO.setInsert(reviewDTO);
		// 파일 insert
		if (files.length > 0) {
			for (MultipartFile multipartFile : files) {
				String fileName = fileManager.fileSave(multipartFile, file);
				System.out.println(fileName);
				BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
				boardFilesDTO.setFileName(fileName);
				boardFilesDTO.setOriName(multipartFile.getOriginalFilename());
				boardFilesDTO.setNum(reviewDTO.getNum());
	
				//if (boardFilesDTO.getOriName().equals(""))
				result = reviewDAO.setFile(boardFilesDTO);
			}
		}
		// orderlist reviewCK 'n' -> 'y'
		result = reviewDAO.setReviewCk(reviewDTO);
		return result;
	}
	
	public List<ReviewDTO> getList(MembersDTO membersDTO) throws Exception {
		return reviewDAO.getList(membersDTO);
	}
	
	public List<BoardFilesDTO> getFiles(ReviewDTO reviewDTO) throws Exception {
		return reviewDAO.getFiles(reviewDTO);
	}
	
	public ReviewDTO getOne(Long num) throws Exception {
		return reviewDAO.getOne(num);
	}
	
	public int setDelete(Long num) throws Exception {
		ReviewDTO reviewDTO = new ReviewDTO();
		reviewDTO.setNum(num);
		List<BoardFilesDTO> ar = reviewDAO.getFiles(reviewDTO);
		
		String realPath = servletContext.getRealPath("/resources/upload/review/");
		for(BoardFilesDTO bDTO : ar) {
			File file = new File(realPath, bDTO.getFileName());
			fileManager.fileDelete(file);
		}
		
		return reviewDAO.setDelete(num);
	}
	
	public int setFileDelete(BoardFilesDTO boardFilesDTO) throws Exception {
		// 폴더에서 파일 삭제
		String realPath = servletContext.getRealPath("/resources/upload/review/");

		// File file = new File(realPath, boardFilesDTO.getFileName());
		// fileManager.fileDelete(file);
		
		return reviewDAO.setFileDelete(boardFilesDTO);
	}
}
