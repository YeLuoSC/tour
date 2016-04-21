package com.product.common.picupload.service.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.product.common.picupload.service.IPicUploadService;

@Service
public class PicUploadServiceImpl implements IPicUploadService{

	@Override
	public String uploadPic(MultipartFile upload,String uploadPath) throws IOException {
		String result = "";
		InputStream is = null;
		FileOutputStream fos = null;
		try{
			is = upload.getInputStream();
			String[] arr = upload.getOriginalFilename().split("\\.");
			if(arr[arr.length-1].equalsIgnoreCase("jpg") || arr[arr.length-1].equalsIgnoreCase("gif") || arr[arr.length-1].equalsIgnoreCase("bmp") || arr[arr.length-1].equalsIgnoreCase("png")){
				String fileName = "";
				fileName += UUID.randomUUID().toString() + "." + arr[arr.length - 1];
				
				File dir = new File(uploadPath);
				if(!dir.exists()){
					dir.mkdirs();
				}
				File toFile = new File(uploadPath,fileName);
				
				fos = new FileOutputStream(toFile);
				byte[] buffer = new byte[1024];
				int length = 0;
				while((length = is.read(buffer)) > 0){
					fos.write(buffer,0,length);
				}
				return fileName;
			}else{
				result = "只支持jpg,gif,bmp,png格式的文件";
			}
			
		}finally{
			if(is != null)
				is.close();
			if(fos != null)
				fos.close();
		}
		return result;
	}


}
