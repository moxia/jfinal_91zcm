<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>项目管理系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>
<link href="${css_ctx }/css.css" rel="stylesheet" type="text/css" />
<link href="${css_ctx }/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table id="mainpage" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="40" class="font42">
                <table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				  <tr>
                    <td height="20" colspan="5" align="center" bgcolor="#EEEEEE" class="tablestyle_title">文章评论</td>
                  </tr>
                  <tr>
                    <td width="10%" align="center" bgcolor="#EEEEEE">昵称</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">邮箱</td>
                    <td width="60%" align="center" bgcolor="#EEEEEE">内容</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">状态</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">操作</td>
                  </tr>
                  <c:if test="${empty pageList}">
                   <tr align="center">
                    <td bgcolor="#FFFFFF" colspan="5">没有找到相关评论！</td>
                  </tr>
                  </c:if>
                  <c:forEach items="${pageList.list}" var="gbook">
                  <tr align="left">
                    <td bgcolor="#FFFFFF">${gbook.nickname }</td>
                    <td bgcolor="#FFFFFF">${gbook.email }</td>
                    <td bgcolor="#FFFFFF">${gbook.content }</td>
                    <td bgcolor="#FFFFFF">
                     <c:if test="${gbook.state eq 0}"><font color="red">未审核</font></c:if>
                     <c:if test="${gbook.state eq 1}"><font color="green">审核通过</font></c:if>
                    </td>
                    <td bgcolor="#FFFFFF"><a href="${sysadmin_ctx }/getgbook?mid=${gbook.mid }">编辑</a>|<a href="${sysadmin_ctx }/delgbook?mid=${gbook.mid }">删除</a></td>
                  </tr>
                  </c:forEach>
                  <tr><td colspan="5" style="background-color: white;">
                  <span>共${ pageList.totalRow}条数据 页次:${pageList.pageNumber }/${ pageList.totalPage}页</span>
	  <em class="nolink">首页</em>
	  <c:if test="${pageList.pageNumber eq 1}"><em class="nolink">上一页</em></c:if><c:if test="${pageList.pageNumber ne 1}"><a href="${sysadmin_ctx}/listgbook/?page=${pageList.pageNumber-1 }">上一页</a></c:if>
	  <c:if test="${pageList.pageNumber lt pageList.totalPage}"><a href="${sysadmin_ctx}/listgbook/?page=${pageList.pageNumber+1 }">下一页</a></c:if><c:if test="${pageList.pageNumber eq pageList.totalPage}"><em class="nolink">下一页</em></c:if>
	  <c:if test="${pageList.pageNumber lt pageList.totalPage}"><a href="${sysadmin_ctx}/listgbook/?page=${pageList.pageNumber }">尾页</a></c:if><c:if test="${pageList.pageNumber eq pageList.totalPage}"><em class="nolink">尾页</em></c:if>
	  <span><input type="text" name="page" value="${pageList.pageNumber }" id="jump" size="4"/><input type="button" value="跳转" onclick="jump();" class="btn"/></span>
                  
                  </td></tr>
                </table>
                </td>
              </tr>
            </table></td>
        </tr>
      </table>
     </td>
  </tr>
</table>
<c:if test="${!empty msg }">
<script>
 alert("${msg}");
</script>
<c:remove var="msg"/>
</c:if>
</body>
</html>