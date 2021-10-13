package e.market.kurly.mypage.destination;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	// 배송지 조회
	@GetMapping("list")
	public ModelAndView list(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MembersDTO membersDTO = (MembersDTO) session.getAttribute("member");
		List<DestinationDTO> ar = destinationService.getList(membersDTO);
		mv.addObject("list", ar);
		mv.setViewName("destination/destination");
		return mv;
	}
	
	// 배송지 등록
	@GetMapping("form")
	public ModelAndView form() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("destination/destination_register");
		return mv;
	}
	
	// 배송지 등록
	@PostMapping("form")
	public ModelAndView form(DestinationDTO destinationDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		// 새 배송지 추가
		destinationService.setInsert(destinationDTO);
		
		// 기본 배송지 업데이트
		// 기본 배송지가 체크된 경우
		if (destinationDTO.getDefault_type().equals("y")) {
			destinationService.setDefaultUpdate(destinationDTO);
		}
		
		// 새로 추가한 배송지 외 다른 배송지의 CHECK_TYPE을 n으로 업데이트
		destinationService.setCheckUpdate(destinationDTO);
		
		mv.setViewName("redirect:./submit");
		return mv;
	}
	
	// 배송지 추가 : 저장 버튼 클릭 시
	@GetMapping("submit")
	public ModelAndView submit() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("destination/submit");
		return mv;
	}
	
	// 배송지 수정
	@GetMapping("modify")
	public ModelAndView modify(String post) throws Exception {
		ModelAndView mv = new ModelAndView();
		DestinationDTO destinationDTO = new DestinationDTO();
		destinationDTO.setAddress_post(post);
		// address_post 기준으로 select
		destinationDTO = destinationService.getListOne(destinationDTO);
		
		String fullAdd = destinationDTO.getAddress_loca();
		int idx = fullAdd.lastIndexOf(")");
		
		// 도로명 주소
		String roadAdd = fullAdd.substring(0, idx+1);
		// 상세 주소
		String detailAdd = fullAdd.substring(idx+2);
		
		mv.addObject("roadAdd", roadAdd);
		mv.addObject("detailAdd", detailAdd);
		mv.addObject("dto", destinationDTO);
		mv.setViewName("destination/destination_modify");
		return mv;
	}
	
	// 배송지 수정 : 저장 버튼 클릭 시
	@PostMapping("modify")
	public ModelAndView modify(DestinationDTO destinationDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		// 배송지 수정
		int result = destinationService.setUpdate(destinationDTO);
		
		// 기본 배송지로 체크한 경우
		if (destinationDTO.getDefault_type().equals("y")) {
			// 기본 배송지 정보 수정
			destinationService.setDefaultUpdate(destinationDTO);
		}
		
		//mv.addObject("result", result);
		mv.setViewName("destination/modify");
		return mv;
	}
	
	// 배송지 삭제
	@GetMapping("delete")
	public ModelAndView delete(DestinationDTO destinationDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		// 체크 배송지가 삭제되는 경우
		if (destinationDTO.getCheck_type().equals("y")) {
			// 기본 배송지의 체크 값을 y로 변경
			destinationService.setDefaultToCheck();
		}
		int result = destinationService.setDelete(destinationDTO);
		mv.setViewName("destination/delete");
		return mv;
	}
}
