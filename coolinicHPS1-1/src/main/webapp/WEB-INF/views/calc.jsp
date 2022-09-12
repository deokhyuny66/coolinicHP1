<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page import="java.util.*"%>
<%@ page import="com.freeze.mybatis.vo.CalcInputEntity"%>
<%@ page import="com.freeze.mybatis.vo.CalcSettingEntity"%>
<%@ page import="com.freeze.mybatis.services.CalcService" %>
<%@ page import="com.freeze.mybatis.dao.CalcDAO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- JSTL POM �߰� �� �ش� ���� �߰� -->
<%
	request.setCharacterEncoding("utf-8");
	/* 2. ��� ó�� �� py,�õ��������� ���� ������ DB �� ��ȸ ��� �������� */
	//pyl , cmd.getTempVal() 
	/* ModelAndView mav = new ModelAndView(); */
	
	/* mav.addObject("calcSettingList", calcSettingList); */
	/* mav.setViewName("/home.html"); */
	/* 
		1. input �⺻ ����� ��� ó�� O
		1-1. DB INSERT O
		2. ��� ó�� �� py,�õ��������� ���� ������ DB �� ��ȸ ��� �������� O
		3. ��ü,�ٴڸ������� ���� ������ DB �� ��ȸ ��� ��������
		4. ��� ���� ���� �Ѹ��� 
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
    			<h2>AI �ڵ����� ����</h2>
  			</header>
			
		  	<section id="sectionsv">
   			<form action="/calc" name="rentalForm" id="rentalForm" method="post">
   			
   			<!-- container_content -->
   			<div class="container_content">
     			<div class="row_flex">
       				<div class="addition" style="width:100%;">
         				<div class="product_size product_info_item">
	      					<h3>������ ����</h3>
	      					<!-- <p><img src="/assets/img/calc/size_img.png" alt="���� �����̳� �̹���"></p> -->
	           				<table id="20ftMasterList">
		             			<th class="br_l">�׸�</th>
					            <th colspan="3">���γ���</th>
		             			<tr>
					               	<td>�ٴڸ���</td>
					               	<td colspan="3">${floor_area}</td>
					            </tr>
					            <tr>
					            	<td>��ü����</td>
					            	<td colspan="3">${total_area}</td>
					            </tr>
					            <tr>
					                <td>���ȯ��</td>
					                <td colspan="3">${pyls}��</td>
					            </tr>
					            <tr>
					                <td>�뵵</td>
					                <td colspan="3">${store}</td>
					            </tr>
					            <tr>
					                <td>���Ա�</td>
					                <td colspan="3">${mtype}</td>
					            </tr>
					            <tr>
					                <td>���Ա�������</td>
					                <td colspan="3">${msize}</td>
					            </tr>
					            <tr>
					                <td>��������</td>
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
					                <td>��Ʈ��</td>
					                <td colspan="3">${calcSettingEntity.control}</td>
					            </tr>
					            <tr>
					                <td>��â���</td>
					                <td colspan="3">${calcSettingEntity.ex_valve}</td>
					            </tr>
					            <tr>
					                <td>���ڹ��</td>
					                <td colspan="3">${calcSettingEntity.elec_valve}</td>
					            </tr>
					            <tr>
					                <td>��й��</td>
					                <td colspan="3">${calcSettingEntity.high_piping}</td>
					            </tr>
					            <tr>
					                <td>���й��</td>
					                <td colspan="3">${calcSettingEntity.row_piping}</td>
					            </tr>
					            <tr>
					                <td>��� ������</td>
					                <td colspan="3">${calcSettingEntity.high_lagging}</td>
					            </tr>
					            <tr>
					                <td>���� ������</td>
					                <td colspan="3">${calcSettingEntity.row_lagging}</td>
					            </tr>
					            <tr>
					                <td>������</td>
					                <td colspan="3">${calcSettingEntity.power}</td>
					            </tr>
					            <tr>
					                <td>���� ������ 1</td>
					                <td colspan="3">${calcSettingEntity.op_assis1}</td>
					            </tr>
					            <tr>
					                <td>���� ������ 2</td>
					                <td colspan="3">${calcSettingEntity.op_assis2}</td>
					            </tr>
					            <tr>
					                <td>���� ������ 3</td>
					                <td colspan="3">${calcSettingEntity.op_assis3}</td>
					            </tr>
					            <tr>
					                <td>�����Ͼ� ��</td>
					                <td colspan="3">${calcSettingEntity.engin_cnt}</td>
					            </tr>
					            <tr>
					                <td>����Ⱓ</td>
					                <td colspan="3">${calcSettingEntity.construc_period}</td>
					            </tr>
					            </c:forEach>
	           				</table>
         				</div>
         				<div class="product_size product_info_item">
	      					<h3>������ �ݾ�</h3>
	           				<table id="20ftMasterList">
		             			<th class="br_l">�׸�</th>
		             			<th colspan="3">�����ݾ�<span>(����:��)</span></th>
		             			<tr>
					               	<td>�췹ź �ǳ�</td>
					               	<td colspan="3">${panel_price}</td>
					            </tr>
					            <tr>
					            	<td>����</td>
					            	<td colspan="3">${door_price}</td>
					            </tr>
					            <tr>
					                <td>���̽�</td>
					                <td colspan="3">${base_price}</td>
					            </tr>
					            <tr>
					                <td>������</td>
					                <td colspan="3">${sub_price}</td>
					            </tr>
					            <tr>
					                <th>�� �ݾ�</th>
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
                				<input type="submit" id="btnSave1" value="�ٽ� ��ȸ�ϱ�" style="width:40%;margin-right: 10px;" onClick="location.href='http://localhost:8080/#service'">
                				<input type="submit" id="btnSave2" value="PDF �ٿ� �� ��û�ϱ�" style="width:40%;">
              				</div>
              				<!--calculator_cont02-->
            			</div>
            			<!--calculator_cont end-->
    
            			<div class="notice" style="text-align: center;">
              				<p>���� �ݾ��� �ΰ����� ������ �ݾ��̸�, ��ġ���� ȯ�濡 ���� �߰� ���(ũ����, ������ ��)�� �߻��� �� �ֽ��ϴ�.</p>
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

              <h1 class="page-title">AI �ڵ�����</h1>
            </div>
          </div>
        </div>
      </div>
</body>
</html>