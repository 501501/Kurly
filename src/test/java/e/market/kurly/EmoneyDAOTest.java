package e.market.kurly;

import static org.junit.Assert.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.sql.Date;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.web.WebAppConfiguration;

import e.market.kurly.members.MembersDAO;
import e.market.kurly.members.MembersDTO;
import e.market.kurly.mypage.emoney.BuyingDTO;
import e.market.kurly.mypage.emoney.EmoneyDAO;

public class EmoneyDAOTest extends MyJunitTest {

	@Autowired
	private EmoneyDAO emoneyDAO; 	
	
	
	public void setReviewPointTest() throws Exception {
		BuyingDTO buyingDTO = new BuyingDTO();
		buyingDTO.setUserId("t1");
		buyingDTO.setProduct_name("오렌지 10개");
		
		int result = emoneyDAO.setReviewPoint(buyingDTO);
		
		assertEquals(2, result);
	}
	
}
