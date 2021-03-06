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

<%@page import="com.sist.security.cmn.SearchVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.sist.security.cmn.StringUtil"%>
<c:set var="hContext" value="${pageContext.request.contextPath}"></c:set>

<%
	final String H_PATH = request.getContextPath();
	SearchVO searchVO = (SearchVO)request.getAttribute("searchVO");
	
	int totalCnt= 0;	
	
	totalCnt = (Integer)request.getAttribute("totalCnt");
	//out.print("totalCnt:"+ totalCnt);
	
	//paging
	//public static String renderPaging(int maxNum, int currPageNo, int rowPerPage, int bottomCount,
	//String url, String scriptName) {
	String url = H_PATH + "/security/asset/do_retrieve";
	String scriptName = "doSearchPage";
	int maxNum = 0; //총글수
	int currPageNo = 1;//현재페이지
	int rowPerPage = 10; //한번에 보여줄 글수
	int bottomCount = 5;//바닥글수
	
	if(null != searchVO){
		currPageNo = searchVO.getPageNum();
		rowPerPage = searchVO.getPageSize();
		maxNum = totalCnt;
	}


%>

    
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>국가기반시설 자산리스트</title>
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
	      <a class="navbar-brand" href="${hContext}/security/index.jsp">Home</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="${hContext}/security/index.jsp" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="${hContext}/security/asset/do_retrieve?pageNum=1&pageSize=10&searchDiv=&searchWord=" class="nav-link">자산 관리</a></li>
	          <li class="nav-item"><a href="#" class="nav-link">통제항목 관리</a></li>
	          <li class="nav-item"><a href="#" class="nav-link">보안성평가 관리</a></li>
	          <li class="nav-item"><a href="#" class="nav-link">보안조치 관리</a></li>
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
          	<p class="breadcrumbs mb-0"><span class="mr-3"><a href="${hContext}/security/index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Asset</span></p>
            <h1 class="mb-3 bread">Asset List</h1>
          </div>
        </div>
      </div>
    </div>
    <!-- div container -->
    <div class="container">
    	<!-- 검색영역 -->
    		<div class="row float-right">
    			<div class="col-md-12 text-right">
	    			<form action="${hContext}/security/asset/do_retrieve" id="asset_frm" name="asset_frm" method="get" class="form-inline" role="form">
	    				<input type="hidden" id="pageNum" name="pageNum" value="${param.pageNum}">
	    				<input type="hidden" id="assetNum" name="assetNum">
	    				<div class="form_group form-group-lg" >
	    					<select id="pageSize" name="pageSize" class="form-control input-lg">
	    						<option value="10"
	    							<c:if test ="${param.pageSize=='10'}">selected="selected" </c:if> >10
	    						</option>
	    						<option value="20"
	    							<c:if test ="${param.pageSize=='20'}">selected="selected" </c:if> >20
	    						</option>
	    						<option value="50"
	    							<c:if test ="${param.pageSize=='50'}">selected="selected" </c:if> >50
	    						</option>
	    						<option value="100"
	    							<c:if test ="${param.pageSize=='100'}">selected="selected" </c:if> >100
	    						</option>
	    					</select>
	    					<select id="searchDiv" name="searchDiv" class="form-control input-lg">
	    						<option value="">전체</option>
	    						<option value="10"
	    							<c:if test ="${param.searchDiv=='10'}">selected="selected" </c:if> >자산번호
	    						</option>
	    						<option value="20"
	    							<c:if test ="${param.searchDiv=='20'}">selected="selected" </c:if> >자산유형
	    						</option>
	    						<option value="30"
	    							<c:if test ="${param.searchDiv=='30'}">selected="selected" </c:if> >수행자
	    						</option>
	    					</select>
	    					<input type="text" class="form-control" style="width: 40%" id="searchWord" name="searchWord" value="${vo.searchWord}" placeholder="검색어">
	    					<button type="button" onclick="javascript:doRetrieve();" class="btn btn-primary btn-sm">조회</button>
	    					<button type="button" onclick="javascript:doInsert();" class="btn btn-primary btn-sm">등록</button>
	    				</div>
	    			</form>
	    		
    			</div>
    		</div>
    	<!-- //검색영역 -->
    	
    	<!-- Grid 영역 -->
    	<div class="table-responsive">
    		<table class="table table-hover" id="listTable">
    			<thead class="bg-primary">
    			<tr>
    				<th style="width: 15%" class="text-center">자산번호</th>
    				<th style="width: 15%" class="text-center">자산유형</th>
    				<th style="width: 15%" class="text-center">HW속성</th>
    				<th style="width: 15%" class="text-center">SW속성</th>
    				<th style="width: 15%" class="text-center">통신I/F</th>
    				<th style="width: 15%" class="text-center">수행자</th>
    			</tr>	
    			</thead>
    			<tbody>
    			<c:choose>
    				<c:when test="${list.size() >0 }">
    				<c:forEach var="vo" items="${list}">
	    				<tr>
	    					<td class="text-center">${vo.assetNum}</td>
	    					<td class="text-center">${vo.assetType}</td>
	    					<td class="text-center">${vo.featureHw}</td>
	    					<td class="text-center">${vo.featureSw}</td>
	    					<td class="text-center">${vo.interfaceType}</td>
	    					<td class="text-center">${vo.assetPerformer}</td>
	    				</tr>
    				</c:forEach>
    				</c:when>	
    			</c:choose>
    			</tbody>
    		</table>
    	</div>
    	<!-- //Grid 영역 -->
    	
   </div>
	<!-- //div container -->	
	
	<!-- pagenation -->
      <div class="row mt-5">
      		<%=StringUtil.renderPaging(maxNum, currPageNo, rowPerPage, bottomCount, url, scriptName) %>
      </div>
      <!--// pagenation -->
	

	
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
  <script type="text/javascript">
  	function doRetrieve(){
		var frm = document.asset_frm;
		frm.pageNum.value = 1; // 초기값
		frm.action = "${hContext}/security/asset/do_retrieve";
		frm.submit();
	}

	function doInsert(){
		location.href="${hContext}/security/assetInsert.jsp";
	}

  	function doSearchPage(url,no){
		//console.log("url:" + url);
		//console.log("no:" + no);
		var frm = document.asset_frm;
		frm.pageNum.value = no;
		frm.action = url;
		frm.submit();
	}

	$("#listTable>tbody").on("click","tr",function(){
		var trs = $(this);
		var tds = trs.children();
		var assetNum = tds.eq(0).text();
		//console.log(assetNum);

		var frm = document.asset_frm;
		frm.assetNum.value = assetNum;
		frm.action = "${hContext}/security/asset/do_select_one";
		frm.submit();		
	});
	
  </script>  
  </body>
</html>