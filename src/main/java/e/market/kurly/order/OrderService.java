package e.market.kurly.order;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import e.market.kurly.goods.goods_cart.GoodsCartDAO;
import e.market.kurly.goods.goods_cart.GoodsCartDTO;
import e.market.kurly.members.MembersDAO;
import e.market.kurly.members.MembersDTO;
import e.market.kurly.mypage.destination.DestinationDAO;
import e.market.kurly.mypage.destination.DestinationDTO;

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
}
