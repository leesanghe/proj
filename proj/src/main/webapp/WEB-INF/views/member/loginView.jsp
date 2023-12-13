<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>

</style>
</head>
<body>
<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
		
		<script>
    $(document).ready(function () {
        const forms = document.querySelectorAll('.needs-validation');
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {      
//           						  	> 빨간줄뜨는이유 모름 근데 잘됨
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    });    
    
</script>
	<%@include file="/WEB-INF/inc/head.jsp"%>
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<div class="container" style="margin-top: 150px">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">로그인</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7"style="margin-top: 10px">
					<form method="post" action="<c:url value="/loginDo" />">
						<div class="form-floating mb-3">
							<input class="form-control" name="memId" type="text"
								value="${cookie.rememberId.value }" placeholder="아이디를 입력해주세요 "
								id=validationCustom01 request pattern=".{3,12}">
								<div class="valid-feedback">good</div>
							<label>아이디</label>
						</div>
						
						
						<div class="form-floating mb-3"style="margin-top: 10px">
							<input class="form-control" name="memPw" type="password"
								placeholder="비밀번호를 입력해주세요 "
								id=validationCustom02 pattern=".{3,12}"> 
								<div class="valid-feedback">good</div>
								<label>비밀번호</label>
						</div>
						<!-- 아이디 기억      		 -->
						<div class="form-floating mb-3"style="margin-top: 10px">
							아이디 기억하기 <input class="form-check-input" name="remember"
								type="checkbox" ${cookie.rememberId.value==null ? "":"checked" } />
							<input name="fromUrl" type="hidden" value="${fromUrl }" />
						</div>

						<button class="btn btn-primary btn-xl" type="submit">로그인</button>
						
<%-- 						<label>${sessionScope.login.memId }</label> --%>
					</form>
				</div>
			</div>
		</div>
	</section>
	<%@include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>