<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> 
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<link href="./images/Emblem_of_India.png" rel="shortcut icon" title="Indian Emblem" />
<meta charset="UTF-8">
<title>DBS</title>
<c:set var="url">${pageContext.request.requestURL}</c:set>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<!-- for importing title icon -->
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/static/images/icons/favicon.ico"/>
	<!-- bootstrap -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/bootstrap/css/bootstrap.min.css" />
	<!-- font-awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/font-awesome/css/all.min.css" />
	<!-- jquery-confirm2 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/jquery-confirm-v3.3.4/jquery-confirm.min.css" />
	<!-- Bootstrap Datepicker -->
	<link href="${pageContext.request.contextPath}/static/plugins/bootstrap-datepicker/bootstrap-datepicker3.min.css" rel="stylesheet">
	<!-- Datatables -->
	<link href="${pageContext.request.contextPath}/static/plugins/jquery-datatable/bootstrap/dataTables.bootstrap4.min.css" rel="stylesheet">
	<!-- select2 bootstrap dropdown -->
	<link href="${pageContext.request.contextPath}/static/plugins/select2/select2.min.css" rel="stylesheet">
	<!-- build style sheet  -->
	<link href="${pageContext.request.contextPath}/static/customCss/baseStyle.css" rel="stylesheet">

	<!-- jquery -->
	<script src="${pageContext.request.contextPath}/static/plugins/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/plugins/jquery/popper.min.js"></script>
	
</head>
<body>
	<div><tiles:insertAttribute name="header"></tiles:insertAttribute></div>
	<div style="min-height: 463px;"><tiles:insertAttribute name="body"></tiles:insertAttribute></div>
	<div><%-- <tiles:insertAttribute name="footer"></tiles:insertAttribute> --%></div>

	<!-- bootstrap -->
	<script src="${pageContext.request.contextPath}/static/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- jquery-confirm2 -->
	<script src="${pageContext.request.contextPath}/static/plugins/jquery-confirm-v3.3.4/jquery-confirm.min.js"></script>
	<!-- sweetalert2 -->
	<script src="${pageContext.request.contextPath}/static/plugins/sweetalert2/sweetalert2@9.js"></script>
	<!-- jquery validation -->
	<script src="${pageContext.request.contextPath}/static/plugins/jquery-validation/jquery.validate.min.js"></script>
	<!-- overlay loader -->
	<script src="${pageContext.request.contextPath}/static/plugins/overlay-loader/loadingoverlay.min.js"></script>
	<!-- Bootstrap Datepicker -->
	<script src="${pageContext.request.contextPath}/static/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	<!-- Datatables -->
	<script src="${pageContext.request.contextPath}/static/plugins/jquery-datatable/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/plugins/jquery-datatable/bootstrap/dataTables.bootstrap4.min.js"></script>
	<!-- Select2 -->
	<script src="${pageContext.request.contextPath}/static/plugins/select2/select2.min.js"></script>
	<!-- for adding sha512 for password conversation -->
	<script src="${pageContext.request.contextPath}/static/plugins/sha512/sha512.js"></script>
	<script>
		/* display image after selection */
		let displayImage = (input, image, wid, hit) => {
	        if (input.files && input.files[0]) {
	            var reader = new FileReader();
	            reader.onload = function (e) {
	                $(image).attr('src', e.target.result)
	                .width(wid).height(hit);
	            };
	            reader.readAsDataURL(input.files[0]);
	        }
	    }

	</script>
</body>
</html>