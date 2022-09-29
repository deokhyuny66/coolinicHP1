<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page import="java.util.*"%>
<%@ page import="com.freeze.mybatis.vo.CalcInputEntity"%>
<%@ page import="com.freeze.mybatis.vo.CalcSettingEntity"%>
<%@ page import="com.freeze.mybatis.services.CalcService" %>
<%@ page import="com.freeze.mybatis.dao.CalcDAO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- JSTL POM 추가 및 해당 라인 추가 -->
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="/assets/css/main/slides.css" rel="stylesheet" type="text/css">
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
 <link href="/assets/css/theme.css" rel="stylesheet">
 <link href="/assets/lib/prismjs/prism.css" rel="stylesheet">
 <link href="/assets/lib/loaders.css/loaders.min.css" rel="stylesheet">
 <link href="/assets/css/detail/comm_detail.css" rel="stylesheet">
 <link href="/assets/css/calc/commons.css" rel="stylesheet" type="text/css">
 <link href="/assets/css/calc/est.css" rel="stylesheet" type="text/css">
 <link href="/assets/css/calc/comm_calc.css" rel="stylesheet" type="text/css">
 <link href="https://fonts.googleapis.com/css?family=PT+Mono%7cPT+Serif:400,400i%7cLato:100,300,400,700,800,900" rel="stylesheet">
<style>
@import url(https://fonts.googleapis.com/css?family=Montserrat:400,700);

#loadings {
  	width: 80%;
  	height: 100%;
  	top: 0;
  	left: 0;
  	position: fixed;
  	display: block;
  	opacity: 0.6;
  	background: #000;
  	z-index: 99;
  	text-align: center;
}
#loadings > img {
  	position: absolute;
  	top: 50%;
  	left: 50%;
  	z-index: 100;
}
#loadings > p {
   	position: absolute;
   	top: 57%;
   	left: 43%;
   	z-index: 101;
   	font-color: #fff;
}

table {
	width: 100%;
	border: 1px solid #ccc;
	text-align: center;
}

.blur {
	filter: blur(4px);
   	-webkit-filter: blur(4px);
}
	
footer .page-wrapper {
  width: 100%;
  height: 100%;
  background: url(https://goo.gl/OeVhun) center no-repeat;
  background-size: cover;
}

#rentalReqForm a.btn {
  width: 200px;
  padding: 18px 0;
  position: absolute;
  top: 50%; 
  left: 50%;
  transform: translate(-50%, -50%);
  font-family: 'Montserrat', Arial, Helvetica, sans-serif;
  font-weight: 700;
  text-align: center;
  text-decoration: none;
  text-transform: uppercase;
  color: #fff;
  border-radius: 0;
  background: #e2525c;
}

#rentalReqForm .modal-wrapper {
  width: 100%;
  height: 100%;
  position: fixed;
  top: 0; 
  left: 0;
  visibility: hidden;
  background: rgba(255, 255, 255, 0.8);
  opacity: 0;
  transition: all 0.25s ease-in-out;
}

#rentalReqForm .modal-wrapper.open {
  opacity: 1;
  visibility: visible;
}

#rentalReqForm .modal-wrapper.close {
  opacity: 0;
  visibility: hidden;
}

#rentalReqForm .modal-wrapper.open .modal {
  margin-top: -200px;
  opacity: 1;
}

#rentalReqForm .head { 
  width: 100%;
  /* height: 32px; */
  padding: 12px 30px;
  overflow: hidden;
  background: #e2525c;
}

#rentalReqForm .btn-closeX {
  font-size: 28px !important;
  display: block !important;
  float: right !important;
  color: #fff !important;
}

#rentalReqForm .contentX {
  padding: 10% !important;
}

#rentalReqForm .good-job {
  text-align: center;
  font-family: 'Montserrat', Arial,       Helvetica, sans-serif;
  color: #e2525c;
}
#rentalReqForm .good-job .fa-thumbs-o-up {
  font-size: 60px;
}
#rentalReqForm .good-job h1 {
  font-size: 45px;
}
	
@media screen and (min-width:900px) {
	#rentalReqForm .modal {
	  width: 600px;
	  height: 650px;
	  display: block;
	  margin: 50% 0 0 -500px;
	  position: relative;
	  top: 30%; 
	  left: 50%;
	  background: #fff;
	  opacity: 0;
	  transition: all 0.5s ease-in-out;
	  box-shadow: 2px 2px 2px 1px rgb(0 0 0 / 5%);
	  border-radius: 10px;
	}
}
@media screen and (min-width:480px) and (max-width:700px)  {
	#rentalReqForm .modal {
		width: 90%;
	    height: 650px;
	    display: block;
	    margin: 50% 0 0 -500px;
	    position: relative;
	    top: 30%;
	    left: 108%;
	    background: #fff;
	    opacity: 0;
	    transition: all 0.5s ease-in-out;
	    box-shadow: 2px 2px 2px 1px rgb(0 0 0 / 5%);
	    border-radius: 10px;
	}
}



footer #btnSave2 {
    line-height: 53px !important;
    background-color: #fff !important;
    border-radius: 10px !important;
    text-align: center !important;
    width: 40% !important;
    font-weight: bold !important;
    border: none !important;
    height: 53px !important;
    cursor: pointer !important;
}


/* 임의의 영역 생성 */
.scrollBar { 
  height: 200px;
  overflow-y: scroll;
}

/* 아래의 모든 코드는 영역::코드로 사용 */

.scrollBar::-webkit-scrollbar {
    width: 10px;  /* 스크롤바의 너비 */
}

.scrollBar::-webkit-scrollbar-thumb {
    height: 30%; /* 스크롤바의 길이 */
    background: #aaa; /* 스크롤바의 색상 */
    
    border-radius: 10px;
}

textarea {
	align-items: center;
    justify-content: space-between;
    padding: 0 20px;
    border-radius: 10px;
    border: 1px solid rgba(69, 94, 234, 0.3);
    cursor: pointer;
    height: 130px;
    width: 100%;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	  <div id="loadings" style="margin-left: 0px;">
  		<img src="/assets/img/lodding.gif">
  		<p style="color:#fff;">전송 중 입니다. 잠시 기다려주세요.</p>
	  </div>
	  
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
   			<form action="/ai-calcProc" name="rentalReqForm" id="rentalReqForm" method="post" onsubmit="return submitCheck();">
   			<input type="hidden" name="widProc" id="widProc" value="${wid}">
   			<input type="hidden" name="vertProc" id="vertProc" value="${vert}">
   			<input type="hidden" name="hegProc" id="hegProc" value="${heg}">
   			<input type="hidden" name="floor_areaProc" id="floor_areaProc" value="${floor_area}">
   			<input type="hidden" name="total_areaProc" id="total_areaProc" value="${total_area}">
   			<input type="hidden" name="pylsProc" id="pylsProc" value="${pyls}">
   			<input type="hidden" name="storeProc" id="storeProc" value="${store}">
   			<input type="hidden" name="temper_typeProc" id="temper_typeProc" value="${temper_type}">
   			<input type="hidden" name="mtypeProc" id="mtypeProc" value="${mtype}">
   			<input type="hidden" name="msizeProc" id="msizeProc" value="${msize}">
   			<input type="hidden" name="purcheseProc" id="purcheseProc" value="${purchese}">
   			<input type="hidden" name="cduProc" id="cduProc" value="${cdu}">
   			<input type="hidden" name="coolerProc" id="coolerProc" value="${cooler}">
   			<input type="hidden" name="controlProc" id="controlProc" value="${control}">
   			<input type="hidden" name="ex_valveProc" id="ex_valveProc" value="${ex_valve}">
   			<input type="hidden" name="elec_valveProc" id="elec_valveProc" value="${elec_valve}">
   			<input type="hidden" name="high_pipingProc" id="high_pipingProc" value="${high_piping}">
   			<input type="hidden" name="row_pipingProc" id="row_pipingProc" value="${row_piping}">
   			<input type="hidden" name="high_laggingProc" id="high_laggingProc" value="${high_lagging}">
   			<input type="hidden" name="row_laggingProc" id="row_laggingProc" value="${row_lagging}">
   			<input type="hidden" name="powerProc" id="powerProc" value="${power}">
   			<input type="hidden" name="op_assis1Proc" id="op_assis1Proc" value="${op_assis1}">
   			<input type="hidden" name="op_assis2Proc" id="op_assis2Proc" value="${op_assis2}">
   			<input type="hidden" name="op_assis3Proc" id="op_assis3Proc" value="${op_assis3}">
   			<input type="hidden" name="construc_periodProc" id="construc_periodProc" value="${construc_period}">
   			<input type="hidden" name="panel_priceProc" id="panel_priceProc" value="${panel_price}">
   			<input type="hidden" name="door_priceProc" id="door_priceProc" value="${door_price}">
   			<input type="hidden" name="base_priceProc" id="base_priceProc" value="${base_price}">
   			<input type="hidden" name="sub_priceProc" id="sub_priceProc" value="${sub_price}">
   			<input type="hidden" name="total_priceProc" id="total_priceProc" value="${total_price}">
   			
   			<!-- container_content -->
   			<div class="container_content">
     			<div class="row_flex">
       				<div class="addition" style="width:100%;">
         				<div class="product_size product_info_item">
	      					<h3>견적서 내용</h3>
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
					            <tr>
					                <td>CDU</td>
					                <td colspan="3" class="blur">35</td>
					            </tr>
					            <tr>
					                <td>COOLER</td>
					                <td colspan="3" class="blur">2HP</td>
					            </tr>
					            <tr>
					                <td>콘트롤</td>
					                <td colspan="3" class="blur">6HP</td>
					            </tr>
					            <tr>
					                <td>팽창밸브</td>
					                <td colspan="3" class="blur">200V</td>
					            </tr>
					            <tr>
					                <td>전자밸브</td>
					                <td colspan="3" class="blur">2.6V</td>
					            </tr>
					            <tr>
					                <td>고압배관</td>
					                <td colspan="3" class="blur">High</td>
					            </tr>
					            <tr>
					                <td>저압배관</td>
					                <td colspan="3" class="blur">Row</td>
					            </tr>
					            <tr>
					                <td>고압 보온재</td>
					                <td colspan="3" class="blur">Lagging High</td>
					            </tr>
					            <tr>
					                <td>저압 보온재</td>
					                <td colspan="3" class="blur">Lagging Row</td>
					            </tr>
					            <tr>
					                <td>전원선</td>
					                <td colspan="3" class="blur">220V</td>
					            </tr>
					            <tr>
					                <td>조작 보조선 1</td>
					                <td colspan="3" class="blur">2.14A</td>
					            </tr>
					            <tr>
					                <td>조작 보조선 2</td>
					                <td colspan="3" class="blur">5.4A</td>
					            </tr>
					            <tr>
					                <td>조작 보조선 3</td>
					                <td colspan="3" class="blur">9A</td>
					            </tr>
					            <tr>
					                <td>엔지니어 수</td>
					                <td colspan="3" class="blur">고급엔지니어 2명</td>
					            </tr>
					            <tr>
					                <td>공사기간</td>
					                <td colspan="3" class="blur">1일/3일 = 총4일</td>
					            </tr>
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
					                <td>CDU</td>
					                <td colspan="3" class="blur">535,000</td>
					            </tr>
					            <tr>
					                <td>COOLER</td>
					                <td colspan="3" class="blur">1,250,000</td>
					            </tr>
					            <tr>
					                <td>콘트롤</td>
					                <td colspan="3" class="blur">400,000</td>
					            </tr>
					            <tr>
					                <td>팽창밸브</td>
					                <td colspan="3" class="blur">50,000</td>
					            </tr>
					            <tr>
					                <td>전자밸브</td>
					                <td colspan="3" class="blur">50,000</td>
					            </tr>
					            <tr>
					                <td>고압배관</td>
					                <td colspan="3" class="blur">35,000</td>
					            </tr>
					            <tr>
					                <td>저압배관</td>
					                <td colspan="3" class="blur">15,000</td>
					            </tr>
					            <tr>
					                <td>고압 보온재</td>
					                <td colspan="3" class="blur">1M 25,000</td>
					            </tr>
					            <tr>
					                <td>저압 보온재</td>
					                <td colspan="3" class="blur">1M 15,000</td>
					            </tr>
					            <tr>
					                <td>전원선</td>
					                <td colspan="3" class="blur">1M 10,000</td>
					            </tr>
					            <tr>
					                <td>조작 보조선 1</td>
					                <td colspan="3" class="blur">5,090</td>
					            </tr>
					            <tr>
					                <td>조작 보조선 2</td>
					                <td colspan="3" class="blur">5,500</td>
					            </tr>
					            <tr>
					                <td>조작 보조선 3</td>
					                <td colspan="3" class="blur">6,250</td>
					            </tr>
					            <tr>
					                <td>엔지니어 수</td>
					                <td colspan="3" class="blur">총 4일/600,000</td>
					            </tr>
					            <tr>
					                <td>공사기간</td>
					                <td colspan="3" class="blur">1일/3일 = 총4일</td>
					            </tr>
					            <tr>
					                <th>총 금액</th>
					                <th colspan="3">${total_price}</th>
					            </tr>
	           				</table>
	           				<h5 style="color:#777;">해당 견적서는 일부 내역과 금액만 표시되는 스탠다드 견적서이며,<br/>
	           				"상세 견적서 요청"을 통하여 입력 된 정보들을 기반으로 상세 견적서를 받아보실 수 있습니다.</h5>
         				</div>
        		      </div>
        			  <!-- addition end -->
                </div>
            </div>	
   		  <!-- container_content end -->
    		 
    		 
    		 <!-- 모달 -->
    		 <div class="modal-wrapper">
			  <div class="modal scrollBar">
			    <div class="head">
			      <a class="btn-closeX trigger" href="#">
			        <i class="fa fa-times" aria-hidden="true"></i>
			      </a>
			    </div>
			    <div class="contentX">
			    	<div class="cont_box tab_common_cont">
			    		<label for="nameNM"><h3>고객명</h3></label>
	   					<div class="item">
	     					<input type="text" id="nameNM" name="nameNM" placeholder="고객명" onchange="inputValueWidChange();" required>
	   						<div class="error-msg1" style="padding:5px 0 0 5px;font-size:12px;color:red;background-color: #F4F7FF;"></div>
	   					</div>
   						<label for="companyNM"><h3>기업명</h3></label>
	   					<div class="item">
	     					<input type="text" id="companyNM" name="companyNM" placeholder="기업명" onchange="inputValueVertChange();" required>
	     					<div class="error-msg2" style="padding:5px 0 0 5px;font-size:12px;color:red;background-color: #F4F7FF;"></div>
	   					</div>
	   					<label for="cellphone"><h3>연락처</h3></label>
	   					<div class="item">
	     					<input type="text" id="cellphone" name="cellphone" placeholder="연락처" onchange="inputValueHegChange();" required>
	     					<div class="error-msg3" style="padding:5px 0 0 5px;font-size:12px;color:red;background-color: #F4F7FF;"></div>
	   					</div>
	   					<label for="hopeDate"><h3>설치희망날짜</h3></label>
	   					<div class="item">
	     					<input type="text" id="hopeDate" name="hopeDate" placeholder="설치를 희망하시는 날짜를 입력해주세요" onchange="inputValueHegChange();" required>
	     					<div class="error-msg3" style="padding:5px 0 0 5px;font-size:12px;color:red;background-color: #F4F7FF;"></div>
	   					</div>
	   					<label for="address"><h3>설치주소</h3></label>
	   					<div class="item">
	     					<input type="text" id="address" name="address" placeholder="설치주소" onchange="inputValueHegChange();" required>
	     					<div class="error-msg3" style="padding:5px 0 0 5px;font-size:12px;color:red;background-color: #F4F7FF;"></div>
	   					</div>
	   					<label for="reqContact"><h3>요청/문의사항</h3></label>
	   					<div class="item">
	     					<textarea id="reqContact" class="scrollBar" name="reqContact" rows="5" cols="33"></textarea>
	     					<div class="error-msg3" style="padding:5px 0 0 5px;font-size:12px;color:red;background-color: #F4F7FF;"></div>
	   					</div>
	   					<label for="agree_all" style="cursor: pointer;">
						  <input type="checkbox" name="agree_all" id="agree_all" style="cursor: pointer;">
						  <span>전체동의</span>
						</label>
						<br/>
						<label for="agree">
						  <input type="checkbox" name="agree" id="agree_o" value="1" required>
						  <span>이용약관 동의 전체보기<strong>(필수)</strong></span>
						</label>
						<br/>
						<label for="agree">
						  <input type="checkbox" name="agree" id="agree_p" value="2" required>
						  <span>개인정보 취급방침 동의 전체보기<strong>(필수)</strong></span>
						</label>
   					</div>
   					<div class="calculator_cont row_flex">
           				<div class="calculator_cont02 row_flex page-wrapper" style="justify-content: center">
             				<input type="submit" id="btnSave3" value="상세 견적서 받을게요" style="background: #2251A1;color:#fff;">
           				</div>
           			</div>   			
			    </div>
			  </div>
			</div>
    		 
    		 
      		  <footer class="footer" id="individually_footer">
        	      <div class="footer_cont">
          			  <!--calculator_box -->
          			  <div class="calculator_box">
            		      <div class="calculator_cont row_flex">
              			      
              				<!--calculator_cont01-->
              				<div class="calculator_cont02 row_flex page-wrapper" style="justify-content: center">
                				<input type="submit" id="btnSave1" value="다시 조회" style="width:40%;margin-right: 10px;" onClick="location.href='http://localhost:8080/#ai'">
                				<input type="button" id="btnSave2" class="trigger" value="상세 견적서 요청" style="width:40%;">
              				</div>
              				<!--calculator_cont02-->
            			</div>
            			<!--calculator_cont end-->
    
            			<div class="notice" style="text-align: center;">
              				<p>다음 금액은 부가세가 포함 안 된 금액이며, 설치현장 환경에 따라 추가 비용이 발생할 수 있습니다.</p>
            			</div>
            			<!--notice-->
          			</div>
          			<!--calculator_box-->
        		</div>
      		</footer>
	    	</form>
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
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative" onclick="location.href='http://localhost:8080'">
            <div class="h-lg-100vh sticky-top py-4 sticky-area">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/service.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">AI 자동견적</h1>
            </div>
          </div>
        </div>
      </div>
      
	<script>
	var obj = document.getElementById("loadings");
	obj.style.display = "none";
	
	function submitCheck() {
		var agree_all = $('#agree_all').val();
		var agree_o = $('#agree_o').val();
		var agree_p = $('#agree_p').val();
		
		if(agree_all != 'on'){
			$("#agree_all").focus();
			return false;
		}
		
		if(agree_o != '1'){
			$("#agree_o").focus();
			return false;
		}
		if(agree_p != '2'){
			$("#agree_p").focus();
			return false;
		}else{
			$('#loadings').show();
		}
		
	    return true;
	}
	
	// 동의 모두선택 / 해제
	const agreeChkAll = document.querySelector('input[name=agree_all]');
	    agreeChkAll.addEventListener('change', (e) => {
			let agreeChk = document.querySelectorAll('input[name=agree]');
			for(let i = 0; i < agreeChk.length; i++){
				agreeChk[i].checked = e.target.checked;
			}
	});
	    
	 /* Toggle 추가 */
	  $('footer #btnSave2').on('click', function() {
		  if($('#rentalReqForm .modal-wrapper').hasClass("close")) {
			  $('#rentalReqForm .modal-wrapper').addClass("open").removeClass("close");
		  }else{
			  $('#rentalReqForm .modal-wrapper').toggleClass('open');
		  }
	  });
	  $('#rentalReqForm .btn-closeX').on('click',function(){
		  if($('#rentalReqForm .modal-wrapper').hasClass("open")) {
			  $('#rentalReqForm .modal-wrapper').addClass("close").removeClass("open");
		  }else {
			  $('#rentalReqForm .modal-wrapper').toggleClass('close');
		  }
	  });
	</script>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
</body>
</html>