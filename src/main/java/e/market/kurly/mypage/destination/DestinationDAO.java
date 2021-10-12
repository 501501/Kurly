package e.market.kurly.mypage.destination;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import e.market.kurly.members.MembersDTO;

@Repository
public class DestinationDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "e.market.kurly.mypage.destination.DestinationDAO.";
	
	public int setInsert(DestinationDTO destinationDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", destinationDTO);
	}
	
	public List<DestinationDTO> getList(MembersDTO membersDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList", membersDTO);
	}
	
	public int setDefaultUpdate(DestinationDTO destinationDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setDefaultUpdate", destinationDTO);
	}
	
	// 선택한 radio 버튼의 check_type을 y로 업데이트
	public int setCheckSelect(DestinationDTO destinationDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setCheckSelect", destinationDTO);
	}
	
	// 선택하지 않은 radio 버튼의 check_type을 n으로 업데이트
	public int setCheckUpdate(DestinationDTO destinationDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setCheckUpdate", destinationDTO);
	}
	
	public DestinationDTO getListOne(DestinationDTO destinationDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getListOne", destinationDTO);
	}
	
	public int setUpdate(DestinationDTO destinationDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", destinationDTO);
	}
	
	public int setDelete(DestinationDTO destinationDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", destinationDTO);
	}
	
	public int setDefaultToCheck() throws Exception {
		return sqlSession.update(NAMESPACE+"setDefaultToCheck");
	}
} 