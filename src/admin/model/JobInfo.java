package admin.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.jfinal.plugin.activerecord.Model;
@SuppressWarnings("serial")
public class JobInfo extends Model<JobInfo>{
    public static final JobInfo jobinfo=new JobInfo();
    public List<JobInfo> showJobInfoList(){
    	List<JobInfo> jobs=jobinfo.find("SELECT * FROM job_info_st");
    	
		return jobs;
    	
    }
    public boolean saveJobInfo(JobInfo job){
   

		return job.set("createTime",getDate()).set("state", 0).save();
    	
    }
    public boolean updateRelateDate(Integer id){
    	 
		return jobinfo.set("releasedate", getDate()).set("state", 1).set("id", id).update();
    	
    }
    public boolean deleteJobInfo(Integer id){
   	 
		return jobinfo.deleteById(id);
    	
    }
    public Date getDate(){
    	Date now = new Date(); 
    	Date time=null;
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		try {
			time=dateFormat.parse(dateFormat.format(now));
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return time;
    }
}
