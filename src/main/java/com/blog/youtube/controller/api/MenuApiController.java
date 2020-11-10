package com.blog.youtube.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.blog.youtube.config.auth.PrincipalDetail;
import com.blog.youtube.dto.ResponseDTO;
import com.blog.youtube.model.Menu;
import com.blog.youtube.model.MenuImg;
import com.blog.youtube.model.Store;
import com.blog.youtube.repository.MenuImgRepository;
import com.blog.youtube.service.MenuService;
import com.blog.youtube.service.StoreService;
import com.blog.youtube.util.FileService;

@RestController
public class MenuApiController {

	@Autowired
	private MenuService menuService;

	@Autowired
	private StoreService storeService;

	@Autowired
	private FileService fileService;

	@Autowired
	private MenuImgRepository imgRepository;

	private final String UPLOAD_PATH = "C:\\Users\\whot0\\Downloads\\test\\src\\main\\resources\\static\\menuIMG";

	@PostMapping("/mypage/menu/insert")
	public ResponseDTO<Integer> save(@RequestBody Menu menu, @AuthenticationPrincipal PrincipalDetail principal) {
		menuService.menuinsert(menu, principal);
		return new ResponseDTO<Integer>(HttpStatus.OK.value(), 1);
	}

	//사용안함
	@PostMapping("/mypage/menu/file")
	public ResponseDTO<Integer> save(@RequestParam(value = "upload") MultipartFile upload, @RequestBody Menu menu,
			@AuthenticationPrincipal PrincipalDetail principal) {

		Store store = storeService.findMyStore(principal.getUsername());

		if (!upload.isEmpty()) {
			String savedfile = fileService.saveFile(upload, UPLOAD_PATH);
			MenuImg img = new MenuImg();
			//img.setSavedfile(savedfile);
			//img.setOriginalfile(upload.getOriginalFilename());
			//img.setStoreId(store.getId());
			//imgRepository.save(img);
			menu.setOriginalfile(upload.getOriginalFilename());
			menu.setSavedfile(savedfile);
		}

		return new ResponseDTO<Integer>(HttpStatus.OK.value(), 1);
	}
}
