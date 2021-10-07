package e.market.kurly.board.list;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.util.Pager;

@Controller
@RequestMapping("/board/**")
public class ListController {
	
	@Autowired
	private ListService listService;
	
	@GetMapping("list")
	public ModelAndView list(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ListDTO> ar = listService.getList(pager);
		
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		
		mv.setViewName("board/notice");
		return mv;
	}
	
	@GetMapping("view")
	public ModelAndView view(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();
		ListDTO listDTO = new ListDTO();
		listDTO.setNum(num);
		// num으로 선택한 공지 조회
		listDTO = listService.getOne(listDTO);
		
		// 조회수 업데이트
		listService.setHits(listDTO);
		
		mv.addObject("dto", listDTO);
		mv.setViewName("board/view");
		return mv;
	}
}
