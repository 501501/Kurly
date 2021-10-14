package e.market.kurly.goods.goods_cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GoodsCartService {

	@Autowired
	private GoodsCartDAO goodsCartDAO;
	
	public List<GoodsCartDTO> cartMoney() throws Exception {
		return null;
	}
	
	public int insert(GoodsCartDTO cartDTO) throws Exception {
		return goodsCartDAO.insert(cartDTO);
	}
	
	public List<GoodsCartDTO> listCart(String userId) throws Exception {
		return goodsCartDAO.listCart(userId);
	}
	
	public int deleteOne(GoodsCartDTO cartDTO) throws Exception {
		return goodsCartDAO.deleteOne(cartDTO);
	}
	
	public int deleteAll(GoodsCartDTO cartDTO) throws Exception {
		return goodsCartDAO.deleteAll(cartDTO);
	}
	
	public int sumMoney(String userId) throws Exception {
		return goodsCartDAO.sumMoney(userId);
	}
	
	public int countCart(String userId, int product_id) throws Exception {
		return goodsCartDAO.countCart(userId, product_id);
	}
	
	public int updateCart(GoodsCartDTO cartDTO) throws Exception {
		return goodsCartDAO.updateCart(cartDTO);
	}
	
	public int modifyCart(GoodsCartDTO cartDTO) throws Exception {
		return goodsCartDAO.modifyCart(cartDTO);
	}
	
	public int updatePlus(GoodsCartDTO cartDTO) throws Exception {
		return goodsCartDAO.updatePlus(cartDTO);
	}
	
	public int updateMinus(GoodsCartDTO cartDTO) throws Exception {
		return goodsCartDAO.updateMinus(cartDTO);
	}
}
