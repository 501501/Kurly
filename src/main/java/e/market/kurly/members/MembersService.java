package e.market.kurly.members;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MembersService {

	@Autowired
	private MembersDAO membersDAO;
	
	/** 회원가입 */
	public int setRegisterMember(MembersDTO membersDTO) throws Exception {
		return membersDAO.setRegisterMember(membersDTO);
	}
	
	/** 아이디 중복확인*/
	public MembersDTO getIdCheck(MembersDTO membersDTO) throws Exception {
		return membersDAO.getIdCheck(membersDTO);
	}
	
	/** 이메일 중복확인 */
	public MembersDTO getEmailCheck(MembersDTO membersDTO) throws Exception {
		return membersDAO.getEmailCheck(membersDTO);
	}
		
	/** 로그인 */
	public MembersDTO getLogin(MembersDTO membersDTO) throws Exception {
		return membersDAO.getLogin(membersDTO);
	}
	
	/** 아이디삭제 */
	public int setDeleteId(MembersDTO membersDTO) throws Exception {
		return membersDAO.setDeleteId(membersDTO);
	}
	
	/** 회원정보 수정 */
	public int setUpdateInfo(MembersDTO membersDTO) throws Exception {
		return membersDAO.setUpdateInfo(membersDTO);
	}
}
