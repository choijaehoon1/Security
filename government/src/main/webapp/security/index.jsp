<%--
  /**
  * Class Name : 
  * Description : 
  * Modification Information
  *
  *   수정일                   수정자                      수정내용
  *  -------    --------    ---------------------------
  *  2020. 8. 12.            최초 생성
  *
  * author 실행환경 개발팀
  * since 2020.04.23
  *
  * Copyright (C) 2009 by KandJang  All right reserved.
  */
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="hContext" value="${pageContext.request.contextPath}"></c:set>    
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Skillhunt - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${hContext}/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${hContext}/resources/css/animate.css">
    <link rel="stylesheet" href="${hContext}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${hContext}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${hContext}/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="${hContext}/resources/css/aos.css">
    <link rel="stylesheet" href="${hContext}/resources/css/ionicons.min.css">
    <link rel="stylesheet" href="${hContext}/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${hContext}/resources/css/jquery.timepicker.css">
    <link rel="stylesheet" href="${hContext}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${hContext}/resources/css/icomoon.css">
    <link rel="stylesheet" href="${hContext}/resources/css/style.css">
  </head>
  <body>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container-fluid px-md-4	">
	      <a class="navbar-brand" href="index.html">Skillhunt</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="browsejobs.html" class="nav-link">Browse Jobs</a></li>
	          <li class="nav-item"><a href="candidates.html" class="nav-link">Canditates</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	          <li class="nav-item cta mr-md-1"><a href="new-post.html" class="nav-link">Post a Job</a></li>
	          <li class="nav-item cta cta-colored"><a href="job-post.html" class="nav-link">Want a Job</a></li>

	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap img" style="background-image: url(images/bg_1.jpg);">
      <div class="overlay"></div>
      <div class="container">
      	<div class="row d-md-flex no-gutters slider-text align-items-center justify-content-center">
	        <div class="col-md-10 d-flex align-items-center ftco-animate">
	        	<div class="text text-center pt-5 mt-md-5">
	        		<p class="mb-4">National infrastructure technical security management service</p>
	            	<h1 class="mb-5">국가기반시설 기술적 보안관리 서비스</h1>
						<div class="ftco-counter ftco-no-pt ftco-no-pb">
			        		<div class="row">
				          		<div class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
				            		<div class="block-18">
				             			 <div class="text d-flex">
				             			 	<div class="icon mr-2">
				              					<span class="flaticon-worldwide"></span>
				              				</div>
							              	<div class="desc text-left">
								                <strong class="number" data-number="">0</strong>
								                <span>Countries</span>
							                </div>
							              </div>
							        </div>
				          		</div>
					            <div class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
					            	<div class="block-18 text-center">
					              		<div class="text d-flex">
					              			<div class="icon mr-2">
					              				<span class="flaticon-visitor"></span>
					              			</div>
						              		<div class="desc text-left">
							                	<strong class="number" data-number="">0</strong>
							                	<span>Companies</span>
							              	</div>
					              		</div>
					           	    </div>
					            </div>
					            <div class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
					            	<div class="block-18 text-center">
					              		<div class="text d-flex">
					              			<div class="icon mr-2">
					              				<span class="flaticon-resume"></span>
					              			</div>
					              			<div class="desc text-left">
						                		<strong class="number" data-number="">0</strong>
						                		<span>Active Employees</span>
						              		</div>
					              		</div>
					            	 </div>
					             </div>
				        	</div>
			        	</div>		
	         	  </div>
	         </div>
	     </div>
      </div>
    </div>
    
	<section class="ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">
    		<div class="row">
    			<div class="col-md-12">
    				<div class="category-wrap">
    					<div class="row no-gutters">
    						<div class="col-md-3">
    							<div class="top-category text-center no-border-left">
    								<h3><a href="#">자산 관리</a></h3>
    								<span class="icon flaticon-contact"></span>
    								<p><span class="number">143</span> <span>Open position</span></p>
    							</div>
    						</div>
    						<div class="col-md-3">
    							<div class="top-category text-center">
    								<h3><a href="#">통제항목 관리</a></h3>
    								<span class="icon flaticon-mortarboard"></span>
    								<p><span class="number">143</span> <span>Open position</span></p>
    							</div>
    						</div>
    						<div class="col-md-3">
    							<div class="top-category text-center">
    								<h3><a href="#">보안성 평가 관리</a></h3>
    								<span class="icon flaticon-idea"></span>
    								<p><span class="number">143</span> <span>Open position</span></p>
    							</div>
    						</div>
    						<div class="col-md-3">
    							<div class="top-category text-center">
    								<h3><a href="#">보안 조치 관리</a></h3>
    								<span class="icon flaticon-stethoscope"></span>
    								<p><span class="number">143</span> <span>Open position</span></p>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>
   
    
    <section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center mb-5">
                <div class="col-md-7 heading-section text-center ftco-animate">
          			<span class="subheading">Service Categories</span>
           			<h2 class="mb-0">Major Service</h2>
                </div>
        	</div>
        <div class="row">
        	<div class="col-md-3 ftco-animate">
        		<ul class="category text-center">
        			<li><a href="#">자산 등록 <br><span class="number">354</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
        		</ul>
        	</div>
        	<div class="col-md-3 ftco-animate">
        		<ul class="category text-center">
        			<li><a href="#">통제항목 등록<br><span class="number">100</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
        		</ul>
        	</div>
        	<div class="col-md-3 ftco-animate">
        		<ul class="category text-center">
        			<li><a href="#">보안성 평가<br><span class="number">400</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
        		</ul>
        	</div>
        	<div class="col-md-3 ftco-animate">
        		<ul class="category text-center">
        			<li><a href="#">보안 조치<br><span class="number">324</span> <span>Open position</span></span><i class="ion-ios-arrow-forward"></i></a></li>
        		</ul>
        	</div>
        </div>
    	</div>
    </section>

    <section class="ftco-section services-section">
      <div class="container">
        <div class="row d-flex">
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><span class="flaticon-resume"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Search Millions of Jobs</h3>
                <p>A small river named Duden flows by their place and supplies.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><span class="flaticon-team"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Easy To Manage Jobs</h3>
                <p>A small river named Duden flows by their place and supplies.</p>
              </div>
            </div>    
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><span class="flaticon-career"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Top Careers</h3>
                <p>A small river named Duden flows by their place and supplies.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><span class="flaticon-employees"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Search Expert Candidates</h3>
                <p>A small river named Duden flows by their place and supplies.</p>
              </div>
            </div>      
          </div>
        </div>
      </div>
    </section>




  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${hContext}/resources/js/jquery.min.js"></script>
  <script src="${hContext}/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${hContext}/resources/js/popper.min.js"></script>
  <script src="${hContext}/resources/js/bootstrap.min.js"></script>
  <script src="${hContext}/resources/js/jquery.easing.1.3.js"></script>
  <script src="${hContext}/resources/js/jquery.waypoints.min.js"></script>
  <script src="${hContext}/resources/js/jquery.stellar.min.js"></script>
  <script src="${hContext}/resources/js/owl.carousel.min.js"></script>
  <script src="${hContext}/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${hContext}/resources/js/aos.js"></script>
  <script src="${hContext}/resources/js/jquery.animateNumber.min.js"></script>
  <script src="${hContext}/resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${hContext}/resources/js/google-map.js"></script>
  <script src="${hContext}/resources/js/main.js"></script>
    
  </body>
</html>