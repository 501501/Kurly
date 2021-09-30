package e.market.kurly.util;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
	//fileDelete
	public void fileDelete(File file) throws Exception {
		file.delete();
	}
	
	// fileSave
	public String fileSave(MultipartFile multipartFile, File file) throws Exception {
		if (!file.exists()) {
			file.mkdir();
		}

		// 파일명 생성
		String fileName = UUID.randomUUID().toString();
		fileName = fileName + "_" + multipartFile.getOriginalFilename();

		file = new File(file, fileName);

		// 저장
		// FileCopyUtils 또는 MultipartFile
		multipartFile.transferTo(file);

		return fileName;
	}
}
