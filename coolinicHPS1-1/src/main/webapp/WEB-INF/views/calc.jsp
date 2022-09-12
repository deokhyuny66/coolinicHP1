<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page import="java.util.*"%>
<%@ page import="com.freeze.mybatis.vo.CalcInputEntity"%>
<%@ page import="com.freeze.mybatis.vo.CalcSettingEntity"%>
<%@ page import="com.freeze.mybatis.services.CalcService" %>
<%@ page import="com.freeze.mybatis.dao.CalcDAO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- JSTL POM 추가 및 해당 라인 추가 -->
<%
	request.setCharacterEncoding("utf-8");
	/* 2. 계산 처리 한 py,냉동구분으로 조건 던져서 DB 행 조회 결과 가져오기 */
	//pyl , cmd.getTempVal() 
	/* ModelAndView mav = new ModelAndView(); */
	
	/* mav.addObject("calcSettingList", calcSettingList); */
	/* mav.setViewName("/home.html"); */
	/* 
		1. input 기본 값들로 계산 처리 O
		1-1. DB INSERT O
		2. 계산 처리 한 py,냉동구분으로 조건 던져서 DB 행 조회 결과 가져오기 O
		3. 전체,바닥면적으로 조건 던져서 DB 행 조회 결과 가져오기
		4. 결과 최종 값들 뿌리기 
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <link href="/assets/css/main/slides.css" rel="stylesheet" type="text/css">  
 <link href="/assets/css/theme.css" rel="stylesheet">
 <link href="/assets/lib/prismjs/prism.css" rel="stylesheet">
 <link href="/assets/lib/loaders.css/loaders.min.css" rel="stylesheet">
 <link href="/assets/css/detail/jquery.fancybox.min.css" rel="stylesheet">
 <link href="/assets/css/detail/comm_detail.css" rel="stylesheet">
 <link href="/assets/css/calc/commons.css" rel="stylesheet" type="text/css">
 <link href="/assets/css/calc/est.css" rel="stylesheet" type="text/css">
 <link href="/assets/css/calc/comm_calc.css" rel="stylesheet" type="text/css">
 <link href="https://fonts.googleapis.com/css?family=PT+Mono%7cPT+Serif:400,400i%7cLato:100,300,400,700,800,900" rel="stylesheet">
<style>
	table {
		width: 100%;
		border: 1px solid #ccc;
		text-align: center;
	}
</style>
</head>
<body>
	<div class="page position-absolute t-0 w-100" id="service">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-6 pt-lg-0">

          <!-- ============================================-->
          <!-- <section> begin ============================-->
	      <section>
	      <div id="wrapsv">
			<header id="headersv" class="row_flex">
    			<h2>AI 자동견적 계산기</h2>
  			</header>
			
		  	<section id="sectionsv">
   			<form action="/calc" name="rentalForm" id="rentalForm" method="post">
   			
   			<!-- container_content -->
   			<div class="container_content">
     			<div class="row_flex">
       				<div class="addition" style="width:100%;">
         				<div class="product_size product_info_item">
	      					<h3>견적서 내용</h3>
	      					<!-- <p><img src="/assets/img/calc/size_img.png" alt="빙고 컨테이너 이미지"></p> -->
	           				<table id="20ftMasterList">
		             			<th class="br_l">항목</th>
					            <th colspan="3">세부내역</th>
		             			<tr>
					               	<td>바닥면적</td>
					               	<td colspan="3">${floor_area}</td>
					            </tr>
					            <tr>
					            	<td>전체면적</td>
					            	<td colspan="3">${total_area}</td>
					            </tr>
					            <tr>
					                <td>평수환산</td>
					                <td colspan="3">${pyls}평</td>
					            </tr>
					            <tr>
					                <td>용도</td>
					                <td colspan="3">${store}</td>
					            </tr>
					            <tr>
					                <td>출입구</td>
					                <td colspan="3">${mtype}</td>
					            </tr>
					            <tr>
					                <td>출입구사이즈</td>
					                <td colspan="3">${msize}</td>
					            </tr>
					            <tr>
					                <td>구매형태</td>
					                <td colspan="3">${purchese}</td>
					            </tr>
					            <c:forEach var="calcSettingEntity" items="${calcSettingEntity}">
					            <tr>
					                <td>CDU</td>
					                <td colspan="3">${calcSettingEntity.cdu}</td>
					            </tr>
					            <tr>
					                <td>COOLER</td>
					                <td colspan="3">${calcSettingEntity.cooler}</td>
					            </tr>
					            <tr>
					                <td>콘트롤</td>
					                <td colspan="3">${calcSettingEntity.control}</td>
					            </tr>
					            <tr>
					                <td>팽창밸브</td>
					                <td colspan="3">${calcSettingEntity.ex_valve}</td>
					            </tr>
					            <tr>
					                <td>전자밸브</td>
					                <td colspan="3">${calcSettingEntity.elec_valve}</td>
					            </tr>
					            <tr>
					                <td>고압배관</td>
					                <td colspan="3">${calcSettingEntity.high_piping}</td>
					            </tr>
					            <tr>
					                <td>저압배관</td>
					                <td colspan="3">${calcSettingEntity.row_piping}</td>
					            </tr>
					            <tr>
					                <td>고압 보온재</td>
					                <td colspan="3">${calcSettingEntity.high_lagging}</td>
					            </tr>
					            <tr>
					                <td>저압 보온재</td>
					                <td colspan="3">${calcSettingEntity.row_lagging}</td>
					            </tr>
					            <tr>
					                <td>전원선</td>
					                <td colspan="3">${calcSettingEntity.power}</td>
					            </tr>
					            <tr>
					                <td>조작 보조선 1</td>
					                <td colspan="3">${calcSettingEntity.op_assis1}</td>
					            </tr>
					            <tr>
					                <td>조작 보조선 2</td>
					                <td colspan="3">${calcSettingEntity.op_assis2}</td>
					            </tr>
					            <tr>
					                <td>조작 보조선 3</td>
					                <td colspan="3">${calcSettingEntity.op_assis3}</td>
					            </tr>
					            <tr>
					                <td>엔지니어 수</td>
					                <td colspan="3">${calcSettingEntity.engin_cnt}</td>
					            </tr>
					            <tr>
					                <td>공사기간</td>
					                <td colspan="3">${calcSettingEntity.construc_period}</td>
					            </tr>
					            </c:forEach>
	           				</table>
         				</div>
         				<div class="product_size product_info_item">
	      					<h3>견적서 금액</h3>
	           				<table id="20ftMasterList">
		             			<th class="br_l">항목</th>
		             			<th colspan="3">견적금액<span>(단위:원)</span></th>
		             			<tr>
					               	<td>우레탄 판넬</td>
					               	<td colspan="3">${panel_price}</td>
					            </tr>
					            <tr>
					            	<td>도어</td>
					            	<td colspan="3">${door_price}</td>
					            </tr>
					            <tr>
					                <td>베이스</td>
					                <td colspan="3">${base_price}</td>
					            </tr>
					            <tr>
					                <td>부자재</td>
					                <td colspan="3">${sub_price}</td>
					            </tr>
					            <tr>
					                <th>총 금액</th>
					                <th colspan="3">${total_price}</th>
					            </tr>
	           				</table>
         				</div>
        		      </div>
        			  <!-- addition end -->
                </div>
            </div>	
   		  <!-- container_content end -->
    		</form> 
      		  <footer class="footer" id="individually_footer">
        	      <div class="footer_cont">
          			  <!--calculator_box -->
          			  <div class="calculator_box">
            		      <div class="calculator_cont row_flex">
              			      
              				<!--calculator_cont01-->
              				<div class="calculator_cont02 row_flex" style="justify-content: center">
                				<input type="submit" id="btnSave1" value="다시 조회하기" style="width:40%;margin-right: 10px;" onClick="location.href='http://localhost:8080/#service'">
                				<input type="submit" id="btnSave2" value="PDF 다운 및 신청하기" style="width:40%;">
              				</div>
              				<!--calculator_cont02-->
            			</div>
            			<!--calculator_cont end-->
    
            			<div class="notice" style="text-align: center;">
              				<p>다음 금액은 부가세를 포함한 금액이며, 설치현장 환경에 따라 추가 비용(크레인, 지게차 등)이 발생할 수 있습니다.</p>
            			</div>
            			<!--notice-->
          			</div>
          			<!--calculator_box-->
        		</div>
      		</footer>
	    	
		    </section>
			</div>
            </section>

            <footer class="page-footer">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/service.jpg);background-position: 0 41%; transform: scale(1.1);">
              </div>
              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0"></div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative" onclick="location.href='http://localhost:8080/'">
            <div class="h-lg-100vh sticky-top py-4 sticky-area">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/service.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">AI 자동견적</h1>
            </div>
          </div>
        </div>
      </div>
</body>
</html>