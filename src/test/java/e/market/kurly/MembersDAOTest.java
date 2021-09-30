package e.market.kurly;

import static org.junit.Assert.assertNotNull;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import e.market.kurly.members.MembersDAO;
import e.market.kurly.members.MembersDTO;

public class MembersDAOTest extends MyJunitTest {

	@Autowired
	private MembersDAO membersDAO;
	
	@Test
	public void getIdCheck() throws Exception {
		MembersDTO membersDTO = new MembersDTO();
		membersDTO.setId("cccccc");
		
		membersDTO = membersDAO.getIdCheck(membersDTO);
		
		assertNotNull(membersDAO.getIdCheck(membersDTO));
	}
	
	
	
}
