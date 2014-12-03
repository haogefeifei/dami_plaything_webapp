package com.demo.action;

import org.springframework.stereotype.Controller;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import org.apache.struts2.ServletActionContext;
import com.demo.util.DwindlePic;
import com.opensymphony.xwork2.Action;

/**
 * 用于商品新增，上传和处理商品图片
 * @author FeiFei
 *
 */
@Controller("ProductuploadAction")
public class ProductuploadAction implements Action {

	//默认方法
	public String execute() throws Exception {
		
		return SUCCESS;
	}
	
    	 @SuppressWarnings("unused")
	    private static final long serialVersionUID = -8204063374280945416L;

	    private File upload;// 路径
	    private String uploadFileName;// 原文件名
	    private String uploadContentType;// 文件类型
	    private String imagePath;// 配置图片路径
	    private String image_smallPath;// 配置小图片路径
	    private String file_zipPath;// 配置文件路径
	    private String image_smalllook;
	    private String imagePath_look;
	    private String file_zip_look;

	    @SuppressWarnings("resource")
		public String upload() throws Exception {

	        // FileUtils.copyFile(doc, target);
	        File image = new File(getImagePath());
	        if (!image.exists()) {
	            image.mkdir();
	        }
	        File image_small = new File(getImage_smallPath());
	        if (!image_small.exists()) {
	            image_small.mkdir();
	        }
	        File file_zip = new File(getFile_zipPath());
	        if (!file_zip.exists()) {
	            file_zip.mkdir();
	        }
	        
	        System.out.println(getImagePath());
	        System.out.println(getImage_smallPath());
	        // 得到上传文件的后缀名
	        String uploadName = getUploadContentType();
	        System.out.println(uploadName+"!!!!!!!!!!!!!!!");
	        String lastuploadName = uploadName.substring(uploadName.indexOf("/") + 1, uploadName.length());
	        // 得到文件的新名字
	        String fileNewName = generateFileName(getUploadFileName());
	        if (lastuploadName.equals("jpeg")) {
	            System.out.println("图片路径");
	            // 创建文件
	            FileOutputStream fos = new FileOutputStream(getImagePath() + "/" + fileNewName);
	            FileInputStream fis = new FileInputStream(getUpload());
	            byte[] buffer = new byte[1024];
	            int len = 0;
	            while ((len = fis.read(buffer)) > 0) {
	                fos.write(buffer, 0, len);
	            }
	            DwindlePic mypic = new DwindlePic();
	            // s_pic(大图片路径,生成小图片路径,大图片文件名,生成小图片文名,生成小图片宽度,生成小图片高度)
	            mypic.s_pic(getImagePath() + "/", getImage_smallPath() + "/", fileNewName, fileNewName, 120, 80, true);
	        } else {
	            System.out.println("其他类型文件");
	            // 创建文件
	            FileOutputStream fos = new FileOutputStream(getFile_zipPath() + "/" + fileNewName);	           
	            FileInputStream fis = new FileInputStream(getUpload());
	            byte[] buffer = new byte[1024];
	            int len = 0;
	            while ((len = fis.read(buffer)) > 0) {
	                fos.write(buffer, 0, len);
	            }
	        }
	        imagePath_look = imagePath + "/" + fileNewName;
	        image_smalllook = image_smallPath + "/" + fileNewName;
	        file_zip_look = file_zipPath + "/" + fileNewName;
	        
	        System.out.println(imagePath_look);
	        System.out.println(image_smalllook);
	        System.out.println(file_zip_look);

	        return SUCCESS;
	    }
	    /**
	     * 重命名文件
	     * 
	     * @param fileName
	     * @return
	     */
	    private String generateFileName(String fileName) {
	        DateFormat format = new SimpleDateFormat("yyMMddHHmmss");
	        String formatDate = format.format(new Date());

	        int random = new Random().nextInt(10000);

	        int position = fileName.lastIndexOf(".");
	        String extension = fileName.substring(position);

	        return formatDate + random + extension;
	    }

	    public File getUpload() {
	        return upload;
	    }

	    public void setUpload(File upload) {
	        this.upload = upload;
	    }

	    public String getUploadFileName() {
	        return uploadFileName;
	    }

	    public void setUploadFileName(String uploadFileName) {
	        this.uploadFileName = uploadFileName;
	    }

	    public String getUploadContentType() {
	        return uploadContentType;
	    }

	    public void setUploadContentType(String uploadContentType) {
	        this.uploadContentType = uploadContentType;
	    }

	    public String getImagePath() {
	        return ServletActionContext.getServletContext().getRealPath(imagePath);
	    }

	    public void setImagePath(String imagePath) {
	        this.imagePath = imagePath;
	    }

	    public String getImage_smallPath() {
	        return ServletActionContext.getServletContext().getRealPath(image_smallPath);
	    }

	    public void setImage_smallPath(String imageSmallPath) {
	        image_smallPath = imageSmallPath;
	    }

	    public String getFile_zipPath() {
	        return ServletActionContext.getServletContext().getRealPath(file_zipPath);
	    }

	    public void setFile_zipPath(String fileZipPath) {
	        file_zipPath = fileZipPath;
	    }

	    public String getImage_smalllook() {
	        return image_smalllook;
	    }

	    public void setImage_smalllook(String imageSmalllook) {
	        image_smalllook = imageSmalllook;
	    }

	    public String getImagePath_look() {
	        return imagePath_look;
	    }

	    public void setImagePath_look(String imagePathLook) {
	        imagePath_look = imagePathLook;
	    }

	    public String getFile_zip_look() {
	        return file_zip_look;
	    }

	    public void setFile_zip_look(String fileZipLook) {
	        file_zip_look = fileZipLook;
	    }

}
