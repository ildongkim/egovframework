<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
    <title>임시출입자 출입신청심의 시스템</title>
    <link type="text/css" rel="stylesheet" href="./resource/bootstrap/dist/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="./css/tpssm/com/main.css">
    <script type="text/javascript" src="./resource/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="./resource/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/showModalDialog.js'/>" ></script>
    <script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/jquery.js'/>" ></script>
	<script type="text/javaScript" language="javascript">
		function actionLogin() {
			if (document.loginForm.id.value =="") {
		        alert("<spring:message code="comUatUia.validate.idCheck" />"); <%-- 아이디를 입력하세요 --%>
		    } else if (document.loginForm.password.value =="") {
		        alert("<spring:message code="comUatUia.validate.passCheck" />"); <%-- 비밀번호를 입력하세요 --%>
		    } else {
		        document.loginForm.action="<c:url value='/uat/uia/actionLogin.do'/>";
		        document.loginForm.submit();
		    }
		}
	</script>
</head>
<body>
    <!-- Responsive navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">임시출입자 출입신청심의 시스템</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Link</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Dropdown</a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li><hr class="dropdown-divider" /></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Page content-->

	<form name="loginForm" id="loginForm" method="post">
	<input type="hidden" id="message" name="message" value="<c:out value='${message}'/>">
	    
    <div class="container">
		<div class="row">
			<div class="col mt-5">
				<div class="Static sta_LOGIN_Caption" tabindex="-1" style="width:614px;height:100px;direction:ltr;text-align: center;" role="" aria-label="임시출입자 출입신청심의 시스템은 사용자의 개인정보보호정책을 준수합니다.">
					임시출입자 출입신청심의 시스템
					<p><span style="font-size:12pt;color:#939393">임시출입자 출입신청심의 시스템은 사용자의 개인정보보호정책을 준수합니다.</span></p>
				</div>
				<div class="Static sta_LOGIN_Image" style="width:614px;height:387px;direction:ltr;" role="" aria-label=" " aria-description=""></div>
			</div>
			<div class="col mt-3">
				<div class="Static sta_LOGIN_Bg" style="width:510px;height:620px;direction:ltr;" role="" aria-label=" " aria-description="">
					<div class="p-3">
						<div class="Static img_LOGIN_Title" style="width:400px;height:60px;direction:ltr;" role="" aria-label="로그인 " aria-description="">로그인</div>
						<div class="Static sta_WF_TxtRedL12" style="width:416px;height:57px;direction:ltr;" role="" aria-label="로그인 " aria-description="">
							5회 이상 로그인에 실패 시 고객님의 계정안전을 위하여 자동으로 <br>
							잠금 상태가 됩니다. 계정 감금상태는 ‘비밀번호 재설정’을 통해 초기화 할 수 <br> 
							있습니다.
						</div>
						<div class="input-group mt-3 mb-3">
	  						<div class="Edit edi_LOGIN_Id" style="width:60px;height:50px;"></div>
	  						<input type="text" name="id" id="id" class="form-control" placeholder="" aria-label="아이디를 입력해 주세요" aria-describedby="아이디입력창" style="background:#eef0f6;border:0px;">
						</div>
						<div class="input-group mb-3">
	  						<div class="Edit edi_LOGIN_Pw" style="width:60px;height:50px;"></div>
	  						<input type="password" name="password" id="password" class="form-control" placeholder="" aria-label="비밀번호를 입력해 주세요" aria-describedby="비밀번호입력창" style="background:#eef0f6;border:0px;">
						</div>
						<div class="Button btn_LOGIN_Login" style="width:100%;height:50px;">
							<input type="button" class="btn_login" value="로그인" onclick="actionLogin()">
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
    
    <input name="userSe" type="hidden" value="GNR"/>
    <input name="j_username" type="hidden"/>
    </form>
</body>
</html>