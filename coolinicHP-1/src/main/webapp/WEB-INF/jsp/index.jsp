<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head lang="en" xmlns:th="http://thymeleaf.org">
<meta charset="UTF-8">

<style>
	table {
		font-family: arial, sans-serif;
		border-collapse: collapse;
		width: 100%;
	}
	
	td, th{
		border: 1px solid black;
		text-align: left;
	}
	
	tr:nth-child(even){
		background-color:#dddddd;
	}
</style>

<title>Insert title here</title>
	</head>
<body>
	<h1>ȸ�� ����Ʈ</h1>
	
	<table>
		<thead>
			<tr>
				<th>ȸ����ȣ</th>
				<th>���̵�</th>
				<th>�̸�</th>
			</tr>
		</thead>
		
		<tbody>
			<tr th:each="member : ${memberList}">
			 	<td><span th:text="${member.user_no}"></span></td>
				<td><span th:text="${member.user_id}"></span></td>
				<td><span th:text="${member.user_nm}"></span></td>
			</tr>
		</tbody>
	</table>
</body>
</html>