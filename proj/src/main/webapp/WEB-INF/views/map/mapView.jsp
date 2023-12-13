<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>map</title>
</head>
<body>
	<%@include file="/WEB-INF/inc/head.jsp"%>
	<input id="search_val" type="text">
	<input id="search1" type="button" value="조회">
	<div id="map" style="width: 100%; height: 780px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=78439faf7d0ec9dd03dadb049e51e0d9&libraries=services"></script>
	<script>
		$(document).ready(function(){
			fn_getmap(".");
			$("#search1").click(function(){
				fn_getmap($("#search_val").val());	
			});
			
		});
		
		function fn_getmap(nm){
			 $.ajax({
		         type: "GET",
		         url: '<c:url value="/addresses" />', // 주소 정보를 반환하는 엔드포인트
		         data:{"restrntaddr" :nm},
		         success: function (data) {
		        	 console.log(data);
		             // 서버에서 받은 주소 정보를 이용하여 지도에 마커를 추가하는 코드 작성
		             data.forEach(function (address, index) {
		            	 console.log(address['restrntaddr']);
		                 myMarker(index + 1, address['restrntaddr']);
		             });
		         },
		         error: function (error) {
		             console.error("주소 정보를 가져오는 중 오류 발생:", error);
		         },
		     });
		}
		
	
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(36.633535, 127.425882), // 지도의 중심좌표
			level : 4
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();
		

		function myMarker(number, address) {
			// 주소로 좌표를 검색합니다
			geocoder
					.addressSearch(
							//'주소',
							address,
							function(result, status) {
								// 정상적으로 검색이 완료됐으면 
								if (status === daum.maps.services.Status.OK) {

									var coords = new daum.maps.LatLng(
											result[0].y, result[0].x);

									// 결과값으로 받은 위치를 마커로 표시합니다

									var marker = new daum.maps.Marker({
										map : map,
										position : coords
									});

									//인포윈도우로 장소에 대한 설명을 표시합니다

// 									var infowindow = new daum.maps.InfoWindow({
										
// 										content : '<div style="color:red;">'
// 												/* + 'restrntNm' + number */
// 												+ '</div>'
// 									});
// 									infowindow.open(map, marker);

									// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
									var content = '<div class="customoverlay">'
											+ '    <span class="title">'
											+ '<div style="font-style:normal; color:red; font-weight:bold; font-size:2.0em">'
											+ '</span>' + '</div>';

									// 커스텀 오버레이가 표시될 위치입니다 
									var position = new daum.maps.LatLng(
											result[0].y, result[0].x);

									// 커스텀 오버레이를 생성합니다
									var customOverlay = new daum.maps.CustomOverlay(
											{
												map : map,
												position : position,
												content : content,
												yAnchor : 1
											});

									// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									map.setCenter(coords);
								}
							});
		}

		for (i = 0; i < restrntAddr.length; i++) {
			myMarker(i + 1, restrntAddr[i]);
		}
	</script>
	<%@include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>
