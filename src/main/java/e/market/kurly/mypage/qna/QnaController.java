package e.market.kurly.mypage.qna;

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
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "qna";
	}
	
	@GetMapping("mypage_qna")
	public ModelAndView mypage_qna(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MembersDTO membersDTO = (MembersDTO) session.getAttribute("member");
		
		List<QnaDTO> ar = qnaService.getList(membersDTO);
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
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setInsert(qnaDTO, files2);
		// 등록 성공
		if (result > 0) {
			mv.addObject("msg", "정상적으로 등록되었습니다. 상담 문의가 급증할 경우, 답변처리가 다소 지연될 수 있음을 양해 바랍니다.");
		// 등록 실패
		} else {
			mv.addObject("msg", "등록에 실패했습니다. 다시 시도해주세요.");
		}
		mv.addObject("url", "./mypage_qna");
		mv.setViewName("common/result");
		return mv;
	}
	
	// qna 삭제
	@GetMapping("mypage_qna/delete")
	public ModelAndView qna_delete(QnaDTO qnaDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = qnaService.setDelete(qnaDTO);
		// 삭제 성공
		if (result > 0) {
			mv.addObject("msg", "정상적으로 삭제되었습니다.");
		} else {
			mv.addObject("msg", "삭제를 실패했습니다. 재시도 해주세요.");
		}
		mv.addObject("url", "../mypage_qna");
		mv.setViewName("common/result");
		return mv;
	}
	
	@GetMapping("mypage_qna/delete_ck")
	public ModelAndView delete_ck() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("common/delete");
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
}
