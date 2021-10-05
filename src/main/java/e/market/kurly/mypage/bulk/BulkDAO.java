package e.market.kurly.mypage.bulk;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oracle.net.aso.b;

@Repository
public class BulkDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "e.market.kurly.mypage.bulk.BulkDAO.";
	
	public int setInsert(BulkDTO bulkDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", bulkDTO);
	}
}
