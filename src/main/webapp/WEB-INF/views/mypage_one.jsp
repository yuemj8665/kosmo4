<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<div id="wrap">
	<div id="container">
		<div class="pathDiv">
			<h2 class="sub-tit">비밀번호 확인</h2>
		</div>
		<div id="content">
			<div class="text-center">
				<div class="myCardList">
					<div class="registId" style="width: 500px;">
						<p class="txt1 secret" style="font-size: 20px; width: 500px; align: center;">
							회원님의 정보를 안전하게 보호하기 위해<br>회원 로그인 비밀번호를 다시 한 번 확인합니다
						</p>
						<div class="input-area" style="border: 1px solid rgb(225, 225, 225); width: 50%;">
							<input type="password" id="intgMbPw" name="INTG_MB_PW" value="" placeholder="비밀번호를 입력해주세요" autocomplete="off">
						</div>
						<div class="btnBox taC mt10">
							<a href="javascript:submitCertPw();" class="yellowBt" style="width: 50%">확인</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>