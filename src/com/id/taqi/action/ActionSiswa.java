package com.id.taqi.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.id.taqi.mapper.MapperSiswa;
import com.id.taqi.model.Siswa;
import com.opensymphony.xwork2.ActionSupport;

public class ActionSiswa extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private Siswa siswa;
	private List<Siswa> ls = new ArrayList<Siswa>();
	private MapperSiswa ms = (MapperSiswa) new ClassPathXmlApplicationContext("/Mybatis-Config-Mapper/spring-config.xml").getBean("mapperSiswa");
	
	public String selectSiswa(){
		
		ls = ms.selectByNama(siswa);
		return SUCCESS;
	}
	
	public String selectWhereSiswa(){
		
		siswa = ms.selectWhereSiswa(siswa);
		return SUCCESS;
	}
	
	public String addSiswa(){
		
		ms.insertSiswa(siswa);
		return SUCCESS;
	}
	
	public String editeSiswa(){
		
		ms.updateSiswa(siswa);
		return SUCCESS;
	}	
	
	public String deleteSiswa(){
		
		ms.deleteByPrimaryKey(siswa);
		return SUCCESS;
	}
	/*
	//membuat koneksi
	String url  ="jdbc:postgresql://localhost:5432/appsekolah";
	String user ="fdx";
	String pass = "password";
	String dbDriver = "org.postgresql.Driver";
		
	public Connection openConnection(){
		Connection connection=null;
		try {
			Class.forName(dbDriver);
			connection = DriverManager.getConnection(url,user,pass);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	public String tampilSiswa(){
		
		try {
			Statement s = openConnection().createStatement();
			ResultSet rs = s.executeQuery("SELECT * FROM siswa");
			Siswa siswa;
			while (rs.next()) {
				siswa = new Siswa();
				siswa.setNik(rs.getInt(1));
				siswa.setNama(rs.getString(2));
				siswa.setJeniskelamin(rs.getString(3));
				siswa.setAlamat(rs.getString(4));
				siswa.setKontak(rs.getString(5));
				ls.add(siswa);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return SUCCESS;
	}*/
		

	public Siswa getSiswa() {
		return siswa;
	}
	public void setSiswa(Siswa siswa) {
		this.siswa = siswa;
	}
	public List<Siswa> getLs() {
		return ls;
	}
	public void setLs(List<Siswa> ls) {
		this.ls = ls;
	}
}
