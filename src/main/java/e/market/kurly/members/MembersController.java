package e.market.kurly.members;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/members/**")
public class MembersController {

	@Autowired
	private MembersService membersService;
	
/** ------------------------------------------------*/
	
	@GetMapping("join")
	public ModelAndView member_join() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/join");
		
		return mv;
	}
	
	@PostMapping("join")
	public ModelAndView member_join(MembersDTO membersDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = membersService.setRegisterMember(membersDTO);
		
		String msg = "회원가입에 실패하셨습니다";
		if(result>0) {
			msg = "회원가입 성공! Kurly 회원이 되신 걸 환영합니다!";
		}
		
		mv.addObject("msg", msg);
		mv.addObject("url", "./login");
		mv.setViewName("common/result");
		
		return mv;
	}
	
	@PostMapping("idcheck")
	public ModelAndView getIdCheck(MembersDTO memberDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		memberDTO.setId("cccccc");
		memberDTO = membersService.getIdCheck(memberDTO);
		System.out.println(memberDTO);
		
		
		System.out.println(memberDTO == null);
		
		int result = 0;
		
		if(memberDTO == null) {
			result = 1;
		}
		
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		
		return mv;
	} 
	
	
	
	@GetMapping("login")
	public ModelAndView member_login() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/login");
	
		return mv;
	}
}
