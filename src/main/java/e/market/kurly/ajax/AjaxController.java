package e.market.kurly.ajax;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import e.market.kurly.board.BoardFilesDTO;
import e.market.kurly.members.MembersDTO;
import e.market.kurly.mypage.destination.DestinationDTO;
import e.market.kurly.mypage.destination.DestinationService;
import e.market.kurly.mypage.echo.EchoDTO;
import e.market.kurly.mypage.echo.EchoService;
import e.market.kurly.mypage.offer.OfferDTO;
import e.market.kurly.mypage.offer.OfferService;
import e.market.kurly.mypage.order.OrderDTO;
import e.market.kurly.mypage.order.OrderService;
import e.market.kurly.mypage.qna.QnaDTO;
import e.market.kurly.mypage.qna.QnaService;
import e.market.kurly.mypage.review.ReviewDTO;
import e.market.kurly.mypage.review.ReviewService;
import e.market.kurly.service.faq.FaqDAO;
import e.market.kurly.service.faq.FaqDTO;

@Controller
@RequestMapping("/ajax/**")
public class AjaxController {
	
	@Autowired
	private QnaService qnaService;
	@Autowired
	private OfferService offerService;
	@Autowired
	private EchoService echoService;
	@Autowired
	private FaqDAO faqDAO;
	@Autowired
	private DestinationService destinationService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private ReviewService reviewService;
	
	@GetMapping("qna_select")
	public ModelAndView qna_select(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();

		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO.setNum(num);
		qnaDTO = qnaService.getOne(qnaDTO);
		qnaDTO.setFiles(qnaService.getFiles(qnaDTO));
	
		mv.setViewName("qna/selectResult");
		mv.addObject("dto", qnaDTO);
		mv.addObject("board", "mypage_qna");
		
		mv.addObject("num", num);
		return mv;
	}
	
	@GetMapping("qna_fileDelete")
	public ModelAndView qna_fileDelete(Long fileNum) throws Exception {
		System.out.println(fileNum);
		ModelAndView mv = new ModelAndView();
		BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
		boardFilesDTO.setFileNum(fileNum);
		qnaService.getFileOne(boardFilesDTO);
		int result = qnaService.setFileDelete(boardFilesDTO);
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		
		return mv;
	}
	
	@GetMapping("offer_select")
	public ModelAndView offer_select(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();

		OfferDTO offerDTO = new OfferDTO();
		offerDTO.setNum(num);
		offerDTO = offerService.getOne(offerDTO);
		offerDTO.setFiles(offerService.getFiles(offerDTO));
	
		mv.setViewName("offer/selectResult");
		mv.addObject("dto", offerDTO);
		mv.addObject("board", "offer");
		
		mv.addObject("num", num);
		return mv;
	}
	
	@GetMapping("offer_fileDelete")
	public ModelAndView offer_fileDelete(Long fileNum) throws Exception {
		System.out.println(fileNum);
		ModelAndView mv = new ModelAndView();
		BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
		boardFilesDTO.setFileNum(fileNum);
		offerService.getFileOne(boardFilesDTO);
		int result = offerService.setFileDelete(boardFilesDTO);
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		
		return mv;
	}
	
	@GetMapping("echo_select")
	public ModelAndView echo_select(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();

		EchoDTO echoDTO = new EchoDTO();
		echoDTO.setNum(num);
		echoDTO = echoService.getOne(echoDTO);
		echoDTO.setFiles(echoService.getFiles(echoDTO));
	
		mv.setViewName("echo/selectResult");
		mv.addObject("dto", echoDTO);
		mv.addObject("board", "echo");
		
		mv.addObject("num", num);
		return mv;
	}
	
	@GetMapping("echo_fileDelete")
	public ModelAndView echo_fileDelete(Long fileNum) throws Exception {
		System.out.println(fileNum);
		ModelAndView mv = new ModelAndView();
		BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
		boardFilesDTO.setFileNum(fileNum);
		echoService.getFileOne(boardFilesDTO);
		int result = echoService.setFileDelete(boardFilesDTO);
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		
		return mv;
	}
	
	@GetMapping("faq_select")
	public ModelAndView faq_select(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();
		FaqDTO faqDTO = new FaqDTO();
		faqDTO.setNum(num);
		faqDTO = faqDAO.getOne(faqDTO);
		
		mv.addObject("dto", faqDTO);
		mv.setViewName("board/selectResult");
		
		return mv;
	}
	
	@GetMapping("check_type")
	public ModelAndView check_type(String post) throws Exception {
		ModelAndView mv = new ModelAndView();
		DestinationDTO destinationDTO = new DestinationDTO();
		destinationDTO.setAddress_post(post);
		int result = destinationService.setCheckSelect(destinationDTO);		
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		
		return mv;
	}
	
	
	@GetMapping("order_select") 
	public ModelAndView order_select(String orderNum, HttpSession session) throws Exception { 
		ModelAndView mv = new ModelAndView();
		MembersDTO membersDTO = (MembersDTO) session.getAttribute("member");
	  
		// 주문 번호로 주문한 상품 목록 조회 
		List<OrderDTO> ar = orderService.getListByOrderNum(orderNum); 
		mv.addObject("list", ar);
		mv.setViewName("review/selectResultBefore"); 
		return mv; 
	}
	 
	
	@GetMapping("beforeView")
	public ModelAndView beforeView(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		// session에서 사용자 정보 꺼내오기
		MembersDTO membersDTO = (MembersDTO) session.getAttribute("member");
		// 리뷰를 작성하지 않은 주문번호 조회
		List<String> orderNums = orderService.getBeforeOrderNum(membersDTO);
		mv.addObject("orderNums", orderNums);
		mv.setViewName("review/beforeView");
		return mv;
	}
	
	@GetMapping("afterView")
	public ModelAndView afterView(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		// session에서 사용자 정보 꺼내오기
		MembersDTO membersDTO = (MembersDTO) session.getAttribute("member");
		// 사용자 id로 리뷰 조회 
		List<ReviewDTO> reviews = reviewService.getList(membersDTO);
		mv.addObject("reviews", reviews);
		mv.setViewName("review/afterView");
		return mv;
	}
	
	@GetMapping("review_image")
	public ModelAndView review_image(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();
		ReviewDTO reviewDTO = new ReviewDTO();
		reviewDTO.setNum(num);
		List<BoardFilesDTO> ar = reviewService.getFiles(reviewDTO);
		mv.addObject("dto", ar);
		mv.setViewName("review/imageView");
		return mv;
	}
	
	@GetMapping("review_select")
	public ModelAndView review_select(Long num) throws Exception {
		ModelAndView mv = new ModelAndView();
		// num으로 리뷰 조회
		ReviewDTO reviewDTO = reviewService.getOne(num);
		// num으로 리뷰 파일 조회
		List<BoardFilesDTO> ar = reviewService.getFiles(reviewDTO);
		// 리뷰에 리뷰 파일 넣기
		reviewDTO.setFiles(ar);
		
		mv.addObject("dto", reviewDTO);
		mv.setViewName("review/selectResultAfter");
		return mv;
	}
	
	@GetMapping("review_file_delete")
	public ModelAndView review_file_delete(Long fileNum) throws Exception {
		ModelAndView mv = new ModelAndView();
		BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
		boardFilesDTO.setFileNum(fileNum);
		int result = reviewService.setFileDelete(boardFilesDTO);
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
}
