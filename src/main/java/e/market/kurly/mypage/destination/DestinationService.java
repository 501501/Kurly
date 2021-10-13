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
	
	public int setDefaultUpdate(DestinationDTO destinationDTO) throws Exception {
		return destinationDAO.setDefaultUpdate(destinationDTO);
	}
	
	public int setCheckSelect(DestinationDTO destinationDTO) throws Exception {
		// 선택한 radio 버튼의 check_type을 y로 업데이트
		int result = destinationDAO.setCheckSelect(destinationDTO);
		// 선택하지 않은 radio 버튼의 check_type을 n으로 업데이트
		result = destinationDAO.setCheckUpdate(destinationDTO);
		
		return result;
	}
	
	public int setCheckUpdate(DestinationDTO destinationDTO) throws Exception {
		return destinationDAO.setCheckUpdate(destinationDTO);
	}
	
	public DestinationDTO getListOne(DestinationDTO destinationDTO) throws Exception {
		return destinationDAO.getListOne(destinationDTO);
	}
	
	public int setUpdate(DestinationDTO destinationDTO) throws Exception {
		return destinationDAO.setUpdate(destinationDTO);
	}
	
	public int setDelete(DestinationDTO destinationDTO) throws Exception {
		return destinationDAO.setDelete(destinationDTO);
	}
	
	public int setDefaultToCheck() throws Exception {
		return destinationDAO.setDefaultToCheck();
	}
}
