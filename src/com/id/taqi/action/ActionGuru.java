package com.id.taqi.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.id.taqi.mapper.MapperGuru;
import com.id.taqi.model.Guru;
import com.opensymphony.xwork2.ActionSupport;

public class ActionGuru extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private Guru guru;
	private List<Guru> listGuru = new ArrayList<Guru>();
	private MapperGuru mg = (MapperGuru) new ClassPathXmlApplicationContext("/Mybatis-Config-Mapper/spring-config.xml").getBean("mapperGuru");

	public String selectGuru(){
		
		listGuru = mg.selectByNama(guru);
		return SUCCESS;
	}
	
	public String selectWhereGuru(){
		guru = mg.selectWhereGuru(guru);
		return SUCCESS;
	}
	
	public String addGuru(){
		
		mg.insertGuru(guru);
		return SUCCESS;
	}
	
	public String editeGuru(){
		
		mg.updateGuru(guru);
		return SUCCESS;
	}	
	
	public String deleteGuru(){
		
		mg.deleteGuru(guru);
		return SUCCESS;
	}
	
	public Guru getGuru() {
		return guru;
	}
	public void setGuru(Guru guru) {
		this.guru = guru;
	}
	public List<Guru> getListGuru() {
		return listGuru;
	}
	public void setListGuru(List<Guru> listGuru) {
		this.listGuru = listGuru;
	}
}
