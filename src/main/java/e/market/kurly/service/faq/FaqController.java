package e.market.kurly.service.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/service/**")
public class FaqController {
	
	@Autowired
	private FaqDAO faqDAO;
	
	@GetMapping("faq")
	public ModelAndView faq() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<FaqDTO> ar = faqDAO.getList();
		
		mv.addObject("faq", ar);
		mv.setViewName("board/faq");
		return mv;
	}
}
