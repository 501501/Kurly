package e.market.kurly.mypage.review;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.members.MembersDTO;
import e.market.kurly.mypage.order.OrderDTO;
import e.market.kurly.mypage.order.OrderService;

@Controller
@RequestMapping("/mypage/*")
public class ReviewController {
	@Autowired
	private OrderService orderService;
	
	@GetMapping("mypage_review")
	public ModelAndView mypage_review(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		// session에서 사용자 정보 꺼내오기
		MembersDTO membersDTO = (MembersDTO) session.getAttribute("member");
		// 주문번호 조회
		List<String> orderNums = orderService.getOrderNum(membersDTO);
		mv.addObject("orderNums", orderNums);
		
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
}
