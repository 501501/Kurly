package e.market.kurly.members;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
		mv.setViewName("members/join");
		
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
		
		if(result >0) {
			mv.addObject("msg", msg);
			mv.addObject("url", "./login");
			mv.setViewName("redirect:../");
		} else {
			mv.setViewName("members/join");
		}
		
		return mv;
	}
	
	@PostMapping("idcheck")
	public ModelAndView getIdCheck(MembersDTO membersDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		membersDTO = membersService.getIdCheck(membersDTO);
		
		int result = 0;
		if(membersDTO == null) {
			result = 1;
		}
		
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		
		return mv;
	} 
	
	@PostMapping("emailcheck")
	public ModelAndView getEmailCheck(MembersDTO membersDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		membersDTO = membersService.getEmailCheck(membersDTO);
		
		int result = 0;
		if(membersDTO == null) {
			result = 1;
		}
		
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		
		return mv;
	}
	
	@PostMapping("pwcheck")
	public ModelAndView getPwCheck(MembersDTO membersDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		membersDTO = membersService.getPwCheck(membersDTO);
		
		int result = 0;
		if(membersDTO != null) {
			result = 1;
		}
		
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		
		return mv;
	} 

	@GetMapping("login")
	public ModelAndView member_login() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("members/login");
	
		return mv;
	}
	
	@PostMapping("login")
	public ModelAndView member_login(MembersDTO membersDTO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		membersDTO = membersService.getLogin(membersDTO);
		if(membersDTO != null) {
			System.out.println("로그인 완료");
			session.setAttribute("member", membersDTO);
		} else {
			System.out.println("로그인 실패");
		}
		
		mv.setViewName("redirect:../");	
		return mv;
	}
	
	@GetMapping("logout")
	public ModelAndView member_logout(HttpSession session) throws Exception {
		session.invalidate();		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:../");
		
		return mv;
	}
	
	@GetMapping("myInfoCheck")
	public ModelAndView member_myInfoCheck() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("members/myInfoCheck");
		
		return mv;
	}
	
	@GetMapping("myInfo")
	public ModelAndView member_myInfo() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("members/myInfo");
		
		return mv;
	}
	
	@PostMapping("myInfo")
	public ModelAndView member_myInfo(MembersDTO membersDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		membersDTO = membersService.getLogin(membersDTO);
		
		if(membersDTO != null) {
			mv.addObject("member", membersDTO);
			mv.setViewName("members/myInfo");
		} else {
			mv.setViewName("redirect:./myInfoCheck");
		}
		
		return mv;
	}
	
	@GetMapping("delete")
	public ModelAndView member_delete(MembersDTO membersDTO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = membersService.setDeleteId(membersDTO);
		session.invalidate();
		mv.addObject("result", result);
		mv.setViewName("redirect:../");
		
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView member_update(MembersDTO membersDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = membersService.setUpdateInfo(membersDTO);
		
		mv.setViewName("redirect:../");

		return mv;
	}
	
	@GetMapping("find_id")
	public ModelAndView find_id() throws Exception {
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("members/find/find_id");
		
		return mv;
	}
	
	@PostMapping("find_id")
	public ModelAndView find_id(MembersDTO membersDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		membersDTO = membersService.getFindId(membersDTO);
		
		mv.addObject("member", membersDTO);
		mv.setViewName("members/find/findResult/find_id2");
		
		return mv;
	}
	
	@GetMapping("find_pwd")
	public ModelAndView find_pwd() throws Exception {
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("members/find/find_pwd");
		
		return mv;
	}
	
	@PostMapping("find_pwd")
	public ModelAndView find_pwd(MembersDTO membersDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		membersDTO = membersService.getFindPw(membersDTO);
		
		mv.addObject("member", membersDTO);
		mv.setViewName("members/find/findResult/find_pwd2");
		
		return mv;
	}
	
}
