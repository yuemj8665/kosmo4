<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>
	<p>The time on the server is ${serverTime}.</p>
	<fieldset>
		<legend>static resource(이미지,동영상,.css,.js파일등) 표시방법</legend>
		<h2>webapp/resources아래에 있는 정적 리소스 표시</h2>
		<img src="resources/images/baby.png" alt="webapp/resources"/>
		<h2>기본 정적 파일 참조 resources태그 적용- wepapp에 images폴더 생성한 경우</h2>
		<%-- <img src="<c:url value='/images/baby.png'/>" alt="webapp/images"/>
		<h2>resources태그를 추가해서 매핑 패턴을 temporary로 설정한 경우</h2>
		<img src="<c:url value='/temporary/baby.png'/>" alt="webapp/images"/> --%>
	</fieldset>
	
</body>
</html>
