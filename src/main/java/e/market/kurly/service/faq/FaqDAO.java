package e.market.kurly.service.faq;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FaqDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "e.market.kurly.service.faq.FaqDAO.";
	
	public List<FaqDTO> getList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public FaqDTO getOne(FaqDTO faqDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getOne", faqDTO);
	}
}
