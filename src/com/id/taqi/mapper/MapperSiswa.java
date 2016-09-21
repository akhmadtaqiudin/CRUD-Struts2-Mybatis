package com.id.taqi.mapper;

import java.util.List;

import com.id.taqi.model.Siswa;

public interface MapperSiswa {

	Siswa selectWhereSiswa(Siswa siswa);
	List<Siswa> selectByNama(Siswa siswa);
	int insertSiswa(Siswa siswa);
	public void updateSiswa(Siswa siswa);
	int deleteByPrimaryKey(Siswa siswa);
}
