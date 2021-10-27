package e.market.kurly.mypage.review;

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
import e.market.kurly.mypage.emoney.BuyingDTO;
import e.market.kurly.mypage.emoney.EmoneyService;
import e.market.kurly.order.OrderDTO;
import e.market.kurly.order.OrderService;

@Controller
@RequestMapping("/mypage/*")
public class ReviewController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private EmoneyService emoneyService;
	
	@ModelAttribute("board")
	public String getBoard() {
		return "review";
	}
	
	@GetMapping("mypage_review")
	public ModelAndView mypage_review() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("review/review");
		return mv;
	}
	
	@GetMapping("review_register")
	public ModelAndView review_register(Long goodsNo) throws Exception {
		ModelAndView mv = new ModelAndView();
		// 파라미터에서 goodsNo 받아서 상품 정보 조회
		OrderDTO orderDTO = orderService.getOne(goodsNo);
		mv.addObject("dto", orderDTO);
		mv.setViewName("review/review_register");
		return mv;
	}
	
	@PostMapping("review_register")
	public ModelAndView review_register(ReviewDTO reviewDTO, MultipartFile [] files2) throws Exception {
		ModelAndView mv = new ModelAndView();
		// 리뷰 작성 (insert)
		int result = reviewService.setInsert(reviewDTO, files2);
		mv.setViewName("redirect:./mypage_review");
		
		// 리뷰 적립금 적립
		BuyingDTO buyingDTO = new BuyingDTO();
		buyingDTO.setUserId(reviewDTO.getId());
		buyingDTO.setProduct_name(reviewDTO.getProductName());
		emoneyService.setReviewPoint(buyingDTO);
		
		return mv;
	}
	
	// file 다운로드
	@GetMapping("review_down")
	public ModelAndView fileDown(BoardFilesDTO boardFilesDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", boardFilesDTO);
		mv.setViewName("fileDown");
		return mv;
	}
	
	@GetMapping("mypage_review/delete")
	public ModelAndView delete(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();
		// 리뷰 삭제 (delete)
		int result = reviewService.setDelete(num);
		mv.setViewName("redirect:../mypage_review");
		return mv;
	}
	
	@GetMapping("mypage_review/update")
	public ModelAndView update(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		ReviewDTO reviewDTO = reviewService.getOne(num);
		List<BoardFilesDTO> ar = reviewService.getFiles(reviewDTO);
		reviewDTO.setFiles(ar);
		
		mv.addObject("dto", reviewDTO);
		mv.setViewName("review/review_update");
		return mv;
	}
	
	@PostMapping("mypage_review/update")
	public ModelAndView update(ReviewDTO reviewDTO, MultipartFile [] files2) throws Exception {
		ModelAndView mv = new ModelAndView();
		// 글 업데이트, 사진 등록
		int result = reviewService.setUpdate(reviewDTO, files2);
		mv.setViewName("redirect:../mypage_review");
		return mv;
	}
}
