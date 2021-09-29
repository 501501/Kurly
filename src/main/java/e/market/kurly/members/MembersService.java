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
	
	public MembersDTO getIdCheck(MembersDTO membersDTO) throws Exception {
		return membersDAO.getIdCheck(membersDTO);
	}
}
