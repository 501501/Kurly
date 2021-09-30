package e.market.kurly.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.mypage.qna.QnaDTO;
import e.market.kurly.mypage.qna.QnaService;

@Controller
@RequestMapping("/ajax/**")
public class AjaxController {
	
	@Autowired
	private QnaService qnaService;
	
	@GetMapping("select")
	public ModelAndView select(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();

		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO.setNum(num);
		qnaDTO = qnaService.getOne(qnaDTO);
		qnaDTO.setFiles(qnaService.getFiles(qnaDTO));
	
		mv.setViewName("common/selectResult");
		mv.addObject("dto", qnaDTO);

		mv.addObject("num", num);
		return mv;
	}
	
}
