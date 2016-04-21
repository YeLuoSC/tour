package com.product.common.picupload.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public interface IPicUploadService {

	public String uploadPic(MultipartFile upload,String uploadPath) throws IOException;
}
