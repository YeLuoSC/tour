package com.product.common.picupload.web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.product.common.picupload.service.IPicUploadService;
import com.product.common.util.PropertiesUtil;

@Controller
@RequestMapping( value = "/common/")
public class PicUploadController {

	@Resource
	private IPicUploadService picUploadServiceImpl;
	
	
	@RequestMapping("picUpload")
	public String picUpload(HttpServletRequest request,HttpServletResponse response,MultipartFile upload) throws IOException{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(new Date());
		String path = PropertiesUtil.getValueFromProperties("UPLOAD.PATH");
		path += "/" + date;
		String uploadPath = request.getSession().getServletContext().getRealPath(path);
		String fileName = picUploadServiceImpl.uploadPic(upload, uploadPath);
		ServletOutputStream out = response.getOutputStream();
		String callback = request.getParameter("CKEditorFuncNum");
		out.println("<script type=\"text/javascript\">");
		out.println("window.parent.CKEDITOR.tools.callFunction("+callback+",'"+request.getSession().getServletContext().getContextPath()+""+path+"/"+fileName+"','')");
		out.println("</script>");
		return null;
	}
}
