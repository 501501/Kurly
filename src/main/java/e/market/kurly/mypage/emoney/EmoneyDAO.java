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
	
	
	/* 리뷰당 500원 적립*/
	public int setReviewPoint(BuyingDTO buyingDTO) throws Exception {
		int rs1 = sqlSession.insert(NAMESPACE+"insertRvPoint", buyingDTO);
		int rs2 = sqlSession.update(NAMESPACE+"updateRvPoint", buyingDTO);
		
		return rs1+rs2;
	}
	
	/* 결제금액의 5% 적립 */
	public int setBuyingPoint(BuyingDTO buyingDTO) throws Exception {
		int rs1 = sqlSession.insert(NAMESPACE+"insertBuyPoint", buyingDTO);
		int rs2 = sqlSession.update(NAMESPACE+"updateBuyPoint", buyingDTO);
		
		return rs1+rs2;
	}
	
	/* 적립금 사용 */
	public int usePoint(BuyingDTO buyingDTO) throws Exception {
		int rs1 = sqlSession.insert(NAMESPACE+"insertUsePoint", buyingDTO);
		int rs2 = sqlSession.update(NAMESPACE+"UpdateUsePoint", buyingDTO);
		
		return rs1+rs2; 
	}
	
	/* 총 보유적립금 가져오기 */
	public int getTotalPoint(String userId) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getPointInfo", userId);
	}

}
