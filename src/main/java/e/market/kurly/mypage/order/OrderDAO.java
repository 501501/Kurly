package e.market.kurly.mypage.order;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import e.market.kurly.members.MembersDTO;

@Repository
public class OrderDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "e.market.kurly.mypage.order.OrderDAO.";
	
	// 사용자 아이디로 주문번호 조회
	public List<String> getOrderNum(MembersDTO membersDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getOrderNum", membersDTO);
	}
	
	// 리뷰를 작성하지 않은 주문번호 조회
	public List<String> getBeforeOrderNum(MembersDTO membersDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getBeforeOrderNum", membersDTO);
	}
	
	// 리뷰를 작성한 주문번호 조회
	public List<String> getAfterOrderNum(MembersDTO membersDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getAfterOrderNum", membersDTO);
	}
	
	// 주문번호로 주문 목록 조회
	public List<OrderDTO> getListByOrderNum(String orderNum) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getListByOrderNum", orderNum);
	}
	
	// 상품 번호로 특정 상품 정보 1개 조회
	public OrderDTO getOne(Long goodsNo) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getOne", goodsNo);
	}
}
