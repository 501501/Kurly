package e.market.kurly.goods.goods_list;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/goods/goods_list/**")
public class GoodsListController {
	
	@RequestMapping("bargain")
	public ModelAndView bargain() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bargain/bargain");
		return mv;
	}
	
	@RequestMapping("best")
	public ModelAndView best() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("best/best");
		return mv;
	}
	
	@GetMapping("new")
	public ModelAndView new_list() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("new/new");
		return mv;
	}
}
