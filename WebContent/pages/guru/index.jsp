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
	<s:form namespace="/guru">
		<s:textfield name="guru.nama" label="Nama Guru"></s:textfield>
		<s:submit value="Cari data" action="InitGuru"></s:submit>
	</s:form>
	<a href="AddGuru.action">Tambah Data Guru</a>
	<table>
		<tr>
			<th>Nama</th>
			<th>Jenis Kelamin</th>
			<th>Alamat</th>
			<th>Kontak</th>
			<th>Action</th>
		</tr>
		<s:iterator value="listGuru">
			<tr>
				<td><s:property value="nama" /></td>
				<td><s:property value="jeniskelamin" /></td>
				<td><s:property value="alamat" /></td>
				<td><s:property value="kontak" /></td>
				<td><a href="${pageContext.request.contextPath}/guru/SelectWhereGuru.action?guru.nama=<s:property value="nama"/>">Edit</a></td>
				<td><a href="${pageContext.request.contextPath}/guru/DeleteGuru.action?guru.nama=<s:property value="nama"/>">Delete</a></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>