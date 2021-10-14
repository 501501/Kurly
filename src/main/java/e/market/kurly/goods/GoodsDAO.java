package e.market.kurly.goods;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsDAO {

	@Autowired
	private SqlSession sqlSession;
	private String NAMESPACE="e.market.kurly.goods.GoodsDAO.";
	
	public List<GoodsDTO> goodsList() throws Exception {
		List<GoodsDTO> list= sqlSession.selectList(NAMESPACE+"goodsList");
		
		return list;
	}
	
	public GoodsDTO goodsView(GoodsDTO goodsDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"goodsView", goodsDTO);
	}
}
