package e.market.kurly.board.list;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board/**")
public class ListController {
	
	@Autowired
	private ListDAO listDAO;
	
	@GetMapping("list")
	public ModelAndView list() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ListDTO> ar = listDAO.getList();
		mv.addObject("list", ar);
		mv.setViewName("board/notice");
		return mv;
	}
	
	@GetMapping("view")
	public ModelAndView view(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();
		ListDTO listDTO = new ListDTO();
		listDTO.setNum(num);
		listDTO = listDAO.getOne(listDTO);
		
		mv.addObject("dto", listDTO);
		mv.setViewName("board/view");
		return mv;
	}
}
