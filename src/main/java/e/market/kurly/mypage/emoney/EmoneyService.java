package e.market.kurly.mypage.emoney;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import e.market.kurly.util.Pager;

@Service
public class EmoneyService {

	@Autowired
	private EmoneyDAO emoneyDAO;
	
	public List<EmoneyDTO> getEmoneyList(String userId, Pager pager) throws Exception {
		Long count = emoneyDAO.getListCount(userId);
		pager.makeNum(count);
		pager.makeRow();
		
		return emoneyDAO.getEmoneyList(userId);
	}
	
	
}
