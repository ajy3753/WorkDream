<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/recruitmentStatus.css">
<script src="${pageContext.request.contextPath}/js/recruitmentStatus.js" defer></script>

</head>
<body>
    <div id="Recruitment_Status">
        <div id="Recruitment_Status_Title">
            <h2>채용 공고 현황</h2>
        </div>

        <div id="Recruitment_StatusView">
            <!-- 데이터 베이스 연동 ex) 진행중 N명 -->
            <div>
                <a href="#" class="status-link active">진행중 20</a>
                <a href="#" class="status-link">&emsp;대기중 15</a>
                <a href="#" class="status-link">&emsp;임시저장 7</a>
                <a href="#" class="status-link">&emsp;마감 15</a>
            </div>

            <div id="Registration_Button">
                <button type="submit"><b>공고 등록하기</b></button>
            </div>
        </div>

        <div id="Registration_containers">
            <!-- 반복구간-->
            <div class="Registration_First_Container">
                <div id="Registration_sava_bar" style="display: flex; flex-direction: row;">
                    <b>임시저장</b>
                    <div class="dropdown-container">
                        <button type="button" id="dropdownButton"><img src="${pageContext.request.contextPath}/img/kebab.png"></button>
                        <ul id="dropdownMenu" class="dropdown-menu">
                            <li><a href="#">공고 수정</a></li>
                            <li><a href="#">공고 삭제</a></li>
                        </ul>
                    </div>
                </div>

                <h2>제목이 입력되지 않았습니다.</h2>

                <div id="Recruitment_Status_Calender">
                    <img src="${pageContext.request.contextPath}/img/calendar-blank.png">
                    <b>게시기간 입력 되지 않음</b>
                </div>
            </div>

            <div class="Registration_First_Container">
                <div id="Registration_sava_bar" style="display: flex; flex-direction: row;">
                    <b>임시저장</b>
                    <div class="dropdown-container">
                        <button type="button" id="dropdownButton"><img src="${pageContext.request.contextPath}/img/kebab.png"></button>
                        <ul id="dropdownMenu" class="dropdown-menu">
                            <li><a href="#">공고 수정</a></li>
                            <li><a href="#">공고 삭제</a></li>
                        </ul>
                    </div>
                </div>

                <h2>제목이 입력되지 않았습니다.</h2>

                <div id="Recruitment_Status_Calender">
                    <img src="${pageContext.request.contextPath}/img/calendar-blank.png">
                    <b>게시기간 입력 되지 않음</b>
                </div>
            </div>

            <div class="Registration_First_Container">
                <div id="Registration_sava_bar" style="display: flex; flex-direction: row;">
                    <b>임시저장</b>
                    <div class="dropdown-container">
                        <button type="button" id="dropdownButton"><img src="${pageContext.request.contextPath}/img/kebab.png"></button>
                        <ul id="dropdownMenu" class="dropdown-menu">
                            <li><a href="#">공고 수정</a></li>
                            <li><a href="#">공고 삭제</a></li>
                        </ul>
                    </div>
                </div>

                <h2>제목이 입력되지 않았습니다.</h2>

                <div id="Recruitment_Status_Calender">
                    <img src="${pageContext.request.contextPath}/img/calendar-blank.png">
                    <b>게시기간 입력 되지 않음</b>
                </div>
            </div>


            <div class="Registration_First_Container">
                <div id="Registration_sava_bar" style="display: flex; flex-direction: row;">
                    <b>임시저장</b>
                    <div class="dropdown-container">
                        <button type="button" id="dropdownButton"><img src="${pageContext.request.contextPath}/img/kebab.png"></button>
                        <ul id="dropdownMenu" class="dropdown-menu">
                            <li><a href="#">공고 수정</a></li>
                            <li><a href="#">공고 삭제</a></li>
                        </ul>
                    </div>
                </div>

                <h2>제목이 입력되지 않았습니다.</h2>

                <div id="Recruitment_Status_Calender">
                    <img src="${pageContext.request.contextPath}/img/calendar-blank.png">
                    <b>게시기간 입력 되지 않음</b>
                </div>
            </div>


            <div class="Registration_First_Container">
                <div id="Registration_sava_bar" style="display: flex; flex-direction: row;">
                    <b>임시저장</b>
                    <div class="dropdown-container">
                        <button type="button" id="dropdownButton"><img src="${pageContext.request.contextPath}/img/kebab.png"></button>
                        <ul id="dropdownMenu" class="dropdown-menu">
                            <li><a href="#">공고 수정</a></li>
                            <li><a href="#">공고 삭제</a></li>
                        </ul>
                    </div>
                </div>

                <h2>제목이 입력되지 않았습니다.</h2>

                <div id="Recruitment_Status_Calender">
                    <img src="${pageContext.request.contextPath}/img/calendar-blank.png">
                    <b>게시기간 입력 되지 않음</b>
                </div>
            </div>

            <div class="blank_zones">
            </div>

            <div class="division_zones">
            </div>

        </div>

       
    </div>
    
    <c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>