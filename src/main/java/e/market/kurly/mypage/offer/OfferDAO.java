package e.market.kurly.mypage.offer;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import e.market.kurly.board.BoardFilesDTO;
import e.market.kurly.members.MembersDTO;

@Repository
public class OfferDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "e.market.kurly.mypage.offer.OfferDAO.";
	
	public int setInsert(OfferDTO offerDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", offerDTO);
	}
	
	public int setFile(BoardFilesDTO boardFilesDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setFile", boardFilesDTO);
	}
	
	public List<OfferDTO> getList(MembersDTO membersDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList", membersDTO);
	}
	
	public OfferDTO getOne(OfferDTO offerDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getOne", offerDTO);
	}
	
	public List<BoardFilesDTO> getFiles(OfferDTO offerDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getFiles", offerDTO);
	}
	
	public BoardFilesDTO getFileOne(BoardFilesDTO boardFilesDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getFileOne", boardFilesDTO);
	}
	
	public int setUpdate(OfferDTO offerDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", offerDTO);
	}
	
	public int setDelete(OfferDTO offerDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", offerDTO);
	}
	
	public int setFileDelete(BoardFilesDTO boardFilesDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setFileDelete", boardFilesDTO);
	}
	
}
