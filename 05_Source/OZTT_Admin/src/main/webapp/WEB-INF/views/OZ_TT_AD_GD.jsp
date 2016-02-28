<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title><fmt:message key="OZ_TT_AD_GD_title" /></title>
  
  <script type="text/javascript">
	
  	function back(){
  		location.href= "${pageContext.request.contextPath}/OZ_TT_AD_GL/init";
  	}
  	
  	function saveGoods(){
  		if (!validateForm()) return;
  		var targetForm = document.forms['olForm'];
		targetForm.action = "${pageContext.request.contextPath}/OZ_TT_AD_GD/save";
		targetForm.method = "POST";
		targetForm.submit();
  	}
  	
	var E0002 = '<fmt:message key="E0002" />';
  	function validateForm(){
		
	}
  </script>
</head>
<body>
	<!-- BEGIN CONTENT -->

	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN PAGE HEADER-->
			<div class="row">
				<div class="col-md-12">
					<ul class="page-breadcrumb breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="#">
								<fmt:message key="COMMON_HOME" />
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">
								<fmt:message key="OZ_TT_AD_MN_goods" />
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">
								<fmt:message key="OZ_TT_AD_GD_title" />
							</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<form:form cssClass="form-horizontal" action="" method="post" id="olForm" modelAttribute="itemDto" commandName="itemDto" role="form">
			<div class="form-body">
				<div class="form-group">
					<label class="col-md-1 control-label textleft"><fmt:message key="OZ_TT_AD_GD_className" /></label>
					<div class="col-md-3">
						<form:input type="text" path="className" class="form-control" maxlength="50"></form:input>
					</div>					
					<div class="col-md-8"></div>
				</div>
				<div class="form-group">
					<label class="col-md-1 control-label textleft"><fmt:message key="OZ_TT_AD_CD_order" /></label>
					<div class="col-md-3">
						<form:input type="number" path="sortOrder" class="form-control" maxlength="8"></form:input>
					</div>					
					<div class="col-md-8"></div>
				</div>
				<div class="form-group">
					<label class="col-md-1 control-label textleft"><fmt:message key="OZ_TT_AD_CD_openFlag" /></label>
					<div class="col-md-3">
						<label><fmt:message key="OZ_TT_AD_CD_open" /></label>
						<form:radiobutton path="openFlg" class="form-control" value="0"></form:radiobutton>
						<label><fmt:message key="OZ_TT_AD_CD_notopen" /></label>
						<form:radiobutton path="openFlg" class="form-control" value="1"></form:radiobutton>
					</div>					
					<div class="col-md-8"></div>
				</div>
			</div>
			
			<h4 class="form-section"></h4>
			<div class="col-md-6 textleft">
					<button type="button" class="btn green mybtn" onclick="saveGoods()">
						<i class="fa fa-save"></i>&nbsp;<fmt:message key="COMMON_SAVE" />
					</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn green mybtn" onclick="back()">
						<i class="fa fa-reply"></i>&nbsp;<fmt:message key="COMMON_BACK" />
					</button>
			</div>
			
			<form:input path="no" type="hidden"/>
			<form:input path="pageNo" type="hidden"/>
			</form:form>
			
			
		</div>
	</div>
	<!-- END CONTENT -->
</body>
</html>