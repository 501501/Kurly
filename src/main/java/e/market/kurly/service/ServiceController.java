package e.market.kurly.service;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/service/**")
public class ServiceController {
	
	@GetMapping("faq")
	public ModelAndView faq() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/faq");
		return mv;
	}
}
