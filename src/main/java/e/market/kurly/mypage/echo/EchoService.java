package e.market.kurly.mypage.echo;

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
public class EchoService {
	@Autowired
	private EchoDAO echoDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	public int setInsert(EchoDTO echoDTO, MultipartFile[] files) throws Exception {
		// 1. 어느 폴더 /resources/upload/echo/
		String realPath = servletContext.getRealPath("/resources/upload/echo/");
		System.out.println(realPath);
		File file = new File(realPath);

		int result = echoDAO.setInsert(echoDTO);

		if (files.length > 0) {
			for (MultipartFile multipartFile : files) {
				String fileName = fileManager.fileSave(multipartFile, file);
				System.out.println(fileName);
				BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
				boardFilesDTO.setFileName(fileName);
				boardFilesDTO.setOriName(multipartFile.getOriginalFilename());
				boardFilesDTO.setNum(echoDTO.getNum());

				// if (boardFilesDTO.getOriName().equals(""))
				result = echoDAO.setFile(boardFilesDTO);
			}
		}
		return result;
	}
	
	public List<EchoDTO> getList(MembersDTO membersDTO) throws Exception {
		return echoDAO.getList(membersDTO);
	}
	
	public EchoDTO getOne(EchoDTO echoDTO) throws Exception {
		return echoDAO.getOne(echoDTO);
	}
	
	public List<BoardFilesDTO> getFiles(EchoDTO echoDTO) throws Exception {
		return echoDAO.getFiles(echoDTO);
	}
	
	public int setUpdate(EchoDTO echoDTO, MultipartFile[] files) throws Exception {
		// 1. 어느 폴더 /resources/upload/echo/
		String realPath = servletContext.getRealPath("/resources/upload/echo/");
		System.out.println(realPath);
		File file = new File(realPath);

		int result = echoDAO.setUpdate(echoDTO);

		if (files.length > 0) {
			for (MultipartFile multipartFile : files) {
				String fileName = fileManager.fileSave(multipartFile, file);
				System.out.println(fileName);
				BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
				boardFilesDTO.setFileName(fileName);
				boardFilesDTO.setOriName(multipartFile.getOriginalFilename());	
				boardFilesDTO.setNum(echoDTO.getNum());
				
				//if (boardFilesDTO.getOriName().equals(""))
				result = echoDAO.setFile(boardFilesDTO);
			}
		}
		return result;
	}
	
	public int setDelete(EchoDTO echoDTO) throws Exception {
		// Files Table에서 삭제할 파일명들 조회
		List<BoardFilesDTO> ar = echoDAO.getFiles(echoDTO);
		
		// 어느 폴더
		String realPath = servletContext.getRealPath("/resources/upload/echo/");
		for(BoardFilesDTO bDTO : ar) {
			File file = new File(realPath, bDTO.getFileName());
			fileManager.fileDelete(file);
		}
		
		// DB 삭제
		return echoDAO.setDelete(echoDTO);
	}
	
	public int setFileDelete(BoardFilesDTO boardFilesDTO) throws Exception {
		// 폴더에서 파일 삭제
		String realPath = servletContext.getRealPath("/resources/upload/echo/");

		//File file = new File(realPath, boardFilesDTO.getFileName());
		//fileManager.fileDelete(file);
		
		return echoDAO.setFileDelete(boardFilesDTO);
	}
	
	public BoardFilesDTO getFileOne(BoardFilesDTO boardFilesDTO) throws Exception {
		return echoDAO.getFileOne(boardFilesDTO);
	}
}
