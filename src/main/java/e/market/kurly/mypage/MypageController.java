package e.market.kurly.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.board.BoardFilesDTO;
import e.market.kurly.mypage.qna.QnaDTO;
import e.market.kurly.mypage.qna.QnaService;

@Controller
@RequestMapping("/mypage/**")
public class MypageController {

	@Autowired
	private QnaService qnaService;
	
	@GetMapping("mypage_qna")
	public ModelAndView mypage_qna() throws Exception {
		ModelAndView mv = new ModelAndView();
	
		List<QnaDTO> ar = qnaService.getList();
		mv.addObject("list", ar);
		mv.setViewName("qna/qna");
		
		return mv;
	}
	
	// qna 수정
	@GetMapping("mypage_qna/update")
	public ModelAndView qna_update(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO.setNum(num);
		qnaDTO = qnaService.getOne(qnaDTO);
		qnaDTO.setFiles(qnaService.getFiles(qnaDTO));
		
		mv.setViewName("qna/qna_update");
		mv.addObject("dto", qnaDTO);
		return mv;
	}
	
	@PostMapping("mypage_qna/update")
	public ModelAndView qna_update(QnaDTO qnaDTO, MultipartFile[] files2) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		// 글 수정
		int result = qnaService.setUpdate(qnaDTO, files2);
		
		mv.setViewName("redirect:../mypage_qna");
		return mv;
	}
	
	// qna 등록
	@GetMapping("mypage_qna_register")
	public ModelAndView qna_register() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("qna/qna_register");
		return mv;
	}
	
	// qna 등록
	@PostMapping("mypage_qna_register")
	public ModelAndView qna_register(QnaDTO qnaDTO, MultipartFile[] files2) throws Exception {
		System.out.println("upload");
		// original file name 출력
		for (MultipartFile muFile : files2) {
			System.out.println(muFile.getOriginalFilename());
		}

		ModelAndView mv = new ModelAndView();
		int result = qnaService.setInsert(qnaDTO, files2);
		mv.setViewName("redirect:./mypage_qna");
		return mv;
	}
	
	// qna 삭제
	@GetMapping("mypage_qna/delete")
	public ModelAndView qna_delete(QnaDTO qnaDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setDelete(qnaDTO);
		mv.setViewName("redirect:../mypage_qna");
		return mv;
	}
	
	// file 다운로드
	@GetMapping("down")
	public ModelAndView fileDown(BoardFilesDTO boardFilesDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", boardFilesDTO);
		mv.setViewName("fileDown");
		return mv;
	}
	
	// 대량주문
	@GetMapping("bulk_order")
	public ModelAndView bulk_order() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bulk/bulk_order");
		return mv;
	}
	
	// 상품제안
	@GetMapping("offer")
	public ModelAndView offer() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("offer/offer");
		return mv;
	}

	// 에코포장 피드백
	@GetMapping("echo_packing")
	public ModelAndView echo_packing() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("echo/echo_packing");
		return mv;
	}
}
