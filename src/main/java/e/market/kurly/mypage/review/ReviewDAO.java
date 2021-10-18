package e.market.kurly.mypage.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import e.market.kurly.board.BoardFilesDTO;
import e.market.kurly.members.MembersDTO;

@Repository
public class ReviewDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "e.market.kurly.mypage.review.ReviewDAO.";
	
	// 리뷰 작성 (insert)
	public int setInsert(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setInsert", reviewDTO);
	}
	
	// file insert
	public int setFile(BoardFilesDTO boardFilesDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setFile", boardFilesDTO);
	}
	
	public int setReviewCk(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setReviewCk", reviewDTO);
	}
	
	public List<ReviewDTO> getList(MembersDTO membersDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList", membersDTO);
	}
}
