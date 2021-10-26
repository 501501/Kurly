package e.market.kurly.order;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@GetMapping("order")
	public ModelAndView orderSheet(MembersDTO membersDTO) throws Exception {
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

		return mv;
	}
}
