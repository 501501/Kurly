package e.market.kurly.mypage.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import e.market.kurly.board.BoardFilesDTO;
import e.market.kurly.members.MembersDTO;

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
	
	public List<QnaDTO> getList(MembersDTO membersDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList", membersDTO);
	}
	
	public QnaDTO getOne(QnaDTO qnaDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getOne", qnaDTO);
	}
	
	public List<BoardFilesDTO> getFiles(QnaDTO qnaDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getFiles", qnaDTO);
	}
	
	public int setUpdate(QnaDTO qnaDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", qnaDTO);
	}
	
	public int setDelete(QnaDTO qnaDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", qnaDTO);
	}
	
	public int setFileDelete(BoardFilesDTO boardFilesDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setFileDelete", boardFilesDTO);
	}
	
	public BoardFilesDTO getFileOne(BoardFilesDTO boardFilesDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getFileOne", boardFilesDTO);
	}
}
