package e.market.kurly.members;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MembersDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="e.market.kurly.member.MembersDAO.";
	
	/** 회원가입 */
	public int setRegisterMember(MembersDTO membersDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setRegisterMember", membersDTO);
	}
	
	public MembersDTO getIdCheck(MembersDTO membersDTO) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"getIdCheck", membersDTO);
	}

	
}
