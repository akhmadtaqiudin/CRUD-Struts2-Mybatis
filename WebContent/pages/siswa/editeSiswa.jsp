<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edite</title>
</head>
<body>
<h3>Form Edite Siswa</h3>
	<s:form namespace="siswa">
		<s:textfield name="siswa.nik" label="Nik"></s:textfield>
		<s:textfield name="siswa.nama" label="Nama"></s:textfield>
		<s:textfield name="siswa.jeniskelamin" label="Jenis Kelamin"></s:textfield>
		<s:textarea name="siswa.alamat" label="Alamat"></s:textarea>
		<s:textfield name="siswa.kontak" label="Kontak"></s:textfield>
		<s:submit value="Kirim" action="EditeSiswa"></s:submit>
		<s:reset value="Reset"></s:reset>
	</s:form>
</body>
</body>
</html>