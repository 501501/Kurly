package e.market.kurly.mypage.emoney;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import e.market.kurly.members.MembersDTO;
import e.market.kurly.util.Pager;

@Service
public class EmoneyService {

	@Autowired
	private EmoneyDAO emoneyDAO;
	
	public List<EmoneyDTO> getEmoneyList(String userId, Pager pager) throws Exception {
//		Long count = emoneyDAO.getListCount(userId);
//		pager.makeNum(count);
//		pager.makeRow();
		
		return emoneyDAO.getEmoneyList(userId);
	}
	
	/* 리뷰당 500원 적립*/
	public int setReviewPoint(BuyingDTO buyingDTO) throws Exception {
		return emoneyDAO.setReviewPoint(buyingDTO);
	}
	
	/* 결제금액의 5% 적립 */
	public int setBuyingPoint(BuyingDTO buyingDTO) throws Exception {
		return emoneyDAO.setBuyingPoint(buyingDTO);
	}
	
	/* 적립금 사용 */
	public int usePoint(BuyingDTO buyingDTO) throws Exception {
		return emoneyDAO.usePoint(buyingDTO);		
	}
	
	/* 총 보유적립금 가져오기 */
	public int getTotalPoint(String userId) throws Exception {
		return emoneyDAO.getTotalPoint(userId);
	}
	
	/*가입시 최초적립금*/
	public int welcomePoint(MembersDTO membersDTO) throws Exception {
		return emoneyDAO.welcomePoint(membersDTO);
	}
	
	
}
