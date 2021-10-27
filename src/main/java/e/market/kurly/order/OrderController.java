package e.market.kurly.order;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.goods.goods_cart.GoodsCartService;
import e.market.kurly.members.MembersDTO;
import e.market.kurly.order.OrderService;

@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private GoodsCartService cartService;
	
	
	@PostMapping("order")
	public ModelAndView orderSheet(MembersDTO membersDTO, String [] productName, String [] productNum) throws Exception {
		ModelAndView mv = new ModelAndView();
		Map<String, Object> map = orderService.orderSheet(membersDTO);

		int sumMoney = cartService.sumMoney(membersDTO.getId());
		int fee = sumMoney >= 40000 ? 0 : 3000;

		map.put("sumMoney", sumMoney);
		map.put("fee", fee);
		map.put("sum", sumMoney + fee);

		mv.addObject("sumMoney", map.get("sumMoney"));
		mv.addObject("fee", map.get("fee"));
		mv.addObject("sum", map.get("sum"));
		mv.addObject("member", map.get("member"));
		mv.addObject("destination", map.get("destination"));
		mv.addObject("cartList", map.get("cartList"));
		mv.setViewName("goods/order");
		
		mv.addObject("name", productName);
		mv.addObject("num", productNum);

		return mv;
	}
	
	@PostMapping("order_end")
	public ModelAndView order_end(String [] productName, String [] productNum, Long price, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MembersDTO membersDTO = (MembersDTO) session.getAttribute("member");
		
		int size = productName.length;
		OrderDTO orderDTO = new OrderDTO();
		Long orderNum = orderService.getSeq().getCurrval();
		
		for(int i=0; i<size; i++) {
			orderDTO.setOrderNum(orderNum);
			// 상품번호 (파라미터에서 받아오기)
			orderDTO.setGoodsNo(1L);
			orderDTO.setProductName(productName[i]);
			orderDTO.setProductNum(Long.parseLong(productNum[i]));
			orderDTO.setPrice(price);
			orderDTO.setId(membersDTO.getId());
			
			orderService.setInsert(orderDTO);
		}
		mv.setViewName("goods/order_end");
		return mv;
	}
	
	@GetMapping("mypage_orderlist")
	public ModelAndView mypage_orderlist(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MembersDTO membersDTO = (MembersDTO) session.getAttribute("member");
		List<String> ar = orderService.getOrderNum(membersDTO);
		mv.addObject("ar", ar);
		mv.setViewName("goods/order_list");
		return mv;
	}
	
	@GetMapping("orderNum")
	public ModelAndView orderNum(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MembersDTO member = (MembersDTO) session.getAttribute("member");
		List<String> orderNums = orderService.getOrderNum(member);
		mv.addObject("orderNums", orderNums);
		mv.setViewName("goods/orderNum");
		return mv;
	}
}
