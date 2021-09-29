package e.market.kurly.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.mypage.qna.QnaDTO;
import e.market.kurly.mypage.qna.QnaService;

@Controller
@RequestMapping("/mypage/**")
public class QnaController {

	@Autowired
	private QnaService qnaService;

	@GetMapping("mypage_qna")
	public ModelAndView mypage_qna() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/qna");
		return mv;
	}

	@GetMapping("mypage_qna_register")
	public ModelAndView qna_register() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/qna_register");
		return mv;
	}

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
}
