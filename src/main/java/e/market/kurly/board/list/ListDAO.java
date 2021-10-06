package e.market.kurly.board.list;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ListDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "e.market.kurly.board.list.ListDAO.";
	
	public List<ListDTO> getList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public ListDTO getOne(ListDTO listDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getOne", listDTO);
	}
}
