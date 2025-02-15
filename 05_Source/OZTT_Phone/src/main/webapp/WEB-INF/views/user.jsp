<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title><fmt:message key="USER_TITLE"/></title>
  <script type="text/javascript">
  	$(function(){
  		
  		$(".fangle").click(function(){
  			if ($(this).find("i").hasClass('fa-angle-right')) {
  				$(this).find("i").removeClass('fa-angle-right');
  				$(this).find("i").addClass('fa-angle-down');
  				$(this).next('div').css('display','')
  			} else {
  				$(this).find("i").addClass('fa-angle-right');
  				$(this).find("i").removeClass('fa-angle-down');
  				$(this).next('div').css('display','none')
  			}
  		});
  	});
  	
  	
  	function manageAddress(){
  		if ('${currentUserId}' == '') {
			location.href = "${ctx}/login/init";
		} else {
			location.href = "${ctx}/addressIDUS/list";
		}
  	}
  	
  	function changeLocale(local) {
		$.ajax({
			type : "GET",
			contentType:'application/json',
			url : '${pageContext.request.contextPath}/COMMON/changeLocale?local='+local,
			dataType : "json",
			async:false,
			data : '', 
			success : function(data) {
			},
			error : function(data) {
				
			}
		});
		window.location.reload();
	}
  
  </script>
</head>
<!-- Head END -->


<!-- Body BEGIN -->
<body>
	<div class="x-header x-header-gray border-1px-bottom">
		<div class="x-header-title">
			<span><fmt:message key="USER_TITLE"/></span>
		</div>
	</div>
	
	<div class="profile">
		<c:if test="${currentUserId == null || currentUserId == ''}">
		<a href="../login/init">	
		<div class="profile-content">
		<div class="avatar">
			<div class="avatar-img"></div>
		</div>
		<div class="profile-info">
			<span class="login"><fmt:message key="USER_LOGIN_REGISTER"/></span>
			<span class="welcomeword"><fmt:message key="USER_WELCOME_WORD"/></span>
		</div>
		</div>
		</a>
		</c:if>
		<c:if test="${currentUserId != null && currentUserId != ''}">
			<div class="showusername">
				<span >${currentUserName}</span>
			</div>
			
		</c:if>
		
	</div>
	
	<div class="order p-item">
		<a href="${ctx}/order?tab=0" class="p-link padding-1rem-top">
			<div class="myorder"><fmt:message key="USER_MYORDER"/></div>
			<div class="viewallorder"><fmt:message key="USER_SEEALLORDER"/>&nbsp;<i class="fa fa-angle-right"></i></div>
		</a>
		<div class="order-nav padding-1rem-top">
			<a href="${ctx}/order?tab=0">
				<i class="await-pays"></i>
				<div><fmt:message key="USER_ORDER_NOTPAY"/></div>
			</a>
			<a href="${ctx}/order?tab=1">
				<i class="await-ship"></i>
				<div><fmt:message key="USER_ORDER_NOTOVER"/></div>
			</a>
			<a href="${ctx}/order?tab=3">
				<i class="await_received"></i>
				<div><fmt:message key="USER_ORDER_OVER"/></div>
			</a>
		</div>
	</div>
	
	<div class="order p-item user-item">
		<a onclick="manageAddress()" class="adsmana padding-1rem-top">
			<div class="content"><fmt:message key="USER_ADS_MANAGER"/></div>
			<i class="fa fa-angle-right"></i>
		</a>
	</div>
	
	<div class="order p-item">
		<a href="#" class="fangle padding-1rem-top">
			<div class="content"><fmt:message key="USER_CONTENT"/></div>
			<i class="fa fa-angle-right"></i>
		</a>
		
		<div style="display:none" class="downContent">
			<fmt:message key="USER_CONTENT_INFO"/>
		</div>
	</div>
	
	<div class="order p-item">
		<a href="#" class="fangle padding-1rem-top">
			<div class="content"><fmt:message key="USER_OTHERCOOPERATE"/></div>
			<i class="fa fa-angle-right"></i>
		</a>
		
		<div style="display:none" class="downContent">
			<fmt:message key="USER_OTHERCOOPERATE_INFO"/>
		</div>
	</div>
	
	<div class="order p-item">
		<a href="#" class="fangle padding-1rem-top">
			<div class="content"><fmt:message key="USER_ABOUT"/></div>
			<i class="fa fa-angle-right"></i>
		</a>
		
		<div style="display:none" class="downContent">
			<fmt:message key="USER_ABOUT_INFO"/>
		</div>
	</div>
	
	<div class="order p-item">
		<a href="#" class="fangle padding-1rem-top">
			<div class="content"><fmt:message key="USER_LANGUAGECHANGE"/></div>
			<div class="user-language">
				<img alt="cn" src="${ctx}/images/cn.png" onclick="changeLocale('zh')">
				<img alt="us" src="${ctx}/images/us.png" onclick="changeLocale('en')">
			</div>
		</a>
	</div>
</body>
<!-- END BODY -->
</html>