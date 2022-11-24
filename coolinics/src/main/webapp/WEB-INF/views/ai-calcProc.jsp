<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="com.freeze.mail.SMTPAuthenticatior"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="org.springframework.web.context.request.NativeWebRequest" %>
<%
	request.setCharacterEncoding("utf-8");
	String nameNM = (String) request.getAttribute("nameNM");
	String companyNM = (String) request.getAttribute("companyNM");
	String cellphone = (String) request.getAttribute("cellphone");
	String hopeDate = (String) request.getAttribute("hopeDate");
	String address = (String) request.getAttribute("address");
	String reqContact = (String) request.getAttribute("reqContact");
	String agree_all = (String) request.getAttribute("agree_all");
	String agree_o = (String) request.getAttribute("agree_o");
	String agree_p = (String) request.getAttribute("agree_p");
	
	String widProc = (String) request.getAttribute("widProc");
	String vertProc = (String) request.getAttribute("vertProc");
	String hegProc = (String) request.getAttribute("hegProc");
	String floor_areaProc = (String) request.getAttribute("floor_areaProc");
	String total_areaProc = (String) request.getAttribute("total_areaProc");
	String pylsProc = (String) request.getAttribute("pylsProc");
	String storeProc = (String) request.getAttribute("storeProc");
	String temper_typeProc = (String) request.getAttribute("temper_typeProc");
	String mtypeProc = (String) request.getAttribute("mtypeProc");
	String msizeProc = (String) request.getAttribute("msizeProc");
	String purcheseProc = (String) request.getAttribute("purcheseProc");
	String cduProc = (String) request.getAttribute("cduProc");
	String coolerProc = (String) request.getAttribute("coolerProc");
	String controlProc = (String) request.getAttribute("controlProc");
	String ex_valveProc = (String) request.getAttribute("ex_valveProc");
	String elec_valveProc = (String) request.getAttribute("elec_valveProc");
	String high_pipingProc = (String) request.getAttribute("high_pipingProc");
	String row_pipingProc = (String) request.getAttribute("row_pipingProc");
	String high_laggingProc = (String) request.getAttribute("high_laggingProc");
	String row_laggingProc = (String) request.getAttribute("row_laggingProc");
	String powerProc = (String) request.getAttribute("powerProc");
	String op_assis1Proc = (String) request.getAttribute("op_assis1Proc");
	String op_assis2Proc = (String) request.getAttribute("op_assis2Proc");
	String op_assis3Proc = (String) request.getAttribute("op_assis3Proc");
	String construc_periodProc = (String) request.getAttribute("construc_periodProc");
	String panel_priceProc = (String) request.getAttribute("panel_priceProc");
	String door_priceProc = (String) request.getAttribute("door_priceProc");
	String base_priceProc = (String) request.getAttribute("base_priceProc");
	String sub_priceProc = (String) request.getAttribute("sub_priceProc");
	String total_priceProc = (String) request.getAttribute("total_priceProc");
	
	Properties p = new Properties(); 
	 
	p.put("mail.smtp.host", "smtp.gmail.com");
	p.put("mail.smtp.port", "587");
	p.put("mail.smtp.isSSL", "true");
	p.put("mail.smtp.starttls.enable", "true");
	p.put("mail.smtp.auth", "true");
	p.put("mail.smtp.debug", "true");
	
	 
	try{
		Authenticator auth = new SMTPAuthenticatior();
		Session ses = Session.getInstance(p, auth);
		
		ses.setDebug(true);
		MimeMessage msg = new MimeMessage(ses);
		
		msg.setSubject("[상세 견적서 요청]");
		
		StringBuffer buffer = new StringBuffer();
		buffer.append("[사용자 정보] <br/>");
		buffer.append("이름 : "+nameNM +"<br/>");
		buffer.append("업체명 : "+companyNM +"<br/>");
		buffer.append("연락처 : "+cellphone +"<br/>");
		buffer.append("설치희망일자 : "+hopeDate +"<br/>");
		buffer.append("설치주소 : "+address +"<br/>");
		buffer.append("요청/문의 : "+reqContact +"<br/>");
		buffer.append("약관동의 전체 : "+agree_all +"<br/><br/>");
		
		buffer.append("[정보 선택] <br/>");
		buffer.append("가로 : "+widProc +"<br/>");
		buffer.append("세로 : "+vertProc +"<br/>");
		buffer.append("높이 : "+hegProc +"<br/>");
		buffer.append("저장품목 : "+storeProc +"<br/>");
		buffer.append("희망온도 : "+temper_typeProc +"<br/>");
		buffer.append("출입구 형태 : "+mtypeProc +"<br/>");
		buffer.append("출입구 사이즈 : "+msizeProc +"<br/>");
		buffer.append("구매형태 : "+purcheseProc +"<br/><br/>");
		
		buffer.append("[결과 내용] <br/>");
		buffer.append("바닥면적 : "+floor_areaProc +"<br/>");
		buffer.append("전체면적 : "+total_areaProc +"<br/>");
		buffer.append("평수환산 : "+pylsProc +"<br/>");
		buffer.append("용도 : "+storeProc +"<br/>");
		buffer.append("출입구 : "+mtypeProc +"<br/>");
		buffer.append("출입구 사이즈 : "+msizeProc +"<br/>");
		buffer.append("구매형태 : "+purcheseProc +"<br/><br/>");
		
		buffer.append("[결과 금액] <br/>");
		buffer.append("우레탄 판넬 : "+panel_priceProc +"<br/>");
		buffer.append("도어 : "+door_priceProc +"<br/>");
		buffer.append("베이스 : "+base_priceProc +"<br/>");
		buffer.append("부자재 : "+sub_priceProc +"<br/>");
		buffer.append("총 금액 : "+total_priceProc +"<br/>");
		
		Address fromAddr = new InternetAddress("dhyoo@coolinic.com");
		msg.setFrom(fromAddr); 

		Address toAddr = new InternetAddress("team@coolinic.com");
	    msg.addRecipient(Message.RecipientType.TO, toAddr); 
	     
	    msg.setContent(buffer.toString(), "text/html;charset=UTF-8"); 
	    Transport.send(msg); 
		response.sendRedirect("http://localhost:8080/#ai");
	}catch(Exception e){
		e.printStackTrace();
		return;
	}
%>

