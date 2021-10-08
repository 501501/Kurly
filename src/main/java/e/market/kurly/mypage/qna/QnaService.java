package e.market.kurly.mypage.qna;

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
public class QnaService {
	@Autowired
	private QnaDAO qnaDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	public int setInsert(QnaDTO qnaDTO, MultipartFile [] files) throws Exception {
		// 1. 어느 폴더 /resources/upload/qna/
		String realPath = servletContext.getRealPath("/resources/upload/qna/");
		System.out.println(realPath);
		File file = new File(realPath);

		int result = qnaDAO.setInsert(qnaDTO);
		
		if (files.length > 0) {
			for (MultipartFile multipartFile : files) {
					String fileName = fileManager.fileSave(multipartFile, file);
					System.out.println(fileName);
					BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
					boardFilesDTO.setFileName(fileName);
					boardFilesDTO.setOriName(multipartFile.getOriginalFilename());
					boardFilesDTO.setNum(qnaDTO.getNum());
		
					//if (boardFilesDTO.getOriName().equals(""))
					result = qnaDAO.setFile(boardFilesDTO);
			}
		}
		return result;
	}
	
	public List<QnaDTO> getList(MembersDTO membersDTO) throws Exception {
		return qnaDAO.getList(membersDTO);
	}
	
	public QnaDTO getOne(QnaDTO qnaDTO) throws Exception {
		return qnaDAO.getOne(qnaDTO);
	}
	
	public List<BoardFilesDTO> getFiles(QnaDTO qnaDTO) throws Exception {
		return qnaDAO.getFiles(qnaDTO);
	}
	
	public int setUpdate(QnaDTO qnaDTO, MultipartFile[] files) throws Exception {
		// 1. 어느 폴더 /resources/upload/qna/
		String realPath = servletContext.getRealPath("/resources/upload/qna/");
		System.out.println(realPath);
		File file = new File(realPath);

		int result = qnaDAO.setUpdate(qnaDTO);

		if (files.length > 0) {
			for (MultipartFile multipartFile : files) {
				String fileName = fileManager.fileSave(multipartFile, file);
				System.out.println(fileName);
				BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
				boardFilesDTO.setFileName(fileName);
				boardFilesDTO.setOriName(multipartFile.getOriginalFilename());	
				boardFilesDTO.setNum(qnaDTO.getNum());
				
				//if (boardFilesDTO.getOriName().equals(""))
				result = qnaDAO.setFile(boardFilesDTO);
			}
		}
		return result;
	}
	
	public int setDelete(QnaDTO qnaDTO) throws Exception {
		// Files Table에서 삭제할 파일명들 조회
		List<BoardFilesDTO> ar = qnaDAO.getFiles(qnaDTO);
		
		// 어느 폴더
		String realPath = servletContext.getRealPath("/resources/upload/qna/");
		for(BoardFilesDTO bDTO : ar) {
			File file = new File(realPath, bDTO.getFileName());
			fileManager.fileDelete(file);
		}
		
		// DB 삭제
		return qnaDAO.setDelete(qnaDTO);
	}
	
	public int setFileDelete(BoardFilesDTO boardFilesDTO) throws Exception {
		// 폴더에서 파일 삭제
		String realPath = servletContext.getRealPath("/resources/upload/qna/");

		//File file = new File(realPath, boardFilesDTO.getFileName());
		//fileManager.fileDelete(file);
		
		return qnaDAO.setFileDelete(boardFilesDTO);
	}
	
	public BoardFilesDTO getFileOne(BoardFilesDTO boardFilesDTO) throws Exception {
		return qnaDAO.getFileOne(boardFilesDTO);
	}
}
