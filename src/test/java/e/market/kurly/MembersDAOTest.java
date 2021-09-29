package e.market.kurly;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;

import e.market.kurly.members.MembersDAO;
import e.market.kurly.members.MembersDTO;

public class MembersDAOTest extends MyJunitTest {

	@Test
	public void getIdCheck() throws Exception {
		MembersDTO membersDTO = new MembersDTO();
		membersDTO.setId("cccccc");
		
		MembersDAO membersDAO = new MembersDAO();
		membersDTO = membersDAO.getIdCheck(membersDTO);
		
		assertNotNull(membersDAO.getIdCheck(membersDTO));
	}
	
	
}
