package e.market.kurly.mypage.qna;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import e.market.kurly.MyJunitTest;
import e.market.kurly.board.BoardFilesDTO;

public class QnaDAOTest extends MyJunitTest {
	
	@Autowired
	private QnaDAO qnaDAO;
	
	//@Test
	public void setInsertTest() throws Exception {
		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO.setNum(1L);
		qnaDTO.setCategory("test1");
		qnaDTO.setTitle("test1");
		qnaDTO.setOrderNum("test1");
		qnaDTO.setEmail_ck("y");
		qnaDTO.setPhone_ck("n");
		qnaDTO.setContents("test1");
		int result = qnaDAO.setInsert(qnaDTO);
		
		assertEquals(1, result);
	}
	
	//@Test
	public void setFileTest() throws Exception {
		BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
		boardFilesDTO.setNum(1L);
		boardFilesDTO.setFileName("fileName1");
		boardFilesDTO.setOriName("oriName1");
		int result = qnaDAO.setFile(boardFilesDTO);
		
		assertEquals(1, result);
	}
}
