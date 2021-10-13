package e.market.kurly.goods.goods_cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsCartDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "e.market.kurly.goods.goods_cart.GoodsCartDAO.";
	
	public List<GoodsCartDTO> cartMoney() throws Exception {
		return null;
	}
	
	public int insert(GoodsCartDTO cartDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"insertCart", cartDTO);
	}
	
	public List<GoodsCartDTO> listCart(String userId) throws Exception {
		return sqlSession.selectList(NAMESPACE+"listCart", userId);
	}
	
	public int deleteOne(GoodsCartDTO cartDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"deleteOne", cartDTO);
	}
	
	public int deleteAll(GoodsCartDTO cartDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"deleteAll", cartDTO);
	}
	
	public int sumMoney(String userId) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"sumMoney", userId);
	}
	
	public int countCart(String userId, int product_id) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"countCart", userId);
	}
	
	public int updateCart(GoodsCartDTO cartDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"updateCart", cartDTO);
	}
	
	public int modifyCart(GoodsCartDTO cartDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"modifyCart", cartDTO);
	}

	public int updatePlus(GoodsCartDTO cartDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"updatePlus", cartDTO);
	}
	
	public int updateMinus(GoodsCartDTO cartDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"updateMinus", cartDTO);
	}
	
	
	
	
}
