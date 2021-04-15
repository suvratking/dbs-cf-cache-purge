<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login page</title>
<!-- Base Bootstrap and jquery packages -->
<script
	src="${pageContext.request.contextPath}/static/plugins/jquery/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/jquery/popper.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/bootstrap/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/static/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- font-awesome -->
<link rel="stylesheet"
	href="./static/plugins/font-awesome/css/all.min.css" />
<link rel="icon" type="image/png"
	href="./static/images/icons/favicon.ico" />
<!-- importing jquery validation -->
<script
	src="${pageContext.request.contextPath}/static/plugins/jquery-validation/jquery.validate.min.js"></script>
<!-- for adding sha512 for password conversation -->
<script
	src="${pageContext.request.contextPath}/static/plugins/sha512/sha512.js"></script>
<!-- Overlay Loader -->
<script
	src="${pageContext.request.contextPath}/static/plugins/overlay-loader/loadingoverlay.min.js"></script>
<!-- sweetalert2 -->
<script
	src="${pageContext.request.contextPath}/static/plugins/sweetalert2/sweetalert2@9.js"></script>
</head>
<body>
	<input type="hidden" value="${pageContext.request.contextPath}" id="pageContext">
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg navbar-light nav-tabs" style="background-color: #e8eaec!important;">
			<a class="navbar-brand" href="/dbs"><img alt="DBS LOGO"
				style="height: 50px; widows: 200px"
				src="${pageContext.request.contextPath}/static/images/icons/DBS_Bank_logo.png"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active">
						<a class="nav-link" href="/dbs/home">Purge<span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="/dbs/home">White Listing<span class="sr-only">(current)</span></a>
					</li>
					<!-- <li class="nav-item"><a class="nav-link" href="#">Features</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
					</li> -->
				</ul>
			</div>
		</nav>
	</div>

	<script>
		/* to remove all resources stored in local storage while logout */
		localStorage.clear();
	</script>
</body>
</html>