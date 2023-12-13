<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>개인프로젝트</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-func.js"></script>
<link href="${pageContext.request.contextPath}/css/style.css" rel=stylesheet/>

<body>
<!-- START PAGE SOURCE -->
<div id="shell">
  <div id="header">
    <h1 id="stars"><a href="./">B.O.B</a></h1>
    <div class="social"> <span>FOLLOW US ON:</span>
      <ul>
        <li><a class="twitter" href="#">twitter</a></li>
        <li><a class="facebook" href="#">facebook</a></li>
        <li><a class="vimeo" href="#">vimeo</a></li>
        <li><a class="rss" href="#">rss</a></li>
      </ul>
    </div>
    <div id="navigation">
      <ul>
        <li><a class="active" href="./">메인</a></li>        
        <li><a href="${pageContext.request.contextPath}/add">식당추가</a></li>        
        <li><a href="${pageContext.request.contextPath}/login">로그인</a></li>
        <li><a href="${pageContext.request.contextPath}/regist">회원가입</a></li>
      </ul>
    </div>
    <div id="sub-navigation">
      <ul>
        <li><a href="#">전체보기</a></li>
        <li><a href="#">평점순</a></li>        
        <li><a href="${pageContext.request.contextPath}/map">지역</a></li>
      </ul>
      <div id="search">
        <form action="#" method="get" accept-charset="utf-8">
          <label for="search-field">SEARCH</label>
          <input type="text" name="search field" value="Enter search here" id="search-field" class="blink search-field"  />
          <input type="submit" value="GO!!" class="search-button" />
        </form>
      </div>
    </div>
  </div>
</head>