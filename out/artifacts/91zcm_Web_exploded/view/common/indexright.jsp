<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglibs.jsp"%>
<td id="right">
    <div id="about_me">
	  <table>
	    <tr><td><a href="${ctx }/special.html" title="注册码专题"><img src="${images_ctx }/special.gif" alt="注册码专题" style="border: 1px solid #FAFAFA;"/></a></td></tr>
	    <tr><td class="domain"><h2>www.91zcm.com</h2></td></tr>
		<tr><td><span class="me_more">91注册码旨在为广大网友分享软件注册码、序列号、激活码、VIP账号、优惠码等信息！</span></td></tr>
	  </table>
	</div>
	<div class="clear"></div>
    <div id="right_top">
     <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- 91zcm_right_001 -->
		<ins class="adsbygoogle"
		     style="display:inline-block;width:160px;height:600px"
		     data-ad-client="ca-pub-3712320065678109"
		     data-ad-slot="7330258769"></ins>
		<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
	 </script>
    </div>
	<div class="clear"></div>
	<div id="right_bottom">
	 <div class="div1" id="float">
	    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- 91zcm_right_bottom_001 -->
		<ins class="adsbygoogle"
		     style="display:inline-block;width:200px;height:200px"
		     data-ad-client="ca-pub-3712320065678109"
		     data-ad-slot="1916180369"></ins>
		<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
	    </script>
     </div> 
	</div>
	<div class="clear"></div>
	<div id="links">
	  <table>
	    <tr><th>友情链接：</th></tr>
		<c:forEach items="${linkList}" var="links">
	      <tr><td><a href="${links.url }" title="${links.content }" target="_blank">${links.title }</a></td></tr>
	    </c:forEach>
	  </table>
	</div>
</td>