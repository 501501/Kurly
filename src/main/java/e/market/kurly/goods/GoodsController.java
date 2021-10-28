package e.market.kurly.goods;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("goods/*")
public class GoodsController {
	
	@Autowired
	private GoodsService goodsService;
	
	@GetMapping("goods_list")
	public ModelAndView goodsList() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<GoodsDTO> list = goodsService.goodsList();
		GoodsDTO goods = (GoodsDTO)list.get(0);
		System.out.println(goods.getProduct_name());
		mv.addObject("goodsList", list);
		mv.setViewName("goods/goods_list");
		
		return mv;
	}
	
	@GetMapping("goods_view")
	public ModelAndView goodsView(GoodsDTO goodsDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		goodsDTO = goodsService.goodsView(goodsDTO);
		
		mv.addObject("goods", goodsDTO);
		mv.setViewName("goods/goods_view");
		
		return mv;
	}
	
	@GetMapping("event")
	public ModelAndView event() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("event/event");
		return mv;
	}

}
