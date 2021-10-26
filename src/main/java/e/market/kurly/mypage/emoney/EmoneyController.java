package e.market.kurly.mypage.emoney;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.members.MembersDTO;
import e.market.kurly.util.Pager;

@Controller
@RequestMapping("mypage/emoney/*")
public class EmoneyController {
	
	@Autowired
	private EmoneyService emoneyService;
	
	@GetMapping("list_emoney")
	public ModelAndView getEmoneyList(HttpSession session, Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		MembersDTO membersDTO = (MembersDTO)session.getAttribute("member");
		String userId = membersDTO.getId();		
		
		List<EmoneyDTO> list = emoneyService.getEmoneyList(userId, pager);
		int emoney = emoneyService.getTotalPoint(userId);
		
		System.out.println("list: "+list);
		System.out.println("one: "+list.get(0).getReg_date()+"/"+list.get(0).getEmoney());
		
		mv.addObject("pager", pager);
		mv.addObject("list", list);
		mv.addObject("emoney", emoney);
		mv.setViewName("emoney/emoney");
		
		return mv;
	}
	
	@PostMapping("review_emoney")
	public ModelAndView review_emoney(BuyingDTO buyingDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = emoneyService.setReviewPoint(buyingDTO);
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@PostMapping("purchase_emoney")
	public ModelAndView purchase_emoney(BuyingDTO buyingDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = emoneyService.setBuyingPoint(buyingDTO);
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@PostMapping("use_emoney")
	public ModelAndView use_emoney(BuyingDTO buyingDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = emoneyService.usePoint(buyingDTO);
		
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}

}
