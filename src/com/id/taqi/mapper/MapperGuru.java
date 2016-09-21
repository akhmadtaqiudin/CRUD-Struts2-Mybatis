package com.id.taqi.mapper;

import java.util.List;
import com.id.taqi.model.Guru;

public interface MapperGuru {

	Guru selectWhereGuru(Guru guru);
	List<Guru> selectByNama(Guru guru);
	int insertGuru(Guru guru);
	public void updateGuru(Guru guru);
	int deleteGuru(Guru guru);
}
