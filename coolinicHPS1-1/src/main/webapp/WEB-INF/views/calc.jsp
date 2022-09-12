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
<h1>�Է� ����</h1>
	<table>
		<tr>
			<th>����</th>
			<th>����</th>
			<th>����</th>
			<th>����ǰ��</th>
			<th>����µ�</th>
			<th>���Ա� ����</th>
			<th>���Ա� ������</th>
			<th>��������</th>
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
<h1>������ ���� ���</h1>
	<table>
		<tr>
			<th>�ٴڸ���</th>
			<th>��ü����</th>
			<th>���ȯ��</th>
			<th>�뵵</th>
			<th>���Ա�</th>
			<th>���Ա� ������</th>
			<th>��������</th>
			<th>CDU</th>
			<th>COOLER</th>
			<th>��Ʈ��</th>
			<th>��â���</th>
			<th>���ڹ��</th>
			<th>��й��</th>
			<th>���й��</th>
			<th>��� ������</th>
			<th>���� ������</th>
			<th>������</th>
			<th>���� ������ 01</th>
			<th>���� ������ 02</th>
			<th>���� ������ 03</th>
			<th>�����Ͼ� ��</th>
			<th>���� �Ⱓ</th>
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
<h1>�ݾ�</h1>
	<table>
		<tr>
			<th>�췹ź �ǳ� ����</th>
			<th>���� �ݾ�</th>
			<th>���̽�</th>
			<th>������</th>
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