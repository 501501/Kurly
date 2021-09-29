package e.market.kurly.mypage.qna;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import e.market.kurly.board.BoardFilesDTO;
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
		for (MultipartFile multipartFile : files) {
				String fileName = fileManager.fileSave(multipartFile, file);
				System.out.println(fileName);
				BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
				boardFilesDTO.setFileName(fileName);
				boardFilesDTO.setOriName(multipartFile.getOriginalFilename());
				boardFilesDTO.setNum(qnaDTO.getNum());
	
				result = qnaDAO.setFile(boardFilesDTO);
		}
		
		return result;
	}
}
