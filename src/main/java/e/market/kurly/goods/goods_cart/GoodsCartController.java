package e.market.kurly.goods.goods_cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.members.MembersDTO;

@Controller
@RequestMapping("goods/goods_cart/*")
public class GoodsCartController {
	
	@Autowired
	private GoodsCartService cartService;
	
	@GetMapping("insert")
	public String insert(GoodsCartDTO cartDTO, HttpSession session) throws Exception {
		MembersDTO membersDTO = (MembersDTO)session.getAttribute("member");
//		String userId = membersDTO.getId();
		if(membersDTO == null) {
			return "redirect: ../../members/login";			
		}
		cartDTO.setUserId(membersDTO.getId());
		cartService.insert(cartDTO);

		return "redirect: ./";	
	}
	
	@GetMapping("/")
	public ModelAndView list(HttpSession session, GoodsCartDTO cartDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		MembersDTO membersDTO = new MembersDTO();
		membersDTO = (MembersDTO)session.getAttribute("member");
		String userId = membersDTO.getId();
		System.out.println(userId);
		
		if(userId != null) {
			List<GoodsCartDTO> list = cartService.listCart(userId);
			int sumMoney = cartService.sumMoney(userId);
			int fee = sumMoney >= 40000 ? 0 : 3000;
			
			map.put("sumMoney", sumMoney);
			map.put("fee", fee);
			map.put("sum", sumMoney+fee);
			map.put("list", list);
			map.put("count", list.size());
			map.put("userId", userId);
			
			mv.setViewName("goods/goods_cart");
			mv.addObject("map", map);
			
			return mv;
		} else {
			mv.setViewName("members/login");
			return mv;
		}
	}
	
	@GetMapping("deleteOne")
	public String deleteOne(GoodsCartDTO cartDTO) throws Exception {
		cartService.deleteOne(cartDTO);
		
		return "redirect: ./";
	}
	
	@GetMapping("deleteAll")
	public String deleteAll(GoodsCartDTO cartDTO, HttpSession session) throws Exception {
		MembersDTO membersDTO = (MembersDTO)session.getAttribute("member");
		String userId = membersDTO.getId();
		
		if(userId != null) {
			int result = cartService.deleteAll(cartDTO);			
		}
		
		return "redirect: ./";
	}
	
	
}
