<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// 테스트용 (차후 서블릿 연결 후에 수정됩니다)
	int menuNo = 1;
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
    
    <!-- jQuery -->
    <script 
        src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    <script
        src="https://code.jquery.com/ui/1.14.0/jquery-ui.min.js"
        integrity="sha256-Fb0zP4jE3JHqu+IBB9YktLcSjI1Zc6J2b6gTjB0LpoM="
        crossorigin="anonymous"></script>
    
    <!-- 외부 css / js 연결 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
    <script>const contextPath = "${pageContext.request.contextPath}";</script>
    <script src="${pageContext.request.contextPath}/js/common.js" defer></script>
</head>
<body onload="activeMenu(<%=menuNo%>)">
    <!-- 기업홈용 헤더 -->
    <header class="biz">
    	<nav>
    		<!-- 카테고리 -->
    		<ul id="biz-nav-left">
    			<li>
    				<a href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/img/logo_icon.png" /></a>
    			</li>
    			<li class="On"><a href="">기업 홈</a></li>
    			<li><a href="${pageContext.request.contextPath}/business/recruitmentStatus">채용공고관리</a></li>
    			<li><a href="${pageContext.request.contextPath}/business/applicantsStatus">지원자 현황</a></li>
    			<li><a href="#">인재풀 검색</a></li>
    			<li><a href="#">기업정보수정</a></li>
    			<li><a href="#">커뮤니티</a></li>
    		</ul>
    		
    		<!-- 유저메뉴 -->
    		<ul id="biz-nav-right">
    			<li>
    				<a href="#"><img src="${pageContext.request.contextPath}/img/btn_chat.png" /></a>
    			</li>
    			<li>
    				<a href="#"><img src="${pageContext.request.contextPath}/img/btn_notify.png" /></a>
    			</li>
    			<li class="user">
    				<a href="#">
    					<span></span>
    				</a>
    				<a href="#">워크드림</a>
    			</li>
    			<li class="logout"><a href="/logout">로그아웃</a></li>
    		</ul>
    	</nav>
    </header>
</body>
</html>