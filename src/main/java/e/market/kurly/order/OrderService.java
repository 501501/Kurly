package e.market.kurly.order;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import e.market.kurly.goods.goods_cart.GoodsCartDAO;
import e.market.kurly.goods.goods_cart.GoodsCartDTO;
import e.market.kurly.members.MembersDAO;
import e.market.kurly.members.MembersDTO;
import e.market.kurly.mypage.destination.DestinationDAO;
import e.market.kurly.mypage.destination.DestinationDTO;
import e.market.kurly.util.SequenceDTO;

@Service
public class OrderService {
	@Autowired
	private OrderDAO orderDAO;
	@Autowired
	private MembersDAO membersDAO;
	@Autowired
	private DestinationDAO destinationDAO;
	@Autowired
	private GoodsCartDAO goodsCartDAO;
	
	// 사용자 아이디로 주문번호 조회
	public List<String> getOrderNum(MembersDTO membersDTO) throws Exception {
		return orderDAO.getOrderNum(membersDTO);
	}
	
	// 리뷰를 작성하지 않은 주문번호 조회
	public List<String> getBeforeOrderNum(MembersDTO membersDTO) throws Exception {
		return orderDAO.getBeforeOrderNum(membersDTO);
	}
	
	// 리뷰를 작성한 주문번호 조회
	public List<String> getAfterOrderNum(MembersDTO membersDTO) throws Exception {
		return orderDAO.getAfterOrderNum(membersDTO);
	}
	
	// 주문번호로 주문 목록 조회
	public List<OrderDTO> getListByOrderNum(String orderNum) throws Exception {
		return orderDAO.getListByOrderNum(orderNum);
	}
	
	// 상품 번호로 특정 상품 정보 1개 조회
	public OrderDTO getOne(Long goodsNo) throws Exception {
		return orderDAO.getOne(goodsNo);
	}
	
	public Map<String, Object> orderSheet(MembersDTO membersDTO) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		
		membersDTO = membersDAO.getIdCheck(membersDTO);
		DestinationDTO destinationDTO = destinationDAO.getMainAddress(membersDTO);
		List<GoodsCartDTO> list = goodsCartDAO.getCartItems(membersDTO);
		
		map.put("member", membersDTO);
		map.put("destination", destinationDTO);
		map.put("cartList", list);
		
		return map;
	}
	
	// 주문 목록 추가
	public int setInsert(OrderDTO orderDTO) throws Exception {
		return orderDAO.setInsert(orderDTO);
	}
	
	// 현재 시퀀스 값
	public SequenceDTO getSeq() throws Exception {
		return orderDAO.getSeq();
	}
}
