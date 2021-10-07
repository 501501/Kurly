package e.market.kurly.mypage.echo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.board.BoardFilesDTO;

@Controller
@RequestMapping("/mypage/*")
public class EchoController {
	
	@Autowired
	private EchoService echoService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "echo";
	}
	
	// 에코포장
	@GetMapping("echo_packing")
	public ModelAndView echo_packing() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<EchoDTO> ar = echoService.getList();
		mv.addObject("list", ar);
		mv.setViewName("echo/echo");
		
		return mv;
	}

	// 에코포장 수정
	@GetMapping("echo/update")
	public ModelAndView echo_update(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();

		EchoDTO echoDTO = new EchoDTO();
		echoDTO.setNum(num);
		echoDTO = echoService.getOne(echoDTO);
		echoDTO.setFiles(echoService.getFiles(echoDTO));

		mv.setViewName("echo/echo_update");
		mv.addObject("dto", echoDTO);
		return mv;
	}

	@PostMapping("echo/update")
	public ModelAndView qna_update(EchoDTO echoDTO, MultipartFile[] files2) throws Exception {
		ModelAndView mv = new ModelAndView();

		// 글 수정 int result = echoService.setUpdate(echoDTO, files2);

		mv.setViewName("redirect:../echo_packing");
		return mv;
	}

	// 에코포장 등록
	@GetMapping("echo_register")
	public ModelAndView echo_register() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("echo/echo_register");
		return mv;
	}

	// 에코포장 등록
	@PostMapping("echo_register") 
	public ModelAndView echo_register(EchoDTO echoDTO, MultipartFile[] files2) throws Exception { 
		//System.out.println("upload"); 
		// original file name 출력 
		for (MultipartFile muFile : files2) {
			System.out.println(muFile.getOriginalFilename());
		}

		ModelAndView mv = new ModelAndView();
		int result = echoService.setInsert(echoDTO, files2);
		mv.setViewName("redirect:./echo_packing");
		return mv;
	}

	// 에코포장 삭제
	@GetMapping("echo/delete")
	public ModelAndView echo_delete(EchoDTO echoDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = echoService.setDelete(echoDTO);
		mv.setViewName("redirect:../echo_packing");
		return mv;
	}

	// file 다운로드
	@GetMapping("echo_down")
	public ModelAndView fileDown(BoardFilesDTO boardFilesDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", boardFilesDTO);
		mv.setViewName("fileDown");
		return mv;
	}

}
