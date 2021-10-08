package e.market.kurly.mypage.offer;

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
public class OfferService {
	@Autowired
	private OfferDAO offerDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;

	public int setInsert(OfferDTO offerDTO, MultipartFile[] files) throws Exception {
		// 1. 어느 폴더 /resources/upload/offer/
		String realPath = servletContext.getRealPath("/resources/upload/offer/");
		System.out.println(realPath);
		File file = new File(realPath);

		int result = offerDAO.setInsert(offerDTO);

		if (files.length > 0) {
			for (MultipartFile multipartFile : files) {
				String fileName = fileManager.fileSave(multipartFile, file);
				System.out.println(fileName);
				BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
				boardFilesDTO.setFileName(fileName);
				boardFilesDTO.setOriName(multipartFile.getOriginalFilename());
				boardFilesDTO.setNum(offerDTO.getNum());

				// if (boardFilesDTO.getOriName().equals(""))
				result = offerDAO.setFile(boardFilesDTO);
			}
		}
		return result;
	}
	
	public List<OfferDTO> getList(MembersDTO membersDTO) throws Exception {
		return offerDAO.getList(membersDTO);
	}
	
	public OfferDTO getOne(OfferDTO offerDTO) throws Exception {
		return offerDAO.getOne(offerDTO);
	}
	
	public List<BoardFilesDTO> getFiles(OfferDTO offerDTO) throws Exception {
		return offerDAO.getFiles(offerDTO);
	}
	
	public int setUpdate(OfferDTO offerDTO, MultipartFile[] files) throws Exception {
		// 1. 어느 폴더 /resources/upload/offer/
		String realPath = servletContext.getRealPath("/resources/upload/offer/");
		System.out.println(realPath);
		File file = new File(realPath);

		int result = offerDAO.setUpdate(offerDTO);

		if (files.length > 0) {
			for (MultipartFile multipartFile : files) {
				String fileName = fileManager.fileSave(multipartFile, file);
				System.out.println(fileName);
				BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
				boardFilesDTO.setFileName(fileName);
				boardFilesDTO.setOriName(multipartFile.getOriginalFilename());	
				boardFilesDTO.setNum(offerDTO.getNum());
				
				//if (boardFilesDTO.getOriName().equals(""))
				result = offerDAO.setFile(boardFilesDTO);
			}
		}
		return result;
	}
	
	public int setDelete(OfferDTO offerDTO) throws Exception {
		// Files Table에서 삭제할 파일명들 조회
		List<BoardFilesDTO> ar = offerDAO.getFiles(offerDTO);
		
		// 어느 폴더
		String realPath = servletContext.getRealPath("/resources/upload/offer/");
		for(BoardFilesDTO bDTO : ar) {
			File file = new File(realPath, bDTO.getFileName());
			fileManager.fileDelete(file);
		}
		
		// DB 삭제
		return offerDAO.setDelete(offerDTO);
	}
	
	public int setFileDelete(BoardFilesDTO boardFilesDTO) throws Exception {
		// 폴더에서 파일 삭제
		String realPath = servletContext.getRealPath("/resources/upload/offer/");

		//File file = new File(realPath, boardFilesDTO.getFileName());
		//fileManager.fileDelete(file);
		
		return offerDAO.setFileDelete(boardFilesDTO);
	}
	
	public BoardFilesDTO getFileOne(BoardFilesDTO boardFilesDTO) throws Exception {
		return offerDAO.getFileOne(boardFilesDTO);
	}
}
