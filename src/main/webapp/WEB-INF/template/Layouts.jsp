<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>

<html lang="en">
  <head>
    <title>육아육아해</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- 카톡로그인 -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>

	<!--  -->
	<link rel="stylesheet" href="Bootstrap/css/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900|Display+Playfair:200,300,400,700">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">
    <link rel="stylesheet" href="Bootstrap/fonts/icomoon/style.css">
    <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="Bootstrap/css/magnific-popup.css">
    <link rel="stylesheet" href="Bootstrap/css/jquery-ui.css">
    <link rel="stylesheet" href="Bootstrap/css/owl.carousel.min.css">
    <link rel="stylesheet" href="Bootstrap/css/owl.theme.default.min.css">
    

    <link rel="stylesheet" href="Bootstrap/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="Bootstrap/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="Bootstrap/css/ekko-lightbox.css">

    <link rel="stylesheet" href="Bootstrap/css/aos.css">
    <!-- 로그인 -->
    <link rel="stylesheet" href="<c:url value='/Bootstrap/css/login/common.css'/>">
	<link rel="stylesheet" href="<c:url value='/Bootstrap/css/login/nh.css'/>">
	<link rel="stylesheet" href="<c:url value='/Bootstrap/css/login/nh2.css'/>">
    

    
    
    
    
    
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
     <script src="Bootstrap/js/jquery-3.3.1.js"></script>
	 <script src="Bootstrap/js/jquery-migrate-3.0.1.min.js"></script>
	 <script src="Bootstrap/js/jquery-ui.js"></script>
	 <script src="Bootstrap/js/popper.min.js"></script>
	 
	 <script src="Bootstrap/js/owl.carousel.min.js"></script>
	 <script src="Bootstrap/js/jquery.stellar.min.js"></script>
	 <script src="Bootstrap/js/jquery.countdown.min.js"></script>
	 <script src="Bootstrap/js/jquery.magnific-popup.min.js"></script>
	 <script src="Bootstrap/js/ekko-lightbox.js"></script>
	 <script src="Bootstrap/js/bootstrap.min.js"></script>
	 <script src="Bootstrap/js/bootstrap-datepicker.min.js"></script>
	 <script src="Bootstrap/js/aos.js"></script>
	 
	
	 
  </head>
  
<body>
	<!-- 탑 부분  -->
	

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
	
	<tiles:insertAttribute name="Top"/>
	<!-- 바디부분 -->
	<tiles:insertAttribute name="Body"/>
	<!-- 푸터 부분 -->
	<tiles:insertAttribute name="Footer"/>
		
	
	
</body>
</html>