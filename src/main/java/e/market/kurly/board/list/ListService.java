package e.market.kurly.board.list;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import e.market.kurly.util.Pager;

@Service
public class ListService {
	@Autowired
	private ListDAO listDAO;
	
	public List<ListDTO> getList(Pager pager) throws Exception {
		Long totalCount = listDAO.getCount(pager);
		pager.makeNum(totalCount);
		pager.makeRow();
		
		return listDAO.getList(pager);
	}
	
	public ListDTO getOne(ListDTO listDTO) throws Exception {
		return listDAO.getOne(listDTO);
	}
	
	public int setHits(ListDTO listDTO) throws Exception {
		return listDAO.setHits(listDTO);
	}
}
