<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" %>


	<script>
////////////////////////
// Email 선택 스크립트 시작 //
///////////////////////
	$(function(){
		$('option').click(function(){
			switch(this.id){
			case "naver.com" : 
				$("#textEmail").val("naver.com");
				$("#textEmail").prop("disabled", true);
				break;
			
			case "hanmail.net" : 
				$("#textEmail").val("hanmail.net");
				$("#textEmail").prop("disabled", true);
				break;
			
			case "gmail.com" : 
				$("#textEmail").val("gmail.com");
				$("#textEmail").prop("disabled", true);
				break;
			
			case "nate.com" : 
				$("#textEmail").val("nate.com");
				$("#textEmail").prop("disabled", true);
				break;
			
			case "textEmail" : 
				$("#textEmail").prop("disabled", false);
				$("#textEmail").val("");
				$("#textEmail").prop("placeholder", "이메일을 직접 입력해주세요");
				$("#textEmail").focus();
				break;
			}
		})
///////////////////////
// Email 선택 스크립트 끝 //
//////////////////////
	
////////////////////
// 제휴 선택 스크립트 시작 //
////////////////////
		$('#dd1').hide();
		$('#dd2').hide();

		$('#checkbox1').click(function() {//카풀 제휴서비스 추가입력다이브
			if ($(this).prop('checked')) {
				$('#dd1').show();
			} else {
				$('#dd1').hide();
			}
		})
		$('#checkbox2').click(function() {//베이비시터 제휴서비스 추가 입력다이브
			if ($(this).prop('checked')) {
				$('#dd2').show();
			} else {
				$('#dd2').hide();
			}
		})
////////////////////
// 제휴 선택 스크립트 끝 //
////////////////////

////////////////////
// 휴대폰 번호 유효성체크 //
////////////////////
	function onlyNumber() {
        if ((event.keyCode < 48) || (event.keyCode > 57))
            event.returnValue = false;
    }

    function CheckForm() {
        if (document.getElementById("txtMobile1").value == "") {
            window.alert("휴대폰 번호를 선택하시오.");
            return false;
        }
        if (document.getElementById("txtMobile2").value.length != 4) {
            window.alert("가운데 번호는 4자리로 입력하세요");
        }
    }

////////////////////
// 휴대폰 번호 유효성체크 //
////////////////////


	});

</script>

<div class="site-section" style="height:auto; padding:2em;">
      <div class="container" >
       


	<div id="wrap" class="memPage">
		<div id="container" class="grayBg hasBtn memberJoin" tabindex="0">
			<div class="pathDiv">
				<h2 class="sub-tit">회원가입</h2>
			</div>
			<div id="content">
				<form id="joinMbInfForm" name="joinMbInfForm" action="#" method="post">
					<div class="joinDiv">
						<div class="perInfo">
							<p class="joinTit2">필수정보 입력&nbsp;&nbsp;<small><small style="color:gray;">가입하기 위해 필수적으로 입력해야하는 정보칸 입니다.</small></small></p>
							<div class="idInput">
								<div class="input-area type2">
									<input type="text" id="intgMbId" name="INTG_MB_ID" value="" class="" placeholder="아이디를 입력해주세요.">
								</div>
								<a href="#" class="confirmBt">중복확인</a>
							</div>
							<p class="rwTxt">
								<span>*</span>8~16자의 영문, 숫자만 입력해주세요.
							</p>
							<div class="passInput">
								<div class="input-area">
									<input type="password" id="intgMbPw" name="INTG_MB_PW" placeholder="비밀번호를 입력해주세요."> 
								</div>
								<div class="input-area">
									<input type="password" id="intgMbPwConfirm" placeholder="비밀번호를 확인을 입력해주세요.">
								</div>
							</div>
							<p class="rwTxt">
								<span>*</span>영문자, 숫자, 특수문자를 모두 포함하여 8~16자리로 입력해주세요.
							</p>

							<div class="mailInput">
							<span>이메일 입력 : </span>
								<div class="input-area type2"  style="width: 120px">
									<input type="text"  id="emailId" name="EMAIL_ID" value="" placeholder="이메일 입력">
								</div>
								<span class="mailTxt">@</span>
								<div class="input-area type1" style="width: 180px">
								<input style="width:180px" 
								type="text" id="textEmail" name="OHSE_DTL_ADR" placeholder="이메일을 선택하세요." disabled="disabled">
							</div>
								<div class="select-area" id="email">
									<select name="selectbox" >
										<option value="" disabled selected >E-Mail 선택</option>
										<option value="naver.com" id="naver.com">naver.com</option>
										<option value="hanmail.net" id="hanmail.net">hanmail.net</option>
										<option value="gmail.com" id="gmail.com">gmail.com</option>
										<option value="nate.com" id="nate.com">nate.com</option>
										<option id="textEmail">직접 입력하기</option>
									</select>
								</div>
								
							</div>
						</div>
						<div>
							휴대폰 번호 : <select id="txtMobile1" style="width: 100px">
								<option value="">::선택::</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="019">019</option>
								<option value="010">010</option>
							</select> 
							<span class="mailTxt">-</span>
							<input type="text" id="txtMobile2" maxlength="4" style="width: 65px"/> <span class="mailTxt">-</span>
							<input type="text" id="txtMobile3" maxlength="4" style="width: 65px"/>
						</div>
						<p class="joinTit2">선택정보 입력&nbsp;&nbsp;<small><small style="color:gray;">선택적으로 입력하는 정보란 입니다.</small></small></p>
							<div class="addInput">
								<div class="input-area type2">
									<input type="text" id="postNo" name="OHSE_POST_NO" value=""
										placeholder="우편번호" readonly="">
								</div>
								<a href="#" class="confirmBt addSrchBt">우편번호</a>
								<div class="input-area">
									<input type="text" id="bscAdr" name="OHSE_BSC_ADR" value=""
										style="font-size: 11px; width: 100%;" placeholder="주소"
										readonly="">
								</div>
							</div>
							<div class="input-area type5">
								<input type="text" id="dtlAdr" name="OHSE_DTL_ADR" value="" placeholder="상세주소를 입력해주세요.">
							</div>
							
						<!-- 제휴서비스 폼 -->	
						<p class="joinTit2">제휴 서비스&nbsp;&nbsp;<small><small style="color:gray;">카풀과 베이비시터의 제휴서비스에 해당이 된다면 체크하세요</small></small></p>
						
						<div class="promotion">
							<label>카풀 제휴 서비스 여부 <input id="checkbox1" type="checkbox" style="display: inline;"/> </label>
							&nbsp;&nbsp;
							<label>베이비시터 제휴 서비스 여부 <input id="checkbox2" type="checkbox" style="display: inline;"/></label>
							<div class="text" id="dd1">
									<div class="card text-white bg-success mb-3" style="outline: 1px black solid; margin-bottom: 10px;" >
										<div class="card-header" style="text-align: center;" >카풀 관련 추가 입력칸입니다</div>
										<div class="card-body">
											<div class="carpoolSignin">
											<h2>운전경력?</h2>
											<label><input type="checkbox" style="display: inline;">&nbsp;신입</label>
											<label><input type="checkbox" style="display: inline;">&nbsp;6개월 이내</label>
											<label><input type="checkbox" style="display: inline;">&nbsp;1년~2년</label>
											<label><input type="checkbox" style="display: inline;">&nbsp;2년~5년</label>
											<label><input type="checkbox" style="display: inline;">&nbsp;10년이상</label>
											
											<h2>카시트?</h2>
											<label><input type="checkbox" style="display: inline;">&nbsp;있</label>
											<label><input type="checkbox" style="display: inline;">&nbsp;없</label>
										</div>
									</div>
								</div>
							</div>
							<div class="text" id="dd2">
								<div class="card text-white bg-success mb-3" style="outline: 1px black solid">
									<div class="card-header" style="text-align: center; ">베이비시터 관련 추가 입력칸입니다</div>
									<div class="card-body">
										<div class="babysitterSignin">
											<h2>경력?</h2>
											<label><input type="checkbox" style="display: inline;">&nbsp;신입</label>
											<label><input type="checkbox" style="display: inline;">&nbsp;6개월 이내</label>
											<label><input type="checkbox" style="display: inline;">&nbsp;1년~2년</label>
											<label><input type="checkbox" style="display: inline;">&nbsp;2년~5년</label>
											<label><input type="checkbox" style="display: inline;">&nbsp;10년이상</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="btnBox" >
							<a href="javascript:history.back()" class="grayBt" style="padding-left: 10px">이전단계</a><a href="#" class="yellowBt"style="padding-left: 10px" >가입완료</a>
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
		
		


	</div>
</div> 

	

