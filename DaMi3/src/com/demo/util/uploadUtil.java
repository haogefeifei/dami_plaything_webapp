package com.demo.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

/**
 * 修改图片工具类
 * @author FeiFei
 *
 */
public class uploadUtil {

    private final static String imagePath="/image";// 配置图片路径
    private final static String image_smallPath="/image_small";// 配置小图片路径
    private final static String file_zipPath="/file";// 配置文件路径
    @SuppressWarnings({ "resource", "unused", "deprecation" })
	public String uploadImage(HttpServletRequest request, File getUpload, String getUploadContentType,
            String getUploadFileName) throws IOException {
        String getImagePath = request.getRealPath(imagePath);
        String getImage_smallPath = request.getRealPath(image_smallPath);

        File image = new File(getImagePath);
        if (!image.exists()) {
            image.mkdir();
        }
        File image_small = new File(getImage_smallPath);
        if (!image_small.exists()) {
            image_small.mkdir();
        }
        // 得到上传文件的后缀名
        String uploadName = getUploadContentType;
        String lastuploadName = uploadName.substring(uploadName.indexOf("/") + 1, uploadName.length());
        // 得到文件的新名字
        String fileNewName = generateFileName(getUploadFileName);

        FileOutputStream fos = new FileOutputStream(getImagePath + "/" + fileNewName);
        FileInputStream fis = new FileInputStream(getUpload);
        byte[] buffer = new byte[1024];
        int len = 0;
        while ((len = fis.read(buffer)) > 0) {
            fos.write(buffer, 0, len);
        }
        DwindlePic mypic = new DwindlePic();
        // s_pic(大图片路径,生成小图片路径,大图片文件名,生成小图片文名,生成小图片宽度,生成小图片高度)
        mypic.s_pic(getImagePath + "/", getImage_smallPath + "/", fileNewName, fileNewName, 120, 80, true);

        return imagePath + "/" + fileNewName;

    }

    @SuppressWarnings({ "resource", "unused", "static-access" })
	public String uploadfile(ServletActionContext context,File getUpload, String getUploadContentType,
            String getUploadFileName) throws IOException {
        
        String getFile_zipPath = context.getServletContext().getRealPath(file_zipPath);
        File file_zip = new File(getFile_zipPath);
        if (!file_zip.exists()) {
            file_zip.mkdir();
        }
        // 得到上传文件的后缀名
        String uploadName = getUploadContentType;
        String lastuploadName = uploadName.substring(uploadName.indexOf("/") + 1, uploadName.length());
        // 得到文件的新名字
        String fileNewName = generateFileName(getUploadFileName);
        // 创建文件
        FileOutputStream fos = new FileOutputStream(getFile_zipPath + "/" + fileNewName);
        FileInputStream fis = new FileInputStream(getUpload);
        byte[] buffer = new byte[1024];
        int len = 0;
        while ((len = fis.read(buffer)) > 0) {
            fos.write(buffer, 0, len);
        }
        return file_zipPath + "/" + fileNewName;

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
}