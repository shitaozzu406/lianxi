<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme() + "://" 
+ request.getServerName() + ":" + request.getServerPort() 
+ path + "/"; 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"> 

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增招聘信息</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/base.css"/>
<!-- <script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/sidenavigation.js"></script> -->
</head>
<body>

     <div class="admin-top">
          <h3>
             <img src="image/headerlogo.png">
             <small>人才招聘管理系统后台</small> 
             <a href="#" class="out pull-right">退出</a>
             <a href="#" class="user pull-right">admin,您好！</a>
             
          </h3>
     </div>
     <!-- 导航-->
     <div class="conent">
         <!--侧边导航-->
         <div class="side pull-left" >
             <div id="firstpane" class="menu_list">
			      <p class="menu_head current"><a href="JavaScript:;"><span>招聘信息管理</span><em></em></a></p>
                    <div class="menu_body ">
                        <a href="admin.html" class="submenu" >招聘信息管理</a>
                        <a href="newrecruitment.html" class="submenu" >新增招聘信息</a>
                        <a href="recruitmentinformation.html"  class="submenu" >招聘信息详情</a>
                    </div>
			
			      <p class="menu_head"><a href="JavaScript:;"><span>简历模板管理</span><em></em></a></p>
                    <div class="menu_body">
                        <a href="templateManagement.html" class="submenu">简历模板管理</a>
                        <a href="masterModle.html" class="submenu">硕士模板</a>
                        <a href="collegeModle.html" class="submenu">本科/大专模板</a>
                        <a href="masterModlePreview.html" class="submenu">硕士模板预览</a>
                        <a href="collegeModlePreview.html" class="submenu">本科/大专模板预览</a>
                        <a href="newExpansion.html" class="submenu">新增扩展项</a>
                    </div>
			
			      <p class="menu_head"><a href="JavaScript:;"><span>求职管理</span><em></em></a></p>
                    <div class="menu_body">
                        <a href="applyManage.html" class="submenu">求职管理</a>
                        <a href="resume.html" class="submenu">求职简历</a>
                    </div>
                  <p class="menu_head"><a href="Notice.html"><span>通知公告</span><em></em></a></p>
                  <p class="menu_head"><a href="userManage.html"><span>用户管理</span><em></em></a></p>
		     </div>
         </div>
         <!--main-->
         <div class="main pull-left">
              <div class="title">
                   <h5>新增招聘信息</h5>
              </div>
              <!-- 新增招聘信息-->
              <form action="/job/saveJobInfo" method="post">
              <div class="add-info">
                   <table class="add-form">
                       <tr>
                          <th>招聘岗位：</th>
                          <td><input type="text" class="input-text" name="jobInfo.office"><em>*</em></td>
                          <th>招聘人数：</th>
                          <td><input type="text" class="input-text" name="jobInfo.needCount"><em>*</em></td>
                       </tr>
                       <tr>
                          <th>学 历：</th>
                          <td>
                              <select class="select" name="jobInfo.degree">
                                  option value="0">大专</option>
                                   <option value="1">本科</option>
                                   <option value="2">硕士</option>
                              </select><em>*</em></td>
                          <th>科 室：</th>
                          <td><input type="text" class="input-text" name="jobInfo.department"><em></em></td>
                       </tr>
                       <tr>
                          <th>月 薪：</th>
                          <td><input type="text" class="input-text" name="jobInfo.salary"> 元<em>0表示面议</em></td>
                          <th>有效日期：</th>
                          <td><input type="text" class="input-text" name="jobInfo.validDate"><em>*</em></td>
                       </tr>
                       <tr>
                          <th>模 板：</th>
                          <td><select class="select" name="jobInfo.templateId">
                                   <option value="0">大专模板</option>
                                   <option value="1">本科模板</option>
                                   <option value="2">硕士模板</option>
                              </select><a href="#" class="btn btn-primary">预览</a></td>
                          <th></th>
                          <td></td>
                       </tr>
                       <tr>
                          <th>招聘说明：</th>
                          <td colspan="3"><textarea class="area" name="jobInfo.description">
                             </textarea ><em>*</em></td>
                       </tr>
                       <tr>
                          <th >
                              
                          </th>
                          <td colspan="3"><div class="btn-group">
                                    <button type="submit" class="btn">新增</button>
                                    <button type="button" class="btn btn-default">删除</button>
                                    <button type="button" class="btn btn-default">发布</button>
                               </div></td>
                       </tr>
                   </table>
              </div>
            </form>
         </div>
    </div>
</body>
</html>
