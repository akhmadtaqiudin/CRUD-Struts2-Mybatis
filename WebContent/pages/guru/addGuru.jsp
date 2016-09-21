<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Form Data Guru</h3>
	<a href="InitGuru.action">Home Page</a>
	<s:form namespace="/guru">
		<s:textfield name="guru.nama" label="Nama"></s:textfield>
		<s:textfield name="guru.jeniskelamin" label="Jenis Kelamin"></s:textfield>
		<s:textarea name="guru.alamat" label="Alamat"></s:textarea>
		<s:textfield name="guru.kontak" label="Kontak"></s:textfield>
		<s:submit value="Kirim" action="SaveGuru"></s:submit>
		<s:reset value="Reset"></s:reset>
	</s:form>
</body>
</html>