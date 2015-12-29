package admin.controller;

import java.util.List;

import com.jfinal.core.Controller;

import admin.model.JobInfo;
/**
 * @author shitao
 * @date 2015-12-24 
 */

public class JobController extends Controller {
   /**
    * 显示所有的招聘信息
    */
   public void showList(){
	 List<JobInfo> list=JobInfo.jobinfo.showJobInfoList();
	 System.out.println(list.get(0).getStr("office"));
	 setAttr("list", list);
	  render("job_info.jsp");
   }
   /**
    * 控制跳转到保存信息页面
    */
   public void showEdit(){ 
	  
	   render("job_info_eidt.jsp");
   }
   
   /**
 * 招聘信息保存
 */
public void saveJobInfo(){
	   JobInfo job=this.getModel(JobInfo.class);
	   JobInfo.jobinfo.saveJobInfo(job);
	   /*renderText("保存成功");*/
	   redirect("/job/showList");
   }
   /**
   * releaseJobInfo实现发布功能
   */
public void releaseJobInfo(){
	   Integer id=this.getParaToInt("id");
	   if(JobInfo.jobinfo.updateRelateDate(id)){
		   /*renderText("发布成功");*/
		   redirect("/job/showList");
	   }else{
		  /* renderText("发布失败");*/
		   redirect("/job/showList");
	   }
   }
public void DeleteJobInfo(){
	   Integer id=this.getParaToInt("id");
	   if(JobInfo.jobinfo.deleteJobInfo(id)){
		  /* renderText("删除成功");*/
		   redirect("/job/showList");
	   }else{
		   renderText("删除失败");
	   }
}
}
