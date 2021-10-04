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
	
	/** 로그인*/
	public MembersDTO getLogin(MembersDTO membersDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getLogin", membersDTO);
	}
	
	/** 아이디 삭제*/
	public int setDeleteId(MembersDTO membersDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDeleteId", membersDTO);
	}
	
	/** 회원정보 수정*/
	public int setUpdateInfo(MembersDTO membersDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdateInfo", membersDTO);
	}

	
}
