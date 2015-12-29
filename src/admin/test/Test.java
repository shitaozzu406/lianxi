package admin.test;

import java.util.List;

import admin.model.JobInfo;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
     JobInfo j=new JobInfo();
     List<JobInfo> lists=j.jobinfo.showJobInfoList();
     System.out.println(lists.toString());
	}

}
