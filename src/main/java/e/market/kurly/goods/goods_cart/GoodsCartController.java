package e.market.kurly.goods.goods_cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.members.MembersDTO;
import e.market.kurly.mypage.destination.DestinationDTO;
import e.market.kurly.mypage.destination.DestinationService;

@Controller
@RequestMapping("goods/goods_cart/*")
public class GoodsCartController {
	
	@Autowired
	private GoodsCartService cartService;
	@Autowired
	private DestinationService destinationService;
	
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
	
	@PostMapping("deleteSelect")
	public ModelAndView deleteSelect(HttpServletRequest request) throws Exception {		
		ModelAndView mv = new ModelAndView();		
		
		String[] valueArr = request.getParameterValues("valueArr[]");		
		String userId = request.getParameter("userId");
		
		int result = 0;
		int size =  valueArr.length;
		
		for(int i=0; i<size; i++) {
			GoodsCartDTO cartDTO = new GoodsCartDTO();
			cartDTO.setCart_id(Integer.parseInt(valueArr[i]));
			cartDTO.setUserId(userId);
			result = cartService.deleteOne(cartDTO);
		}
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@PostMapping("update/plus_amount")
	public ModelAndView updatePlus(GoodsCartDTO cartDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = cartService.updatePlus(cartDTO);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@PostMapping("update/minus_amount")
	public ModelAndView updateMinus(GoodsCartDTO cartDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = cartService.updateMinus(cartDTO);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}

	/* 장바구니 배송지 변경 */
	@GetMapping("change_destination")
	public ModelAndView change_destination(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MembersDTO membersDTO = (MembersDTO)session.getAttribute("member");
		List<DestinationDTO> ar = destinationService.getList(membersDTO);
		mv.addObject("list", ar);
		mv.setViewName("goods/cart_destination");
		
		return mv;
	}
	
	@ModelAttribute("destination")
	public String getBoard(HttpSession session) throws Exception {
		MembersDTO membersDTO = (MembersDTO)session.getAttribute("member");
		List<DestinationDTO> ar = destinationService.getList(membersDTO);
		String yy = "";
		
		for(int i=0;i<ar.size();i++) {
			if(ar.get(i).getCheck_type().equals("y")) {
				yy = ar.get(i).getAddress_loca();
			}
		}
		
		return yy;
	}
	
}
