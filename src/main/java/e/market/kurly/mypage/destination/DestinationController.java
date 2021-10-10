package e.market.kurly.mypage.destination;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.members.MembersDTO;

@Controller
@RequestMapping("mypage/*")
public class DestinationController {

	@Autowired
	private DestinationService destinationService;
	
///////////////////////////////////////////////////////////////////////////////	
	
	/** 배송지관리 버튼 누르면 배송지관리 화면 띄우기*/
	@GetMapping("destination")
	public ModelAndView destination_control(MembersDTO membersDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<DestinationDTO> list = destinationService.getDestinationList(membersDTO);
		
		mv.addObject("list", list);
		mv.setViewName("destination/destination");
		
		return mv;
	}
	
///////////////////////////////////////////////////////////////////////////
	
	@GetMapping("destination/form")
	public ModelAndView add_destination() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("destination/add_destination");
		
		return mv;
	}
	
	@PostMapping("destination/form")
	public ModelAndView add_destination(DestinationDTO destinationDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = destinationService.setDestination(destinationDTO);
		
		mv.addObject("result", result);
		mv.addObject("id", destinationDTO.getId());
		mv.setViewName("redirect:./");
		
		return mv;
	}
	
///////////////////////////////////////////////////////////////////////////////////////////
	
	@GetMapping("destination/update")
	public ModelAndView update_destination(DestinationDTO destinationDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("destination/update_destination");
		
		return mv;
	}
}
