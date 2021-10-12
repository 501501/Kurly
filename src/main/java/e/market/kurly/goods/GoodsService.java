package e.market.kurly.goods;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GoodsService {

	@Autowired
	private GoodsDAO goodsDAO;
	
	public List<GoodsDTO> goodsList() throws Exception {
		List<GoodsDTO> list= goodsDAO.goodsList();
		
		return list;
	}
	
	public GoodsDTO goodsView(GoodsDTO goodsDTO) throws Exception {
		return goodsDAO.goodsView(goodsDTO);
	}
}
