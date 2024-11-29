<!-- WEB-INF/views/portfolio/portfolioDashboard.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>포트폴리오 관리</title>
    <link rel="icon" href="${pageContext.request.contextPath}/img/logo_icon.png"/>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/portfolioDashboard.css">
</head>
<body data-page="dashboard">
    <!-- 헤더 포함 -->
    <c:import url="/WEB-INF/views/common/header.jsp" />

    <div class="container mt-5">
        <!-- 페이지 제목 -->
        <h1 class="text-center tekhelet styled-title">포트폴리오 관리</h1>
        
        <!-- 포트폴리오 작성 버튼 추가 -->
        <div class="text-right mb-3">
            <a href="${pageContext.request.contextPath}/portfolio/portfolioPost" class="btn btn-purple">포트폴리오 작성</a>
        </div>
        
        
        <!-- 포트폴리오 목록 테이블 -->
        <table class="table table-striped table-hover">
            <thead class="tekhelet-bg text-white">
                <tr>
                    <th>ID</th>
                    <th>제목</th>
                    <th>작성일</th>
                    <th>수정일</th>
                    <th>작업</th>
                </tr>
            </thead>
            <tbody>
                <!-- 임시 데이터 시작 -->
                <tr>
                    <td>1</td>
                    <td>포트폴리오 첫 번째</td>
                    <td>2024-01-01</td>
                    <td>2024-01-02</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/portfolio/portfolioEdit?id=1" class="btn btn-sm btn-edit">수정</a>
                        <a href="${pageContext.request.contextPath}/portfolio/portfolioView?id=1" class="btn btn-sm btn-purple">열람</a>
                        <button class="btn btn-sm btn-danger delete-button">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>포트폴리오 두 번째</td>
                    <td>2024-02-10</td>
                    <td>2024-02-12</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/portfolio/portfolioEdit?id=2" class="btn btn-sm btn-edit">수정</a>
                        <a href="${pageContext.request.contextPath}/portfolio/portfolioView?id=2" class="btn btn-sm btn-purple">열람</a>
                        <button class="btn btn-sm btn-danger delete-button">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>포트폴리오 세 번째</td>
                    <td>2024-03-15</td>
                    <td>2024-03-16</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/portfolio/portfolioEdit?id=3" class="btn btn-sm btn-edit">수정</a>
                        <a href="${pageContext.request.contextPath}/portfolio/portfolioView?id=3" class="btn btn-sm btn-purple">열람</a>
                        <button class="btn btn-sm btn-danger delete-button">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>포트폴리오 네 번째</td>
                    <td>2024-04-20</td>
                    <td>2024-04-21</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/portfolio/portfolioEdit?id=4" class="btn btn-sm btn-edit">수정</a>
                        <a href="${pageContext.request.contextPath}/portfolio/portfolioView?id=4" class="btn btn-sm btn-purple">열람</a>
                        <button class="btn btn-sm btn-danger delete-button">삭제</button>
                    </td>
                </tr>
                <!-- 임시 데이터 끝 -->
            </tbody>
        </table>
        
        <!-- 사용설명 추가 -->
        <div class="alert alert-info custom-alert" role="alert">
🖋️ 포트폴리오 작성 도구란?<br>
쉽고 빠르게 나만의 멋진 포트폴리오를 만들 수 있는 도구예요!<br> 
직관적인 편집기와 다양한 템플릿으로 누구나 전문가처럼 제작할 수 있어요.✨<br>
<br>
👨‍💼 권장 사용 대상<br>
✅ 취업 준비생: 프로젝트와 경력을 돋보이게 하고 싶은 분<br> 
✅ 프리랜서: 클라이언트에게 전문성을 어필하려는 분<br>
 ✅ 이직 준비자: 새 직장을 위해 경력을 정리하려는 분<br> 
✅ 학생: 연구 성과와 학업 활동을 정리하려는 분<br>
<br>
📣 지금 바로 나만의 매력적인 포트폴리오를 만들어 보세요! 🚀<br>
        </div>
        
        <!-- 페이지네이션 컨트롤 -->
        <div class="pagination">
            <button id="prevPage" disabled>&#9664;</button>
            <span id="pageNumber">1</span>
            <button id="nextPage">&#9654;</button>
        </div>
    </div>
     
    <!-- 푸터 포함 -->
    <c:import url="/WEB-INF/views/common/footer.jsp" />
    
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <!-- Custom JS -->
    <script src="${pageContext.request.contextPath}/js/portfolioDashboard.js"></script>
</body>
</html>
