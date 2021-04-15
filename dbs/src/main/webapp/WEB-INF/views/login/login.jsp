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
	href="${pageContext.request.contextPath}/static/plugins/font-awesome/css/all.min.css" />
<!-- for importing title icon -->
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/static/images/icons/favicon.ico" />
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
<!-- importing custom login js file	 -->

<script	src="${pageContext.request.contextPath}/static/customJs/login.js"></script>
<style>
.form-group .error {
	color: red;
	font-size: 14px;
	font-variant: small-caps;
}
/* .align_center{
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top:8%;
} */
.align_center {
	display: flex;
	justify-content: flex-end;
	margin-top: 6%;
	align-items: center;
}

}
.card {
	border-radius: 40px;
	width: 37rem;
	height: 29rem;
	background-position: center;
	background-image:
		url(${pageContext.request.contextPath}/static/images/login/login2.png);
}

.text-white {
	margin-top: 7%;
	color: white;
	font-size: 20px;
}

.inputmail {
	border-top: none;
	border-right: none;
	border-left: none;
}

.aligncenter {
	text-align: center;
}

.loginBtn {
	width: 150px;
	border-radius: 30px;
	color: white;
	background: #4653bc;
}

.last {
	margin-top: 21px;
	font-size: 13px;
}

.alignright {
	text-align: right;
}





:root {
  --input-padding-x: 1.5rem;
  --input-padding-y: .75rem;
}

body {
  background: #007bff;
  background: linear-gradient(to right, #0062E6, #33AEFF);
}

.card-signin {
  border: 0;
  border-radius: 1rem;
  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
}

.card-signin .card-title {
  margin-bottom: 2rem;
  font-weight: 300;
  font-size: 1.5rem;
}

.card-signin .card-body {
  padding: 2rem;
}

.form-signin {
  width: 100%;
}

.form-signin .btn {
  font-size: 80%;
  border-radius: 5rem;
  letter-spacing: .1rem;
  font-weight: bold;
  padding: 1rem;
  transition: all 0.2s;
}

.form-label-group {
  position: relative;
  margin-bottom: 1rem;
}

.form-label-group input {
  height: auto;
  border-radius: 2rem;
}

.form-label-group>input,
.form-label-group>label {
  padding: var(--input-padding-y) var(--input-padding-x);
}

.form-label-group>label {
  position: absolute;
  top: 0;
  left: 0;
  display: block;
  width: 100%;
  margin-bottom: 0;
  /* Override default `<label>` margin */
  line-height: 1.5;
  color: #495057;
  border: 1px solid transparent;
  border-radius: .25rem;
  transition: all .1s ease-in-out;
}

.form-label-group input::-webkit-input-placeholder {
  color: transparent;
}

.form-label-group input:-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-moz-placeholder {
  color: transparent;
}

.form-label-group input::placeholder {
  color: transparent;
}

.form-label-group input:not(:placeholder-shown) {
  padding-top: calc(var(--input-padding-y) + var(--input-padding-y) * (2 / 3));
  padding-bottom: calc(var(--input-padding-y) / 3);
}

.form-label-group input:not(:placeholder-shown)~label {
  padding-top: calc(var(--input-padding-y) / 3);
  padding-bottom: calc(var(--input-padding-y) / 3);
  font-size: 12px;
  color: #777;
}

.btn-google {
  color: white;
  background-color: #ea4335;
}

.btn-facebook {
  color: white;
  background-color: #3b5998;
}

/* Fallback for Edge
-------------------------------------------------- */

@supports (-ms-ime-align: auto) {
  .form-label-group>label {
    display: none;
  }
  .form-label-group input::-ms-input-placeholder {
    color: #777;
  }
}

/* Fallback for IE
-------------------------------------------------- */

@media all and (-ms-high-contrast: none),
(-ms-high-contrast: active) {
  .form-label-group>label {
    display: none;
  }
  .form-label-group input:-ms-input-placeholder {
    color: #777;
  }
}
</style>
</head>
<body
	style="background-image: url(${pageContext.request.contextPath}/static/images/login/download.jpg);">
	<!-- for page context -->
	<input type="hidden" id="pageContext"
		value="${pageContext.request.contextPath}">
	<!-- for storing sal;t value -->
	<input type="hidden" value="${saltKey}" id="saltKey">
	<div class="container align_center">
		<div class="card">
			<%-- <div class="card-body">
				<div class="row">
					<div class="col-sm-5" style="text-align: center;">
						<div style="margin-top: 44%;">
							<img style="width: 50%;"
								src="${pageContext.request.contextPath}/static/images/login/login3.png">
							<h4 class="text-white">DBS Bank</h4>
							<p class="text-white" style="font-size: 20px;"></p>
						</div>
					</div>
					<div class="col-sm-7">
						<form class="login100-form" id="loginForm"
							style="margin-top: 18%;">
							<div class="form-group">
								<div class="md-form form-sm">
									<input class="form-control form-control-sm inputmail"
										type="text" name="username" id="username"
										placeholder="Enter username" autocomplete="off">
								</div>
							</div>
							<div class="form-group">
								<div class="md-form form-sm">
									<input class="form-control form-control-sm inputmail"
										type="password" name="password" id="password"
										placeholder="Enter password" autocomplete="off"">
								</div>
							</div>
							<div class="col-sm-12 alignright">
								<p class="last">
									<a
										href="${pageContext.request.contextPath}/college/forgotPassword"
										style="color: blue;">Forgot Password ?</a>
								</p>
							</div>
							<div class="form-group row">
								<div class="col-sm-12 aligncenter">
									<div class="form-check">
										<input class="form-check-input" type="checkbox"
											id="gridCheck1"> <label class="form-check-label"
											for="gridCheck1"> Remember Me </label>
									</div>
								</div>
							</div>
							<br>
							<br>
							<div class="col-sm-12 aligncenter">
								<button type="button" class="btn loginBtn"
									id="submitLoginButton">LOGIN</button>
							</div>
							 <div class="col-sm-12 aligncenter">
                         <p class="last">Don't have a account ? <a href="${pageContext.request.contextPath}/college/registration" style="color: blue;"> Register</a></p>
                      </div>
						</form>
					</div>
				</div>
			</div> --%>
			<div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Sign In</h5>
            <form class="form-signin">
              <div class="form-label-group">
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus autocomplete="off">
                <label for="inputEmail" >Email address</label>
              </div>

              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required autocomplete="off">
                <label for="inputPassword" >Password</label>
              </div>

              <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember password</label>
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="button" id="signIn">Sign in</button>
              <!-- <hr class="my-4">
              <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i class="fab fa-google mr-2"></i> Sign in with Google</button>
              <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i> Sign in with Facebook</button> -->
            </form>
          </div>
        </div>
		</div>
	</div>
</body>
</html>