package e.market.kurly.gnu_sub;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("gnb_sub/*")
public class GnuSubController {
	
	@GetMapping("1_vag/1")
	public ModelAndView vag1() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gnu_sub/1_vag/1");
		return mv;
	}
	
	@GetMapping("2_fru/1")
	public ModelAndView fru1() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gnu_sub/2_fru/1");
		return mv;
	}
	
	@GetMapping("3_fish/1")
	public ModelAndView fish1() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gnu_sub/3_fish/1");
		return mv;
	}
	
	@GetMapping("4_meat/1")
	public ModelAndView meat1() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gnu_sub/4_meat/1");
		return mv;
	}
	
	@GetMapping("5_side/1")
	public ModelAndView side1() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gnu_sub/5_side/1");
		return mv;
	}
	
	@GetMapping("6_salad/1")
	public ModelAndView salad1() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gnu_sub/6_salad/1");
		return mv;
	}
	
	@GetMapping("7_oil/1")
	public ModelAndView oil1() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gnu_sub/7_oil/1");
		return mv;
	}
	
	@GetMapping("8_drink/1")
	public ModelAndView drink1() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gnu_sub/8_drink/1");
		return mv;
	}
	
	@GetMapping("9_snack/1")
	public ModelAndView snack1() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gnu_sub/9_snack/1");
		return mv;
	}
	
	@GetMapping("10_bake/1")
	public ModelAndView bake1() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gnu_sub/10_bake/1");
		return mv;
	}
}
