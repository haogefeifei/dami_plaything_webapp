package com.demo.admin;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;
import javax.annotation.Resource;
import com.demo.entity.Product;
import com.demo.entity.Psort;
import com.demo.service.ProductServiceInf;
import com.demo.util.DwindlePic;
import com.demo.util.Page;
import com.demo.util.Result;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;


/**
 * 管理员页面
 * @author FeiFei
 */
@Controller("AdminHomeAction")
public class AdminHomeAction implements Action {

	
	@Resource(name="ProductServiceImpl")
	private ProductServiceInf productservice;	
	private List<Psort> psort ; // 商品分类集合
	private Product newproduct ;//要新增的商品
	private int currentPage;			//当前页
	private Page page;
	private List<Product> ps; //商品集合
	private int pid ;
	//上传文件集合    
	@SuppressWarnings("unused")
	private static final long serialVersionUID = -8204063374280945416L;
    private List<File>upload;// 路径
    private List<String> uploadFileName; //文件名
    private List<String> uploadContentType;	//文件路径
    private String imageMainPath;//配置展示图路径
    private String imagePath;// 配置图片路径
    private String image_smallPath;// 配置小图片路径
    private String file_zipPath;// 配置文件路径
    private static final int MaxCurrent = 20 ;
	private String pname; //搜索
	/**
	 * 添加商品，上传商品图片
	 * @return
	 * @throws Exception
	 */
	public String addProduct() throws Exception {
		
		 if(upload == null){
			 System.out.println("文件为空！");
		 }
		
		 String imgUrl = ""; //存进数据库的大图地址
		 String imgsamllUrl = "";//存进数据库的小图地址
		 
		List<String> uploadName = getUploadContentType();
		for (int i = 0; i < upload.size(); i++) {			
			// FileUtils.copyFile(doc, target);
			 File imagemain = new File(getImageMainPath());
		      if (!imagemain.exists()) {
		    	  imagemain.mkdir();
		     }
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
	        
	        //System.out.println(i + "次"+upload.get(i));
			//System.out.println("文件类型："+uploadName.get(i));
			
			String lastuploadName = ""; //文件类型
			String fileNewName = ""; //文件新名称
	      //如果是展示图
			if(i==0){
				lastuploadName = uploadName.get(i).substring(uploadName.get(i).indexOf("/") + 1, uploadName.get(i).length());
				//System.out.println(lastuploadName);
				// 得到文件的新名字
				fileNewName = generateFileName(getUploadFileName().get(i));
				
				newproduct.setPimg("http://127.0.0.1:8080/DaMi3"+imageMainPath+"/" + fileNewName);//存储展示图片
				if (lastuploadName.equals("jpeg")) {
					
					// 创建文件
					FileOutputStream fos = new FileOutputStream(getImagePath() + "/" + fileNewName);
					FileInputStream fis = new FileInputStream(getUpload().get(i));
					byte[] buffer = new byte[1024];
					int len = 0;
					while ((len = fis.read(buffer)) > 0) {
	                fos.write(buffer, 0, len);
					}
					
					DwindlePic mypic = new DwindlePic();
					// s_pic(大图片路径,生成小图片路径,大图片文件名,生成小图片文名,生成小图片宽度,生成小图片高度)
					mypic.s_pic(getImagePath() + "/", getImageMainPath() + "/", fileNewName, fileNewName, 180, 180, true);
					//关闭下流吧......
					fos.close();
					fis.close();
				} else {
					//System.out.println("其他类型文件");
					// 创建文件
					FileOutputStream fos = new FileOutputStream(getFile_zipPath() + "/" + fileNewName);	           
					FileInputStream fis = new FileInputStream(getUpload().get(i));
					byte[] buffer = new byte[1024];
					int len = 0;
					while ((len = fis.read(buffer)) > 0) {
						fos.write(buffer, 0, len);
					}
					//关闭文件流.
					fos.close();
					fis.close();
	        }
				
			}
			//否则就是商品图
			else{
				lastuploadName = uploadName.get(i).substring(uploadName.get(i).indexOf("/") + 1, uploadName.get(i).length());
				//System.out.println(lastuploadName);
				// 得到文件的新名字
				fileNewName = generateFileName(getUploadFileName().get(i));
				if (lastuploadName.equals("jpeg")) {
					
					// 创建文件
					FileOutputStream fos = new FileOutputStream(getImagePath() + "/" + fileNewName);
					FileInputStream fis = new FileInputStream(getUpload().get(i));
					byte[] buffer = new byte[1024];
					int len = 0;
					while ((len = fis.read(buffer)) > 0) {
	                fos.write(buffer, 0, len);
					}
					DwindlePic mypic = new DwindlePic();
					// s_pic(大图片路径,生成小图片路径,大图片文件名,生成小图片文名,生成小图片宽度,生成小图片高度)
					mypic.s_pic(getImagePath() + "/", getImage_smallPath() + "/", fileNewName, fileNewName, 60, 60, true);
	            
					//关闭下流吧......
					fos.close();
					fis.close();
				} else {
					System.out.println("其他类型文件");
					// 创建文件
					FileOutputStream fos = new FileOutputStream(getFile_zipPath() + "/" + fileNewName);	           
					FileInputStream fis = new FileInputStream(getUpload().get(i));
					byte[] buffer = new byte[1024];
					int len = 0;
					while ((len = fis.read(buffer)) > 0) {
						fos.write(buffer, 0, len);
					}
					//关闭文件流.
					fos.close();
					fis.close();
	        }
			
	        imgUrl += "#http://127.0.0.1:8080/DaMi3"+imagePath+"/" + fileNewName; //累加大图地址
	        imgsamllUrl += "#http://127.0.0.1:8080/DaMi3"+image_smallPath+"/" + fileNewName; //累加小图地址

			}
		}
		newproduct.setPimgbig(imgUrl);
		newproduct.setPimgsmall(imgsamllUrl);
//		System.out.println("大图地址" + imgUrl);
//		System.out.println("小图地址" + imgsamllUrl);

		productservice.insert(newproduct);
		
		return showProductList();
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
	
	/**
	 * 进入商品添加页面，加载商品分类
	 * @return
	 * @throws Exception
	 */
	public String showAddProduct() throws Exception {
		//加载商品分类
		psort = productservice.findAllPsort();		
//		for(Psort p : psort ){
//			System.out.println(p.getSort());
//		}
		
		return SUCCESS;
	}
	
	/**
	 * 进入商品管理.  加载商品列表
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String showProductList() throws Exception{
		
		pid = 0 ; //清空分类查询结果
		pname = null; //清空搜索结果
		Page newPage = new Page();				//设置分页信息
		newPage.setCurrentPage(1);	//设置当前页
		newPage.setEveryPage(MaxCurrent);				//设置每页显示
		Result result = productservice.findAllCommodity(newPage);//获取查询结果
		page = result.getPage();		//获取分页信息
		ps = result.getList();	//获取商品信息列表
		psort = productservice.findAllPsort(); //获取所有商品分类
		
		
		return SUCCESS;
	}
	
	/**
	 * 分页模糊查询
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String findProductList() throws Exception{
		
		Page newPage = new Page();				//设置分页信息
		newPage.setCurrentPage(1);	//设置当前页为第一页
		newPage.setEveryPage(MaxCurrent);				//设置每页显示
		Result result = productservice.findByName(pname,newPage);//获取查询结果
		page = result.getPage();		//获取分页信息
		ps = result.getList();	//获取商品信息列表
		psort = productservice.findAllPsort(); //获取所有商品分类
		
		return SUCCESS;
	}
	
	
	
	public ProductServiceInf getProductservice() {
		return productservice;
	}
	public void setProductservice(ProductServiceInf productservice) {
		this.productservice = productservice;
	}
	public List<Psort> getPsort() {
		return psort;
	}
	public void setPsort(List<Psort> psort) {
		this.psort = psort;
	}
	public Product getNewproduct() {
		return newproduct;
	}
	public void setNewproduct(Product newproduct) {
		this.newproduct = newproduct;
	}
	public List<File> getUpload() {
		return upload;
	}
	public void setUpload(List<File> upload) {
		this.upload = upload;
	}
	public List<String> getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(List<String> uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public List<String> getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(List<String> uploadContentType) {
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
	public void setImage_smallPath(String image_smallPath) {
		this.image_smallPath = image_smallPath;
	}
	public String getFile_zipPath() {
		 return ServletActionContext.getServletContext().getRealPath(file_zipPath);
	}
	public void setFile_zipPath(String file_zipPath) {
		this.file_zipPath = file_zipPath;
	}
	public String getImageMainPath() {
	      return ServletActionContext.getServletContext().getRealPath(imageMainPath);
	}
	public void setImageMainPath(String imageMainPath) {
		this.imageMainPath = imageMainPath;
	}

	@Override
	public String execute() throws Exception {
		
		System.out.println("默认方法~");
		
		return null;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<Product> getPs() {
		return ps;
	}

	public void setPs(List<Product> ps) {
		this.ps = ps;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public static int getMaxcurrent() {
		return MaxCurrent;
	}

	

	

}
