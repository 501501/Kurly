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
	private final String NAMESPACE="e.market.kurly.mypage.destination.DestinationDAO.";
	
	/** DB에서 배송지 리스트 불러오기*/
	public List<DestinationDTO> getDestinationList(MembersDTO membersDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getDestinationList", membersDTO);
	}
	
	/** 새 배송지 추가 */
	public int setDestination(DestinationDTO destinationDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setDestination", destinationDTO);
	}
	
	/** ADDRESS테이블 내 기본배송지 변경 */
	public int updateBasicDestination(DestinationDTO destinationDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"updateBasicDestination", destinationDTO);
	}
	
	/** MEMBERS테이블 내 기본배송지 변경 */
	public int updateMembersDestination(DestinationDTO destinationDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"updateMembersDestination", destinationDTO);
	}
}
