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
}
