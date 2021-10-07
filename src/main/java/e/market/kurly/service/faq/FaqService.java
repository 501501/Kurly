package e.market.kurly.service.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import e.market.kurly.util.Pager;

@Service
public class FaqService {
	@Autowired
	private FaqDAO faqDAO;
	
	public List<FaqDTO> getList(Pager pager) throws Exception {
		Long totalCount = faqDAO.getCount(pager);
		pager.makeNum(totalCount);
		pager.makeRow();
		
		return faqDAO.getList(pager);
	}
}
