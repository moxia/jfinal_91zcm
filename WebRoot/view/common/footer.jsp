<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglibs.jsp"%>
<tr id="footer">
 <td colspan="2">
 <form action="${ctx }/search" style="margin-top: 30px;">
   <span class="search"><input type="text" class="word" name="word" value="${word }"/></span>
   <span><input class="searchBtn" type="submit" value="搜 索"/></span>
   <span class="s_help">&nbsp;&nbsp;&nbsp;
       <a href="${ctx }/tags.html" title="Tag列表">Tag列表</a>&nbsp;&nbsp;
	   <a href="${ctx }/sitemap.html" title="网站地图">网站地图</a>&nbsp;&nbsp;
	   <a href="${ctx }/rss.xml" title="XML地图">XML地图</a>&nbsp;&nbsp;
   </span>
 </form>
 </td>
</tr>
<tr>
 <td colspan="2" align="center" height="40px">© Java日志(<a href="http://www.javalog.cn/" title="Java基础、框架、周边技术">javalog.cn</a>)</td>
</tr>