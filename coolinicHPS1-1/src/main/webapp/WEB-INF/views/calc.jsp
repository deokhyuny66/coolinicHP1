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
<style>
	table {
		width: 100%;
		border: 1px solid #ccc;
		text-align: center;
	}
</style>
</head>
<body>
<div>
<h1>입력 내용</h1>
	<table>
		<tr>
			<th>가로</th>
			<th>세로</th>
			<th>높이</th>
			<th>저장품목</th>
			<th>희망온도</th>
			<th>출입구 형태</th>
			<th>출입구 사이즈</th>
			<th>구매형태</th>
		</tr>
		<tr>
			<td>${wid}</td>
			<td>${vert}</td>
			<td>${heg}</td>
			<td>${store}</td>
			<td>${temper_type}</td>
			<td>${mtype}</td>
			<td>${msize}</td>
			<td>${purchese}</td>
		</tr>
	</table>
<br/><br/>
<h1>견적서 내용 출력</h1>
	<table>
		<tr>
			<th>바닥면적</th>
			<th>전체면적</th>
			<th>평수환산</th>
			<th>용도</th>
			<th>출입구</th>
			<th>출입구 사이즈</th>
			<th>구매형태</th>
			<th>CDU</th>
			<th>COOLER</th>
			<th>콘트롤</th>
			<th>팽창밸브</th>
			<th>전자밸브</th>
			<th>고압배관</th>
			<th>저압배관</th>
			<th>고압 보온재</th>
			<th>저압 보온재</th>
			<th>전원선</th>
			<th>조작 보조선 01</th>
			<th>조작 보조선 02</th>
			<th>조작 보조선 03</th>
			<th>엔지니어 수</th>
			<th>공사 기간</th>
		</tr>
		<tr>
			<td>${floor_area}</td>
			<td>${total_area}</td>
			<td>${pyls}</td>
			<td>${store}</td>
			<td>${mtype}</td>
			<td>${msize}</td>
			<td>${purchese}</td>
		<c:forEach var="calcSettingEntity" items="${calcSettingEntity}">
			<td>${calcSettingEntity.cdu}</td>
			<td>${calcSettingEntity.cooler}</td>
			<td>${calcSettingEntity.control}</td>
			<td>${calcSettingEntity.ex_valve}</td>
			<td>${calcSettingEntity.elec_valve}</td>
			<td>${calcSettingEntity.high_piping}</td>
			<td>${calcSettingEntity.row_piping}</td>
			<td>${calcSettingEntity.high_lagging}</td>
			<td>${calcSettingEntity.row_lagging}</td>
			<td>${calcSettingEntity.power}</td>
			<td>${calcSettingEntity.op_assis1}</td>
			<td>${calcSettingEntity.op_assis2}</td>
			<td>${calcSettingEntity.op_assis3}</td>
			<td>${calcSettingEntity.engin_cnt}</td>
			<td>${calcSettingEntity.construc_period}</td>
		</c:forEach>
		</tr>
	</table>
<br/><br/>
<h1>금액</h1>
	<table>
		<tr>
			<th>우레탄 판넬 가격</th>
			<th>도어 금액</th>
			<th>베이스</th>
			<th>부자재</th>
		</tr>
		<tr>
			<td>${panel_price}</td>
			<td>${door_price}</td>
			<td>${base_price}</td>
			<td>${sub_price}</td>
		</tr>
	</table>
</div>
</body>
</html>