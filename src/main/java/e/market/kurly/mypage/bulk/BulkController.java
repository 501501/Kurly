package e.market.kurly.mypage.bulk;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.members.MembersDTO;

@Controller
@RequestMapping("/mypage/*")
public class BulkController {
	
	@Autowired
	private BulkService bulkService;
	
	@GetMapping("bulk_order")
	public ModelAndView bulk_order(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MembersDTO membersDTO = (MembersDTO) session.getAttribute("member");
		if (membersDTO == null) {
			mv.setViewName("redirect:../members/login");
		} else {
			mv.setViewName("bulk/bulk");
		}
		return mv;
	}
	
	@PostMapping("bulk_order")
	public ModelAndView bulk_order(BulkDTO bulkDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		bulkService.setInsert(bulkDTO);
		
		mv.setViewName("redirect:../");
		return mv;
	}
}
