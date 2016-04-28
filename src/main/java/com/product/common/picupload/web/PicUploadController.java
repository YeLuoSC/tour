package com.product.common.picupload.web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.product.common.picupload.service.IPicUploadService;
import com.product.common.util.PropertiesUtil;

@Controller
@RequestMapping( value = "/common/")
public class PicUploadController {

	@Resource
	private IPicUploadService picUploadServiceImpl;
	
	/**
	 * CKEDITOR上传用的路径
	 * @param request
	 * @param response
	 * @param upload
	 * @return
	 * @throws IOException
	 */
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
	
	/**
	 * 通用通过ajax上传图片的方式,这块写的太恶心了。回头重构掉这里
	 * @param request
	 * @param response
	 * @param upload
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("commonPicUpload")
	@ResponseBody
	public Object commonPicUpload(HttpServletRequest request,HttpServletResponse response,MultipartFile upload,MultipartFile updateUpload) throws IOException{
		if(upload == null) upload = updateUpload;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(new Date());
		String path = PropertiesUtil.getValueFromProperties("UPLOAD.PATH");
		path += "/" + date;
		String uploadPath = request.getSession().getServletContext().getRealPath(path);
		String fileName = picUploadServiceImpl.uploadPic(upload, uploadPath);
		String result = request.getSession().getServletContext().getContextPath() + path + "/" + fileName;
		Map<String,String> map = new HashMap<String,String>();
		map.put("success", result);
		return map;
	}
}
