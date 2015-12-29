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
    * ��ʾ���е���Ƹ��Ϣ
    */
   public void showList(){
	 List<JobInfo> list=JobInfo.jobinfo.showJobInfoList();
	 System.out.println(list.get(0).getStr("office"));
	 setAttr("list", list);
	  render("job_info.jsp");
   }
   /**
    * ������ת��������Ϣҳ��
    */
   public void showEdit(){ 
	  
	   render("job_info_eidt.jsp");
   }
   
   /**
 * ��Ƹ��Ϣ����
 */
public void saveJobInfo(){
	   JobInfo job=this.getModel(JobInfo.class);
	   JobInfo.jobinfo.saveJobInfo(job);
	   /*renderText("����ɹ�");*/
	   redirect("/job/showList");
   }
   /**
   * releaseJobInfoʵ�ַ�������
   */
public void releaseJobInfo(){
	   Integer id=this.getParaToInt("id");
	   if(JobInfo.jobinfo.updateRelateDate(id)){
		   /*renderText("�����ɹ�");*/
		   redirect("/job/showList");
	   }else{
		  /* renderText("����ʧ��");*/
		   redirect("/job/showList");
	   }
   }
public void DeleteJobInfo(){
	   Integer id=this.getParaToInt("id");
	   if(JobInfo.jobinfo.deleteJobInfo(id)){
		  /* renderText("ɾ���ɹ�");*/
		   redirect("/job/showList");
	   }else{
		   renderText("ɾ��ʧ��");
	   }
}
}
