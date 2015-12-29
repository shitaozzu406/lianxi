<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>后台管理</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/base.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/sidenavigation.js"></script>
</head>
<body>
     <div class="admin-top">
          <h3>
             <img src="image/headerlogo.png">
             <small>人才招聘管理系统后台</small> 
             <a href="#" class="out pull-right">退出</a>
             <a href="#" class="user pull-right">admin,您好！</a>
             <div class="clear"></div>
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
                   <h5>招聘信息管理</h5>
              </div>
              <ul class="search-list">
                 <li><span>招聘岗位：</span><input type="text" class="input-text"></li>
                 <li><span>科室：</span><input type="text" class="input-text"></li>
                 <li><span>学历：</span>
                        <select class="select">
                            <option>本科</option>
                            <option>硕士</option>
                        </select>
                 </li>
                 <li><span>状态：</span>
                      <select class="select">
                            <option>录取</option>
                            <option>硕士</option>
                        </select>    
                 </li>
                 <li><span>发布日期：</span><input type="text" class="sum-text">-<input type="text" class="sum-text"></li>
                 <li><span>有效期：</span><input type="text" class="sum-text">-<input type="text" class="sum-text"></li>
                 <li><button class="btn-search"></button></li>
                 <div class="clear"></div>
              </ul>
              <!--招聘表格-->
              <div class="employment">
                   <div class="btn-group">
                        <a href="newrecruitment.html" class="btn">新增</a>
                        <button type="button" class="btn">删除</button>
                        <button type="button" class="btn">发布</button>
                   </div>
                   <div class="employmentinfo table-responsive">
                   <table class="table table-striped table-hover">
                         <thead>
                          <tr>
                             <th><span><div class="checkbox"><label><input type="checkbox"> 全选</label></div></span></th>
                             <th><span>招聘岗位</span></th>
                             <th><span>科室</span></th>
                             <th><span>学历</span></th>
                             <th><span>发布日期</span></th>
                             <th><span>有效日期</span></th>
                             <th><span>状态</span></th>
                             <th><span>已求职人数</span></th>
                             <th><span style="border-right:0;">操作</span></th>
                          </tr>
                         </thead>
                         <tbody>
                        <c:forEach items="${list}" var="list">
                          <tr>
                             <td><div class="checkbox"><label><input type="checkbox"></label></div></td>
                             <td><a href="recruitmentinformation.html">${list.office}</a></td>
                             <td>${list.department}</td>
                             <td>
                             <c:if test="${list.degree==0}">
                                <c:out value="大专"/>
                              </c:if>
                               <c:if test="${list.degree==1}">
                                <c:out value="本科"/>
                              </c:if>
                              <c:if test="${list.degree==2}">
                                <c:out value="硕士以上"/>
                              </c:if>
                             </td>
                             <td>${list.releasedate}</td>
                             <td>${list.validDate}</td>
                             <td><span class="save">
                             <c:if test="${list.state==0}">
                                <c:out value="已保存"/>
                              </c:if>
                              <c:if test="${list.state==1}">
                                <c:out value="已发布"/>
                              </c:if>
                              
                               </span></td>
                             <td>${list.needCount}</td>
                             <td><a href="#" class="btn btn-link">编辑</a> <a href="/job/DeleteJobInfo?id=${list.id}" class="btn btn-link">删除</a>  <a href="/job/releaseJobInfo?id=${list.id}" class="btn btn-link">发布</a></td>
                          </tr>
                         </c:forEach>
                       </tbody>
                   </table>
                   </div>
                   
                   <div  style="text-align:center; padding:20px 0;">
                        <div class="pagingbar">
                            <cite class="bora"><a>首页</a><a>上一页</a><a class="selected">1</a><a>2</a><a>3</a><a>...</a><a>10</a><a>下一页</a><span>尾页</span></cite>
                        </div>
                   </div>
              </div><!--招聘表格-->
              
         </div>
    </div>
</body>
</html>