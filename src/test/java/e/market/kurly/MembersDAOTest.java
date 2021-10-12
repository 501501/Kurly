package e.market.kurly;

import static org.junit.Assert.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;

import e.market.kurly.members.MembersDAO;
import e.market.kurly.members.MembersDTO;

public class MembersDAOTest extends MyJunitTest {

	@Autowired
	private MembersDAO membersDAO;
	
	//@Test
	public void getIdCheck() throws Exception {
		MembersDTO membersDTO = new MembersDTO();
		membersDTO.setId("cccccc");
		
		membersDTO = membersDAO.getIdCheck(membersDTO);
		
		assertNotNull(membersDAO.getIdCheck(membersDTO));
	}
	
	//@Test
	public void setRegisterMemberTest() throws Exception {
		MembersDTO membersDTO = new MembersDTO();
		Date date = new Date(93, 04, 02);
		membersDTO.setId("a5");
		membersDTO.setPw("123456");
		membersDTO.setPhone_num("01055557756");
		membersDTO.setEmail("a5@naver.com");
		membersDTO.setName("a5");
	
		membersDTO.setGender("m");
		membersDTO.setRecommender("a1");
		membersDTO.setClause_email(1);
		membersDTO.setClause_private(1);
		membersDTO.setClause_sms(1);
		
		int result = membersDAO.setRegisterMember(membersDTO);
		assertEquals(1, result);
		
	}
	
	
	
}
