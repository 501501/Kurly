package e.market.kurly.mypage.destination;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.members.MembersDTO;

@Controller
@RequestMapping("/mypage/destination/*")
public class DestinationController {
	
	@Autowired
	private DestinationService destinationService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "destination";
	}
	
	@GetMapping("list")
	public ModelAndView list(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MembersDTO membersDTO = (MembersDTO) session.getAttribute("member");
		List<DestinationDTO> ar = destinationService.getList(membersDTO);
		mv.addObject("list", ar);
		mv.setViewName("destination/list");
		return mv;
	}
}
