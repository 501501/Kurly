package e.market.kurly.order;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.members.MembersDTO;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
@RequestMapping("/order/*")
public class OrderController {
	
	@Autowired
	private OrderService orderService;

	@GetMapping("order")
	public ModelAndView orderSheet(MembersDTO membersDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		Map<String, Object> map = orderService.orderSheet(membersDTO);
		
		mv.addObject("member", map.get("member"));
		mv.addObject("destination", map.get("destination"));
		mv.addObject("cartList", map.get("cartList"));
		mv.setViewName("goods/order");
		
		return mv;
	}
}
