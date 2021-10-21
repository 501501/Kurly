package e.market.kurly.mypage.emoney;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmoneyDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="e.market.kurly.mypage.emoney.EmoneyDAO.";
	
	/* 적립금 상세 내역 */
	public List<EmoneyDTO> getEmoneyList(String userId) throws Exception {		
		return sqlSession.selectList("getEmoneyList", userId); 
	}
	
	/* 상세 내역 Count*/
	public Long getListCount(String userId) throws Exception {
		return sqlSession.selectOne("getListCount", userId);
	}
	
	/* 결제금액의 5% 적립 */
	public void setEmoney_paying() throws Exception {
		
	}
	
	/* 리뷰당 500원 적립*/
	public void setEmoney_review() throws Exception {
		
	}
	
	/* 총 보유적립금 가져오기 */
	public void getTotalEmoney() throws Exception {
		
	}

}
