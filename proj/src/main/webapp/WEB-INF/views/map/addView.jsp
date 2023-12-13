<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식당추가</title>
</head>
<body>
	<%@include file="/WEB-INF/inc/head.jsp"%>
	<div class="row justify-content-center"style="margin-top: 50px">
		<div class="col-lg-8 col-xl-7">
			<form method="post" action="<c:url value="/addRestaurant" />">
			
				
				<div class="form-floating mb-3" style="margin-top: 10px">
					<input class="form-control" name="restrntnm" type="text"
						placeholder="*필수사항 입력사항*" value="추천"> <label>_____매장이름</label>
				</div>
				
				<div class="form-floating mb-3" style="margin-top: 10px">
					<input class="form-control" name="restrntzip" type="text"
						placeholder="*-* " value="000000"> <label>우편번호</label>
				</div>
				<div class="form-floating mb-3"style="margin-top: 10px">
					<input class="form-control" name="restrntaddr" type="text"
						placeholder="*필수사항 입력사항*" value="대전광역시 "> <label>매장주소</label>
				</div>
				<div class="form-floating mb-3"style="margin-top: 10px">
					<input class="form-control" name="restrntdtladdr" type="text"
						placeholder="*필수사항 입력사항*" value="대전광역시"> <label>매장주소2</label>
				</div>
				<div class="form-floating mb-3"style="margin-top: 10px">
					<input class="form-control" name="restrntinqrtel" type="text"
						placeholder="*필수사항 입력사항*" value="010-0000-0000"> <label>매장번호</label>
				</div>
				<div class="form-floating mb-3"style="margin-top: 10px">
					<input class="form-control" name="rprsfod" type="text"
						placeholder="*필수사항 입력사항*" value="밥"> <label>대표매뉴</label>
				</div>
				<div class="form-floating mb-3"style="margin-top: 10px">
					<input class="form-control" name="salstime" type="text"
						placeholder="*-*" value="00:00~24:00"> <label>운영시간</label>
				</div>
				<div class="form-floating mb-3"style="margin-top: 10px">
					<input class="form-control" name="hldyguid" type="text"
						placeholder="*-*"value=" 매주 월요일"> <label>휴무일</label>
				</div>
				<div class="form-floating mb-3"style="margin-top: 10px">
					<input class="form-control" name="restrntsumm" type="text"
						placeholder="*-*" value="ㅎㅇ"> <label>한줄평</label>
				</div>
				<div class="form-floating mb-3"style="margin-top: 10px">
					<input class="form-control" name="maplat" type="text"
						placeholder="*-*" value="000.0000"> <label>위도</label>
				</div>
				<div class="form-floating mb-3"style="margin-top: 10px">
					<input class="form-control" name="maplot" type="text"
						placeholder="*-*" value="000.0000"> <label>경도</label>
				</div >
				<button class="btn btn-primary btn-xl" type="submit" style="margin-top: 10px">등록하기</button>


			</form>
		</div>
	</div>




	<%@include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>