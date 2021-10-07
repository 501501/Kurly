package e.market.kurly.board.list;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import e.market.kurly.util.Pager;

@Repository
public class ListDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "e.market.kurly.board.list.ListDAO.";
	
	public List<ListDTO> getList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList", pager);
	}
	
	public ListDTO getOne(ListDTO listDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getOne", listDTO);
	}
	
	public int setHits(ListDTO listDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setHits", listDTO);
	}
	
	public Long getCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getCount", pager);
	}
}
