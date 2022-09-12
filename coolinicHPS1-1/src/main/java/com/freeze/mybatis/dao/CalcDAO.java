package com.freeze.mybatis.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.freeze.mybatis.vo.CalcPriceEntity;
import com.freeze.mybatis.vo.CalcSettingEntity;

@Repository
@Mapper
public interface CalcDAO {
	public List<CalcSettingEntity> getCalcSetting(String returns_py, String temper_type);
	public List<CalcPriceEntity> getCalcPrice();
}
