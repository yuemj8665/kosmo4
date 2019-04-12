<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link rel="stylesheet" href="<c:url value='/Bootstrap/css/mypage/common.css'/>">
<link rel="stylesheet" href="<c:url value='/Bootstrap/css/signpage/common.css'/>">
<link rel="stylesheet" href="<c:url value='/Bootstrap/css/signpage/nh.css'/>">
<link rel="stylesheet" href="<c:url value='/Bootstrap/css/signpage/nh2.css'/>">
<link rel="stylesheet" href="<c:url value='/Bootstrap/css/signpage/nhmem.css'/>">
<link rel="stylesheet"	href="<c:url value='/Bootstrap/css/signpage/mCustomScrollbar.css'/>">
<link rel="stylesheet" href="<c:url value='/Bootstrap/css/mypage/Swiper.css'/>">


	
	<script>
////////////////////////
// Email 선택 스크립트 시작 //
	///////////////////////
		$(function() {
			$('#select').change(function() {
				$('#textEmail').val($('#select').val());
				$('#textEmail').attr("disabled", true);
				if ($('#select').val() == 'empty') {
					$('#textEmail').attr("disabled", false);
					$('#textEmail').val("");
					$('#textEmail').focus();
				}
			})
		});
	///////////////////////
	// Email 선택 스크립트 끝 //
	//////////////////////
	
	
	
	</script>
<body>
	<div id="wrap">
		<div id="container">
			<div class="pathDiv">
				<h2 class="sub-tit">정보수정</h2>
			</div>

			<div id="content">
				<div class="myInfoRevise">
					<div class="reviseTit">
						기본 정보
						<p class="requiredTxt">
							<span>*</span> 표시는 필수정보입니다
						</p>
					</div>
					<!-- 2018-09-27 p를 div로 바꾸고 안에 p클래스 추가 -->
					<div class="writeType1">
						<ul>
						
							<li>
								<div class="left">
									<p class="tit star">성명</p>
								</div>
								<div class="right">
									<!-- 2018-07-30 구조 수정 -->
									<div class="txt">드릴 말</div>
								</div>
							</li>
							
							<li>
								<div class="left">
									<p class="tit star">생년월일</p>
								</div>
								<div class="right">

									<p class="txt">1111.11.11</p>
								</div>
							</li>
							
							<li>
								<div class="left">
									<p class="tit star">휴대폰번호</p>
								</div>
								<div class="right">
									<div class="txt">
										000-0000-0000<a href="javascript:" class="blackBt changeBt">변경</a>
									</div>
								</div>
							</li>
							
							<li>
								<div class="left">
									<p class="tit star">비밀번호</p>
								</div>
								<div class="right">
									<div class="txt">
										<a href="javascript:" class="blackBt2 passBt changeBt"
											id="pwChgBtn">변경</a>
									</div>
								</div>
							</li>
							
							<li>
								<div class="left">
									<p class="tit star">성별</p>
								</div>
								<div class="right">
									<div class="radioBox" >
									<label for="gender1">&nbsp;남성
										<input type="radio" id="gender1" name="SEX_C" value="M" style="display:inline"></label>
									</div>
									<div class="radioBox">
									<label for="gender2">&nbsp;여성
										<input type="radio" id="gender2" name="SEX_C" value="F" style="display:inline"></label>
									</div>
								</div>
							</li>
							
							<li>
								<div class="left">
									<p class="tit star">E-mail</p>
									<!-- 2018-06-12 클래스 추가 -->
								</div>
								<div class="right inputArea">
									<div class="mailInput">
										<span>이메일 입력 : </span>
										<div class="input-area type2" style="width: 120px">
											<input type="text" id="emailId" name="EMAIL_ID" value="" placeholder="이메일 입력">
										</div>
										<span class="mailTxt">@</span>
										<div class="input-area type1" style="width: 180px">
											<input style="width: 180px" type="text" id="textEmail" name="OHSE_DTL_ADR" placeholder="이메일을 선택하세요." disabled="disabled">
										</div>
										<div class="select-area" id="email" style="width: 180px">
											<select id="select">
												<option value="" disabled selected>E-Mail 선택</option>
												<option value="naver.com" id="emailtext">naver.com</option>
												<option value="hanmail.net" id="emailtext">hanmail.net</option>
												<option value="gmail.com" id="emailtext">gmail.com</option>
												<option value="nate.com" id="emailtext">nate.com</option>
												<option value="empty" id="emailtext">직접 입력하기</option>
											</select>
										</div>
									</div>
								</div>
							</li>
							
							<li>
								<div class="left">
									<p class="tit">주소</p>
								</div>
								<div class="right inputArea">
									<div class="addSrch">
										<a href="javascript:openPostBox();" class="grayBt addSrchBt">우편번호</a>
										<div class="input-area">
											<input type="text" id="postNo" name="OHSE_POST_NO" value="" placeholder="11111">
										</div>
									</div>
									<div class="input-area mt5">
										<input type="text" id="bscAdr" name="OHSE_BSC_ADR" value="유저의 기존 주소"
											style="font-size: 11px; width: 100%;" placeholder="주소">
									</div>
									<div class="input-area mt5">
										<input type="text" id="dtlAdr" name="OHSE_DTL_ADR"
											value="유저의 기존에 적혀있던 상세주소" placeholder="상세주소를 입력해주세요.">
									</div>
								</div>
							</li>
						</ul>
						<div class="btnBox taC mt10" style="margin-bottom: 100px;" >
						<button type="button" class="btn btn-info" style=" background-color: gray; border-color: gray;">이전 항목으로</button>
						<button type="button" class="btn btn-info">확인</button>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>