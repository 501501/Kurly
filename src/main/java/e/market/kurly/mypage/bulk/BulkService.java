package e.market.kurly.mypage.bulk;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BulkService {
	
	@Autowired
	private BulkDAO bulkDAO;
	
	public int setInsert(BulkDTO bulkDTO) throws Exception {
		return bulkDAO.setInsert(bulkDTO);
	}
}
