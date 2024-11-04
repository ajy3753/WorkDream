<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/enrollresume.css">
</head>
<body>
	<c:import url="/WEB-INF/views/common/header.jsp" />
 <div class="inner">
        <div class="resume_title">
            <strong>이력서 제목</strong>
            <input type="text" class="resume_name" placeholder="이력서 제목(미입력 시 기본 제목으로 자동 저장됩니다.)">
        </div>
        <div class="basicInfo">
            <fieldset class="basic_Info">
                <legend class="basic_info">기본정보</legend>
                    <div class="basic_total">
                        <div class="name_info">
                            <fieldset class="name">
                                <legend id="name">이름 *</legend>
                                <input type="text" name="nickName" placeholder="이름을 등록해주세요.">
                            </fieldset>
                            <div class="gender_info">
                                <fieldset class="Gender">
                                    <legend id="gender">성별</legend>
                                    <select name="gender" class="gender" name="gender">
                                        <option value="1" selected="selected" id="man">남자</option>
                                        <option value="2" id="woman">여자</option>
                                    </select>
                                </fieldset>
                            </div>
                            <div class="birth">
                                <fieldset class="Birth">
                                    <legend id="birth">생년월일</legend>
                                    <input type="date" name="birth">
                                </fieldset>
                            </div>
                            <div class="profile_pic">
                                <button type="button" class="picture_add">
                                    <img src="https://cdn-icons-png.flaticon.com/512/11789/11789135.png" alt="" style="width: 100px; height: 100px;">                                    
                                    <label for="">사진추가</label>
                                </button>
                            </div>
                        </div>
                        <div class="phone">
                            <fieldset class="Phone">
                                <legend id="phone">휴대폰</legend>
                                <input type="text" name="phone" placeholder="'-'없이 입력해주세요">
                            </fieldset>
                        </div>
                        <div class="email">
                            <fieldset class="Email">
                                <legend id="email">이메일</legend>
                                <input type="email" name="email">
                            </fieldset>
                            <button class="email_check">인증요청</button>
                        </div>
                        <div class="address">
                            <fieldset class="Address">
                                <legend id="address">주소</legend>
                                <input type="text" name="address">
                            </fieldset>
                        </div>
                        <div class="detail_ad">
                            <fieldset class="Detail_ad">
                                <legend id="detail_ad">상세주소</legend>
                                <input type="text" name="detail_ad">
                            </fieldset>
                        </div>
                    </div>
            </fieldset>
        </div>
        <div class="ed">
            <fieldset class="Education_Lv">
                <legend id="Education_Lv">학력</legend>
                <div id="education">
                    <fieldset class="education">
                        <legend id="educ">최종학력</legend>
                        <select name="education" id="edu">
                            <option disabled hidden selected>
                                최종학력을 선택해주세요.
                              </option>
                            <option value="">초등학교</option>
                            <option value="">중학교</option>
                            <option value="">고등학교</option>
                            <option value="">대학교</option>
                            <option value="">대학원</option>
                        </select>
                    </fieldset>
                </div>
            </fieldset>
        </div>
        <div class="sk">
            <fieldset class="skill_Lv">
                <legend id="Skill_Lv">스킬</legend>
                <div id="Skill">
                    <fieldset class="skill">
                        <legend id="skl">스킬</legend>
                        <input type="text" class="inputskill" placeholder="툴/직무역량/소트스킬을 입력해주세요">
                    </fieldset>
                        <button id="btn_skill">추가하기</button>
                </div>
                <div class="addskill">
                    <div id="dlf">MySQL | x</div>
                </div>
            </fieldset>
        </div>
        <div class="career">
            <fieldset class="career_Lv">
                <legend id="career_title">경력</legend>
                <div class="career_inner">
                    <fieldset class="car_comtitle">
                        <legend>회사명</legend>
                        <input type="text">
                    </fieldset>
                    <fieldset class="car_enterdate">
                        <legend>입사년월</legend>
                        <input type="date">
                    </fieldset>
                    <fieldset class="car_retiredate">
                        <legend>퇴사년월</legend>
                        <input type="date">
                    </fieldset>
                    <div class="career_check">
                        <label class="car_checked">재직중</label>
                          <input type="checkbox">
                    </div>
                </div>
                <div class="career_inner2">
                    <fieldset class="car_roll">
                        <legend>직무</legend>
                        <input type="text">
                    </fieldset>
                    <fieldset class="car_department">
                        <legend>근무부서</legend>
                        <input type="text">
                    </fieldset>
                    <fieldset class="car_position">
                        <legend>직급/직책</legend>
                        <input type="text">
                    </fieldset>
                </div>
                <div class="career_inner3">
                    <fieldset class="car">
                        <legend>담당업무</legend>
                        <textarea name="career_contents" id="car_content" placeholder="담당업무를 입력해주세요.

- 진행한 업무를 다 적기 보다는 경력사항 별로 중요한 내용만 엄선해서 작성하는 것이 중요합니다. 

- 담당한 업무 내용을 요약해서 작성해보세요! 

- 경력별 프로젝트 내용을 적을 경우, 역학/팀구성/기여도/성과를 기준으로 요약해서 작성해보세요!"></textarea>
                    </fieldset>
                </div>
            </fieldset>
        </div>
        <div class="experience">
            <fieldset class="EXP">
                <legend id="epr_title">활동/경력/교육</legend>
                <div class="experience_inner">
                    <fieldset class="EXP_title">
                        <legend>활동구분선택</legend>
                        <select name="education" id="edu">
                            <option disabled hidden selected>
                                활동구분선택
                              </option>
                            <option value="">교내활동</option>
                            <option value="">인턴</option>
                            <option value="">자원봉사</option>
                            <option value="">동아리</option>
                            <option value="">아르바이트</option>
                            <option value="">사회활동</option>
                            <option value="">수행과제</option>
                            <option value="">해외연수</option>
                            <option value="">교육이수내역</option>
                        </select>
                    </fieldset>
                    <fieldset class="location_title">
                        <legend>기관/장소명</legend>
                        <input type="text">
                    </fieldset>
                </div>
                <div class="experience_inner2">
                    <fieldset class="start_date">
                        <legend>시작년월</legend>
                        <input type="date">
                    </fieldset>
                    <fieldset class="end_date">
                        <legend>종료년월</legend>
                        <input type="date">
                    </fieldset>
                </div>
                <div class="experience_inner3">
                    <fieldset class="exp_contents">
                        <legend>활동설명</legend>
                        <textarea name="exp_content" id="exp_content" placeholder="경험/활동 상세내용 입력"></textarea>
                    </fieldset>
                </div>
            </fieldset>
        </div>
    </div>
<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>