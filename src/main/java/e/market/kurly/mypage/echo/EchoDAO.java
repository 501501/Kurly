package e.market.kurly.mypage.echo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import e.market.kurly.board.BoardFilesDTO;

@Repository
public class EchoDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "e.market.kurly.mypage.echo.EchoDAO.";
	
	public int setInsert(EchoDTO echoDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", echoDTO);
	}
	
	public int setFile(BoardFilesDTO boardFilesDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setFile", boardFilesDTO);
	}
	
	public List<EchoDTO> getList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public EchoDTO getOne(EchoDTO echoDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getOne", echoDTO);
	}
	
	public List<BoardFilesDTO> getFiles(EchoDTO echoDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getFiles", echoDTO);
	}
	
	public BoardFilesDTO getFileOne(BoardFilesDTO boardFilesDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getFileOne", boardFilesDTO);
	}
	
	public int setUpdate(EchoDTO echoDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", echoDTO);
	}
	
	public int setDelete(EchoDTO echoDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", echoDTO);
	}
	
	public int setFileDelete(BoardFilesDTO boardFilesDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setFileDelete", boardFilesDTO);
	}
}
