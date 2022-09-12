package com.freeze.mybatis.services;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.freeze.mybatis.dao.CalcDAO;
import com.freeze.mybatis.vo.CalcPriceEntity;
import com.freeze.mybatis.vo.CalcSettingEntity;

@Service
@Transactional
public class CalcService {
	
	@Autowired
	private CalcDAO mapper;
	
	public List<CalcSettingEntity> getCalcSetting(@Param("returns_py") String returns_py, 
			@Param("temper_type") String temper_type) throws Exception{
		return mapper.getCalcSetting(returns_py,temper_type);
	}
	
	public List<CalcPriceEntity> getCalcPrice() throws Exception {
		return mapper.getCalcPrice();
	}
}
