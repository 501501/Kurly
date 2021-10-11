package e.market.kurly.mypage.destination;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import e.market.kurly.members.MembersDTO;

@Service
public class DestinationService {
	
	@Autowired
	private DestinationDAO destinationDAO;
	
	public int setInsert(DestinationDTO destinationDTO) throws Exception {
		return destinationDAO.setInsert(destinationDTO);
	}
	
	public List<DestinationDTO> getList(MembersDTO membersDTO) throws Exception {
		return destinationDAO.getList(membersDTO);
	}
}
