package e.market.kurly.mypage.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import e.market.kurly.board.BoardFilesDTO;

@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "e.market.kurly.mypage.qna.QnaDAO.";
	
	public int setInsert(QnaDTO qnaDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", qnaDTO);
	}
	
	public int setFile(BoardFilesDTO boardFilesDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setFile", boardFilesDTO);
	}
}
