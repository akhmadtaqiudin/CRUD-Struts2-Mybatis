<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<s:form namespace="/siswa">
		<s:textfield name="siswa.nama" label="Nama Siswa"></s:textfield>
		<s:submit value="Cari data" action="InitSiswa"></s:submit>
	</s:form>
	<a href="AddSiswa.action">Tambah Data Siswa</a>
	<table>
		<tr>
			<th>Nik</th>
			<th>Nama</th>
			<th>Jenis Kelamin</th>
			<th>Alamat</th>
			<th>Kontak</th>
			<th>Action</th>
		</tr>
		<s:iterator value="ls">
			<tr>
				<td><s:property value="nik" /></td>
				<td><s:property value="nama" /></td>
				<td><s:property value="jeniskelamin" /></td>
				<td><s:property value="alamat" /></td>
				<td><s:property value="kontak" /></td>
				<td><a href="${pageContext.request.contextPath}/siswa/SelectWhereSiswa.action?siswa.nik=<s:property value="nik"/>">Edit</a></td>
				<td><a href="${pageContext.request.contextPath}/siswa/DeleteSiswa.action?siswa.nik=<s:property value="nik"/>">Delete</a></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>