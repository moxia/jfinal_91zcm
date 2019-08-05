<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="x-ua-compatible" content="ie=7" />
<link href="${ctx }/favicon.ico" rel="shortcut icon"/>
<title>Tags - ${config.title }<c:if test="${pageList.pageNumber gt 1}"> - 第${pageList.pageNumber }页</c:if></title>
<meta name="keywords" content="${config.keywords }"/>
<meta name="description" content="${config.description }"/>
<link href="${css_ctx }/91zcm.css" rel="stylesheet"/> 
</head>
<body>
  <table id="container">
    <tr id="header">
     <jsp:include page="common/share.jsp"/>
	 <td colspan="2">
	    <table class="top">
		 <tr class="menu">
		   <td>
		     <table class="nav">
			  <tr>
			   <th class="logoth"><h2><a href="${ctx }/">91注册码</a></h2></th>
			   <c:forEach items="${menuList}" var="menu">
			     <td><h3><a href="${ctx }/${menu.url }.html" title="${menu.cname }" target="_self">${menu.cname }</a></h3></td>
			   </c:forEach>
			  </tr>
			 </table>
		   </td>
		 </tr>
		 <tr><td><jsp:include page="common/indexsearch.jsp"/></td></tr>
		</table>
	 </td>
	</tr>
	<tr id="content">
	 <td id="left">
	   <div class="page_ad">
	    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<!-- 91zcm_article_bottom_001 -->
			<ins class="adsbygoogle"
			     style="display:inline-block;width:600px;height:50px"
			     data-ad-client="ca-pub-3712320065678109"
			     data-ad-slot="1283725160"></ins>
			<script>
			(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
	   </div>
	   <div class="tags">
	     <ul>
	      <c:forEach items="${pageList.list}" var="tag">
	       <li class="tagsLi"><a href="${ctx }/search?word=${tag.tname}" title="搜索:${tag.tname}">${tag.tname}</a></li>
	      </c:forEach>
	     </ul>
	   </div>
	   <div class="clear"></div>
	   <div class="page_ad">
	    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<!-- 91zcm_article_bottom_001 -->
			<ins class="adsbygoogle"
			     style="display:inline-block;width:600px;height:50px"
			     data-ad-client="ca-pub-3712320065678109"
			     data-ad-slot="1283725160"></ins>
			<script>
			(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
	   </div>
	   <div class="clear"></div>
	   <div class="page mb"><span>共${ pageList.totalRow}条数据 页次:${pageList.pageNumber }/${ pageList.totalPage}页</span>
		  <c:if test="${pageList.pageNumber ne 1}"><em><a href="${ctx}/tags.html">首页</a></em></c:if><c:if test="${pageList.pageNumber eq 1}"><em class="nolink">首页</em></c:if>
		  <c:if test="${pageList.pageNumber eq 1}"><em class="nolink">上一页</em></c:if><c:if test="${pageList.pageNumber ne 1}"><em><a href="${ctx}/tags/page/${pageList.pageNumber-1 }.html">上一页</a></em></c:if>
		  <c:forEach items="${pageNumList}" var="num">
		   <c:if test="${pageList.pageNumber eq num}"><em><strong style="width: 40px;"><span class="pc" >${num }</span></strong></em></c:if>
		   <c:if test="${pageList.pageNumber ne num}">
		     <em><a href="${ctx}/tags/page/${num }.html" style="width: 40px;"><span class="pc">${num }</span></a></em>
		   </c:if>
		  </c:forEach>
		  <c:if test="${pageList.pageNumber lt pageList.totalPage}"><em><a href="${ctx}/tags/page/${pageList.pageNumber+1 }.html">下一页</a></em></c:if><c:if test="${pageList.pageNumber eq pageList.totalPage}"><em class="nolink">下一页</em></c:if>
		  <c:if test="${pageList.pageNumber lt pageList.totalPage}"><em><a href="${ctx}/tags/page/${pageList.totalPage }.html">尾页</a></em></c:if><c:if test="${pageList.pageNumber eq pageList.totalPage}"><em class="nolink">尾页</em></c:if>
	   </div>
	   <div class="clear"></div>
	 </td>
	 <jsp:include page="common/searchright.jsp"/>
	</tr>
	<jsp:include page="common/footer.jsp"/>
  </table>
</body>
</html>
