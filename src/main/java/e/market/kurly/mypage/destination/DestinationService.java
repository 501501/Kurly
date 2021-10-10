package e.market.kurly.mypage.destination;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import e.market.kurly.members.MembersDTO;

@Service
public class DestinationService {

	@Autowired
	private DestinationDAO destinationDAO;
	
	/** DB에서 배송지 리스트 불러오기*/
	public List<DestinationDTO> getDestinationList(MembersDTO membersDTO) throws Exception {
		return destinationDAO.getDestinationList(membersDTO);
	}
	
	/** 새 배송지 추가 */
	public int setDestination(DestinationDTO destinationDTO) throws Exception {
	
		if(destinationDTO.getBasic_destination().equals("b")) {
			destinationDAO.updateBasicDestination(destinationDTO);
			destinationDAO.updateMembersDestination(destinationDTO);
		}
		
		return destinationDAO.setDestination(destinationDTO);
	}
	
	
}
