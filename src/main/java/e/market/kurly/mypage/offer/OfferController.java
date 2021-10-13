package e.market.kurly.mypage.offer;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.board.BoardFilesDTO;
import e.market.kurly.members.MembersDTO;

@Controller
@RequestMapping("/mypage/*")
public class OfferController {
	
	@Autowired
	private OfferService offerService;

	@ModelAttribute("board")
	public String getBoard() {
		return "offer";
	}

	// 상품제안
	@GetMapping("offer")
	public ModelAndView offer(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MembersDTO membersDTO = (MembersDTO) session.getAttribute("member");
		
		List<OfferDTO> ar = offerService.getList(membersDTO);
		mv.addObject("list", ar);
		mv.setViewName("offer/offer");

		return mv;
	}
	
	// 상품제안 수정
	@GetMapping("offer/update")
	public ModelAndView offer_update(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();

		OfferDTO offerDTO = new OfferDTO();
		offerDTO.setNum(num);
		offerDTO = offerService.getOne(offerDTO);
		offerDTO.setFiles(offerService.getFiles(offerDTO));

		mv.setViewName("offer/offer_update");
		mv.addObject("dto", offerDTO);
		return mv;
	}
	
	@PostMapping("offer/update")
	public ModelAndView qna_update(OfferDTO offerDTO, MultipartFile[] files2) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		// 글 수정
		int result = offerService.setUpdate(offerDTO, files2);
		
		mv.setViewName("redirect:../offer");
		return mv;
	}

	// 상품제안 등록
	@GetMapping("offer_register")
	public ModelAndView offer_register() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("offer/offer_register");
		return mv;
	}
	
	// 상품제안 등록
	@PostMapping("offer_register")
	public ModelAndView offer_register(OfferDTO offerDTO, MultipartFile[] files2) throws Exception {
		// System.out.println("upload");
		// original file name 출력
		for (MultipartFile muFile : files2) {
			System.out.println(muFile.getOriginalFilename());
		}

		ModelAndView mv = new ModelAndView();
		int result = offerService.setInsert(offerDTO, files2);
		if (result > 0) {
			mv.addObject("msg", "정상적으로 등록되었습니다. 상담 문의가 급증할 경우, 답변처리가 다소 지연될 수 있음을 양해 바랍니다.");
		// 등록 실패
		} else {
			mv.addObject("msg", "등록에 실패했습니다. 다시 시도해주세요.");
		}
		mv.addObject("url", "./offer");
		mv.setViewName("common/result");
		//mv.setViewName("redirect:./offer");
		return mv;
	}
	
	// 상품제안 삭제
	@GetMapping("mypage_offer/delete")
	public ModelAndView qna_delete(OfferDTO offerDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = offerService.setDelete(offerDTO);
		// 삭제 성공
		if (result > 0) {
			mv.addObject("msg", "정상적으로 삭제되었습니다.");
		} else {
			mv.addObject("msg", "삭제를 실패했습니다. 재시도 해주세요.");
		}
		mv.addObject("url", "../offer");
		mv.setViewName("common/result");
		//mv.setViewName("redirect:../offer");
		return mv;
	}
	
	@GetMapping("mypage_offer/delete_ck")
	public ModelAndView delete_ck() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/delete");
		return mv;
	}

	// file 다운로드
	@GetMapping("offer_down")
	public ModelAndView fileDown(BoardFilesDTO boardFilesDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", boardFilesDTO);
		mv.setViewName("fileDown");
		return mv;
	}
}
