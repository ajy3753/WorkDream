<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 홈</title>
    <link rel="icon" href="${pageContext.request.contextPath}/img/logo_icon.png"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/communityHome.css">
    <script src="${pageContext.request.contextPath}/js/communityHome.js" defer></script>
</head>

<body>
<input type="hidden" id="contextPath" value="${pageContext.request.contextPath}"/>
<c:import url="/WEB-INF/views/common/header.jsp" />
    <div class="home-container"> 
        <div class="title">
            <h1>커뮤니티 홈.</h1>
        </div>

        <!-- 공지사항  -->
        <section class="notice">
		    <h2>📢 커뮤니티 공지사항</h2><br><br>
		    <hr>
		    <div class="notice-content">
		        <h5>
		            <br>
		            🙌 **안녕하세요! 커뮤니티에 오신 것을 환영합니다!** 🙌<br>
		            이곳은 다양한 주제로 많은 분들이 자유롭게 소통할 수 있는 공간입니다. 😊<br>
		            모두가 즐겁고 편안하게 이용할 수 있도록<br>
		            아래의 **커뮤니티 이용 기준**을 마련했습니다. 🙏<br>
		            <br>
		            <hr><br>
		            🚨 **커뮤니티 이용 기준** ⚠️<br><br>
		            아래 기준에 해당하는 경우 운영진에 의해 게시물이 삭제되며,<br>
		            반복 시 제재가 이루어질 수 있습니다. <br>
		            <br>
		            1️⃣ **타인의 명의를 도용한 게시물 및 댓글**<br>
		            2️⃣ **욕설 또는 음란성 내용**이 포함된 게시물 및 댓글<br>
		            3️⃣ **상업적 광고**, 사이트 홍보, 구인·구직 게시물 및 도배성 게시물<br>
		            4️⃣ HTML, script 등을 사용해 **서비스 장애**를 유발하는 게시물 및 댓글<br>
		            5️⃣ **타인을 향한 욕설, 인신공격** 등 권리를 침해하는 내용<br>
		            6️⃣ **법령 위반**으로 국가기관에서 삭제를 요청한 게시물 및 댓글<br>
		            7️⃣ 기타 **커뮤니티 주제나 목적에 맞지 않는 게시물**<br>
		            <br>
		            <hr><br>
		            📝 **커뮤니티는 여러분과 함께 만들어 갑니다!**<br><br>
		            올바르고 재미있는 커뮤니티를 위해 항상 노력하겠습니다. 🧡<br>
		            여러분의 많은 참여 부탁드립니다! 🙇‍♀️🙇‍♂️<br>
		            <br>
		        </h5>
		    </div>
		</section>

        <br><br>

        <!-- 실시간 전체글 박스 -->
        <section class="realtime-posts-container">
            <div class="realtime-posts">
            	<div class="postCountTitle">
            		<h2 id="postCount">실시간 전체글 0 개</h2> <!-- 초기값 수정 -->
            	</div>
                
            </div>

            <!-- 오늘의 인기글 -->
            <div class="popular-week">
			    <h3>인기글 🔥</h3>
			    <ul id="popularPostList">
			        <!-- 여기서부터 JavaScript로 동적 생성 -->
			    </ul>  
			</div>
        </section>
        <br><br>

        <!-- 주제별 커뮤니티 -->
        <section class="community-categories">
            <h2>주제별 커뮤니티</h2>
            <br><br>
            <div class="category-tags">
                <!-- 각 버튼에 카테고리별 ID 추가 -->
                <button data-category="전체글">전체글</button> 
                <button data-category="신입">신입</button>
                <button data-category="채용공고">채용공고</button>
                <button data-category="취준">취준</button>
                <button data-category="자소서">자소서</button>
                <button data-category="자격증">자격증</button> 
                <button data-category="Q&A">Q&A</button>
                <button data-category="커리어">커리어</button>
                <button data-category="이직">이직</button>
                <button data-category="잡담">잡담</button>
                <button data-category="면접">면접</button>
            </div>
        </section>

        <!-- 게시글 리스트 -->
        <section class="post-list">
            <!-- 각각의 리스트에 카테고리 ID 추가 -->
            <div class="post-category">
                <h3>전체글 <a href="#" data-category="전체글">더보기 ></a></h3>
                <ul id="allPostsList"></ul>
            </div>
            <div class="post-category">
                <h3>신입 <a href="#" data-category="신입">더보기 ></a></h3>
                <ul id="newPostsList"></ul>
            </div>
            <div class="post-category">
                <h3>취준 <a href="#" data-category="취준">더보기 ></a></h3>
                <ul id="prepPostsList"></ul>
            </div>
            <div class="post-category">
                <h3>채용공고 <a href="#" data-category="채용공고">더보기 ></a></h3>
                <ul id="jobPostsList"></ul>
            </div>
            <div class="post-category">
                <h3>자소서 <a href="#" data-category="자소서">더보기 ></a></h3>
                <ul id="coverLetterPostsList"></ul>
            </div>
            <div class="post-category">
                <h3>면접 <a href="#" data-category="면접">더보기 ></a></h3>
                <ul id="interviewPostsList"></ul>
            </div>
        </section>
   
    </div>
<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>  
