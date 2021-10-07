package e.market.kurly.service.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.util.Pager;

@Controller
@RequestMapping("/service/**")
public class FaqController {
	
	@Autowired
	private FaqService faqService;
	
	@GetMapping("faq")
	public ModelAndView faq(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<FaqDTO> ar = faqService.getList(pager);
		
		mv.addObject("faq", ar);
		mv.addObject("pager", pager);
		
		mv.setViewName("board/faq");
		return mv;
	}
}
