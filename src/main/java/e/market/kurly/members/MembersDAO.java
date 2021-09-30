package e.market.kurly.members;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MembersDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="e.market.kurly.members.MembersDAO.";
	
	/** 회원가입 */
	public int setRegisterMember(MembersDTO membersDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setRegisterMember", membersDTO);
	}
	
	/** 아이디 중복확인*/
	public MembersDTO getIdCheck(MembersDTO membersDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getIdCheck", membersDTO);
	}
	
	/** 이메일 중복확인 */
	public MembersDTO getEmailCheck(MembersDTO membersDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getEmailCheck", membersDTO);
	}

	
}
