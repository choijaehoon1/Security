<%--
  /**
  * Class Name : 
  * Description : 
  * Modification Information
  *
  *   수정일                   수정자                      수정내용
  *  -------    --------    ---------------------------
  *  2020. 10. 27.            최초 생성
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
	          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="browsejobs.html" class="nav-link">Browse Jobs</a></li>
	          <li class="nav-item"><a href="candidates.html" class="nav-link">Canditates</a></li>
	          <li class="nav-item active"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	          <li class="nav-item cta mr-md-1"><a href="new-post.html" class="nav-link">Post a Job</a></li>
	          <li class="nav-item cta cta-colored"><a href="job-post.html" class="nav-link">Want a Job</a></li>

	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-12 ftco-animate text-center mb-5">
          	<p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-3"><a href="blog.html">Blog <i class="ion-ios-arrow-forward"></i></a></span> <span>Blog Single</span></p>
            <h1 class="mb-3 bread">Single Blog</h1>
          </div>
        </div>
      </div>
    </div>




	<section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
          <div class="col-md-8 ftco-animate">
                <h3 class="mb-5">자산 등록</h3>
                <form action="#" class="p-5 bg-light">
                  <div class="form-group">
                    <label for="assetNum">자산번호</label>
                    <input type="text" class="form-control" id="assetNum">
                  </div>
                  <div class="form-group">
                    <label for="assetType">자산유형</label>
                    <input type="text" class="form-control" id="assetType">
                  </div>
                  <div class="form-group">
                    <label for="featureHw">HW속성</label>
                    <input type="text" class="form-control" id="featureHw">
                  </div>
                  <div class="form-group">
                    <label for="featureSw">SW속성</label>
                    <input type="text" class="form-control" id="featureSw">
                  </div>
                  <div class="form-group">
                    <label for="interfaceType">통신I/F</label>
                    <input type="text" class="form-control" id="interfaceType">
                  </div>
                  <div class="form-group">
                    <label for="assetPerformer">수행자</label>
                    <input type="text" class="form-control" id="assetPerformer">
                  </div>
                  
                  <div class="form-group" align="center">
                    	<input type="button" value="Asset Insert" class="btn py-3 px-4 btn-primary" id="Insert_btn">
                  </div>

                </form>
              
            

          </div> <!-- .col-md-8 -->
          <div class="col-md-4 pl-md-5 sidebar ftco-animate">
            
            <div class="sidebar-box ftco-animate">
              <div class="categories">
                <h3 class="heading-3">Jobs</h3>
                <li><a href="#">Graphic Designer <span>(12)</span></a></li>
                <li><a href="#">Visual Assistant <span>(22)</span></a></li>
                <li><a href="#">Programing <span>(37)</span></a></li>
                <li><a href="#">Office Admin <span>(42)</span></a></li>
                <li><a href="#">Web Designer <span>(14)</span></a></li>
                <li><a href="#">Language <span>(140)</span></a></li>
              </div>
            </div>

            

            <div class="sidebar-box ftco-animate">
              <h3 class="heading-3">Tag Cloud</h3>
              <div class="tagcloud">
                <a href="#" class="tag-cloud-link">dish</a>
                <a href="#" class="tag-cloud-link">menu</a>
                <a href="#" class="tag-cloud-link">food</a>
                <a href="#" class="tag-cloud-link">sweet</a>
                <a href="#" class="tag-cloud-link">tasty</a>
                <a href="#" class="tag-cloud-link">delicious</a>
                <a href="#" class="tag-cloud-link">desserts</a>
                <a href="#" class="tag-cloud-link">drinks</a>
              </div>
            </div>

            <div class="sidebar-box ftco-animate">
              <h3 class="heading-3">Paragraph</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
            </div>
          </div>

        </div>
      </div>
    </section> <!-- .section -->
		


	<section class="ftco-section services-section">
      <div class="container">
        <div class="row d-flex">
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><span class="flaticon-resume"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Coming Soon</h3>
                <p>If you don't want to regret your life, change it.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><span class="flaticon-team"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Coming Soon</h3>
                <p>If you don't want to regret your life, change it.</p>
              </div>
            </div>    
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><span class="flaticon-career"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Coming Soon</h3>
                <p>If you don't want to regret your life, change it.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
              <div class="icon"><span class="flaticon-employees"></span></div>
              <div class="media-body">
                <h3 class="heading mb-3">Coming Soon</h3>
                <p>If you don't want to regret your life, change it.</p>
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
  
  <script src="${hContext}/resources/js/jquery-migrate-1.4.1.js"></script>
  <script src="${hContext}/resources/js/bootstrap.min.js"> </script>
  <script type="text/javascript">
	$("#Insert_btn").on("click",function(){
		var assetNum = $("#assetNum").val().trim();
		if(assetNum == null || assetNum.length < 1){
			$("#assetNum").focus();
			alert("자산번호를 입력하세요");
			return;
		}

		var assetType = $("#assetType").val().trim();
		if(assetType == null || assetType.length < 1){
			$("#assetType").focus();
			alert("자산유형을 입력하세요");
			return;
		}

		var featureHw = $("#featureHw").val().trim();
		if(featureHw == null || featureHw.length < 1){
			$("#featureHw").focus();
			alert("HW속성을 입력하세요");
			return;
		}

		var featureSw = $("#featureSw").val().trim();
		if(featureSw == null || featureSw.length < 1){
			$("#featureSw").focus();
			alert("SW속성을 입력하세요");
			return;
		}
		
		var interfaceType = $("#interfaceType").val().trim();
		if(interfaceType == null || interfaceType.length < 1){
			$("#interfaceType").focus();
			alert("통신 I/F속성을 입력하세요");
			return;
		}

		var assetPerformer = $("#assetPerformer").val().trim();
		if(assetPerformer == null || assetPerformer.length < 1){
			$("#assetPerformer").focus();
			alert("수행자를 입력하세요");
			return;
		}

		if(confirm("등록하시겠습니까?") == false) return;

		$.ajax({
        	type:"POST",
            url:"${hContext}/security/asset/do_insert",
            dataType:"html", 
            data:{ 
                     "assetNum":assetNum,
                     "assetType":assetType,
                     "featureHw":featureHw,
                     "featureSw":featureSw,
                     "interfaceType":interfaceType,
                     "assetPerformer":assetPerformer
            },
            success:function(data){ //성공
            //alert(data);
            var jData = JSON.parse(data);
            if(null != jData && jData.msgId=="1"){
                //alert(jData.msgMsg);
                doRetrieve();
            }else{
            	alert(jData.msgMsg);
                 
            }
        
	        },
	        error:function(xhr,status,error){
	            alert("error:"+error);
	        },
	        complete:function(data){
        
        }   
        
		});//--ajax
		
		
	});

	function doRetrieve(){
		location.href="${hContext}/security/asset/do_retrieve?pageNum=1&pageSize=10&searchDiv=&searchWord=";
	}
	

  		
  </script>
    
  </body>
</html>