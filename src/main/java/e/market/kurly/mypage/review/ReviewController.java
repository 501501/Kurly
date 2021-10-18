package e.market.kurly.mypage.review;

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

import e.market.kurly.members.MembersDTO;
import e.market.kurly.mypage.order.OrderDTO;
import e.market.kurly.mypage.order.OrderService;

@Controller
@RequestMapping("/mypage/*")
public class ReviewController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private ReviewService reviewService;
	
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
		return mv;
	}
}
