<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login page</title>
<!-- Base Bootstrap and jquery packages -->
<script	src="${pageContext.request.contextPath}/static/plugins/jquery/jquery.min.js"></script>
<script	src="${pageContext.request.contextPath}/static/plugins/jquery/popper.min.js"></script>
<link rel="stylesheet"	href="${pageContext.request.contextPath}/static/plugins/bootstrap/css/bootstrap.min.css">
<script	src="${pageContext.request.contextPath}/static/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- font-awesome -->
<link rel="stylesheet"	href="./static/plugins/font-awesome/css/all.min.css" />
<link rel="icon" type="image/png"	href="./static/images/icons/favicon.ico" />
<!-- importing jquery validation -->
<script	src="${pageContext.request.contextPath}/static/plugins/jquery-validation/jquery.validate.min.js"></script>
<!-- for adding sha512 for password conversation -->
<script	src="${pageContext.request.contextPath}/static/plugins/sha512/sha512.js"></script>
<!-- Overlay Loader -->
<script	src="${pageContext.request.contextPath}/static/plugins/overlay-loader/loadingoverlay.min.js"></script>
<!-- sweetalert2 -->
<script	src="${pageContext.request.contextPath}/static/plugins/sweetalert2/sweetalert2@9.js"></script>

<script	src="${pageContext.request.contextPath}/static/customJs/purge.js"></script>
</head>
<body>
	<div class="container-fluid" style="margin-top: 1%">
		<ul class="nav nav-tabs" role="tablist">
			<li class="nav-item"><a class="nav-link active" href="#domain" role="tab" data-toggle="tab" id="domain_tab">Domain</a></li>
			<li class="nav-item"><a class="nav-link" href="#url" role="tab"	data-toggle="tab" id="url_tab">URL</a></li>
		</ul>

		<div class="tab-content">
		<!-- Domain -->
			<div role="tabpanel" class="tab-pane in active" id="domain">
				<div class="container-fluid">
					<form>
					  <div class="form-group">
					    <label for="domain_txt_area"><span style="color: red">*</span></label>Enter Domains below in new lines
					    <textarea class="form-control" style="border: 2px solid;" id="domain_txt_area" rows="3" placeholder="Enter Domains"></textarea>
					  </div>
					  <button type="button" id="domain_purge" class="btn btn-success">Submit</button>
					</form>
				</div>
			</div>
			
			<!-- URL -->
			<div role="tabpanel" class="tab-pane fade in" id="url">
				<div class="container-fluid">
					<form>
					  <div class="form-group">
					    <label for="url_txt_area"><span style="color: red">*</span></label>Enter URLs below in new lines
					    <textarea class="form-control" style="border: 2px solid;" id="url_txt_area" rows="3" placeholder="Enter URLs"></textarea>
					  </div>
					  <button type="button" class="btn btn-success" id="url_purge">Submit</button>
					</form>
				</div>
			</div>
			
			<div class="container" id="error_details" style="font-size: 20px;">
				
			</div>
			
		</div>
		
	</div>

	<script>
		/* to remove all resources stored in local storage while logout */
		localStorage.clear();
	</script>
</body>
</html>