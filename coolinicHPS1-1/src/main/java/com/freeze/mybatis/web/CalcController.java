package com.freeze.mybatis.web;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.freeze.mybatis.dao.CalcDAO;
import com.freeze.mybatis.services.CalcService;
import com.freeze.mybatis.vo.CalcInputEntity;
import com.freeze.mybatis.vo.CalcPriceEntity;
import com.freeze.mybatis.vo.CalcSettingEntity;
import javax.servlet.http.*;

@Controller
public class CalcController {

	@Autowired
	private CalcService service;
	
	@RequestMapping("/")
	public String home() throws Exception {
		return "nav-eight-item-four-column";
	}	
	
	@SuppressWarnings("null")
	@RequestMapping("/calc")
	public String calc(HttpServletRequest request, Model model) throws Exception {
		CalcInputEntity cmd = new CalcInputEntity();
		List<CalcPriceEntity> calcPriceEntity = service.getCalcPrice();
		String temper_type = null;
		String msize = null;
		String storeVal = null;
		String tempVal = null;
		String mtypeVal = null;
		String msizeVal = null;
		String purcheseVal = null;
		long floor_area; //바닥면적
		double total_area; //전체면적
		double py;long pyl;String pyls; //평수환산
		int msize_price = 0;int panel_price = 0;int door_price = 0;int base_price = 0;int sub_price = 0; //가격 출력
	
		//가로, 세로, 높이
		cmd.setWidVal(request.getParameter("wid"));
		cmd.setVertVal(request.getParameter("vert"));
		cmd.setHegVal(request.getParameter("heg"));
		cmd.setStoreVal(request.getParameter("store"));
		
		cmd.setTempVal(request.getParameter("temperture"));
		cmd.setMtypeVal(request.getParameter("mtype"));
		cmd.setMsizeVal(request.getParameter("msize"));
		cmd.setPurcheseVal(request.getParameter("purchese"));
		
		//바닥면적 계산
		floor_area = Math.round(Long.parseLong(cmd.getWidVal()) * Long.parseLong(cmd.getVertVal()) / 1000000);
		
		//전체면적 계산
		total_area = Long.parseLong(cmd.getWidVal()) * Long.parseLong(cmd.getVertVal()) * Long.parseLong(cmd.getHegVal()) / 1000000000.0;

		//평수환산 계산
		py = floor_area / 3.3;
		pyl = Math.round(py); 
		pyls = String.valueOf(pyl);
		
		/* INPUT STORE DATA */	
		if(cmd.getStoreVal().equals("storelist01")){
			cmd.setStoreVal("어패류");
		}else if(cmd.getStoreVal().equals("storelist02")){
			cmd.setStoreVal("화훼류");
		}else if(cmd.getStoreVal().equals("storelist03")){
			cmd.setStoreVal("돈육");
		}else if(cmd.getStoreVal().equals("storelist04")){
			cmd.setStoreVal("채소류");
		}else if(cmd.getStoreVal().equals("storelist05")){
			cmd.setStoreVal("과실류");
		}else if(cmd.getStoreVal().equals("storelist06")){
			cmd.setStoreVal("혼합류");
		}else if(cmd.getStoreVal().equals("storelist07")){
			cmd.setStoreVal("기타");
		}
		
		/* INPUT TEMPERTURE DATA */	
		if(cmd.getTempVal().equals("temp01")){
			cmd.setTempVal("냉장(0 ~ 15℃)");
		}else if(cmd.getTempVal().equals("temp02")){
			cmd.setTempVal("냉동(0 ~ -20℃)");
		}else if(cmd.getTempVal().equals("temp03")){
			cmd.setTempVal("동결(-20 ~ -40℃)");
		}else if(cmd.getTempVal().equals("temp04")){
			cmd.setTempVal("급속동결(-40 ~ -70℃)");
		}
		
		/* INPUT MTYPE DATA */	
		if(cmd.getMtypeVal().equals("mtype01")){
			cmd.setMtypeVal("오버랩 도어(일반 도어 타입)");
		}else if(cmd.getMtypeVal().equals("mtype02")){
			cmd.setMtypeVal("수동 슬라이드 편개(한쪽 열림)");
		}else if(cmd.getMtypeVal().equals("mtype03")){
			cmd.setMtypeVal("수동 슬라이드 양개(양쪽 열림)");
		}else if(cmd.getMtypeVal().equals("mtype04")){
			cmd.setMtypeVal("자동 슬라이드 편개(한쪽 열림)");
		}else if(cmd.getMtypeVal().equals("mtype05")){
			cmd.setMtypeVal("자동 슬라이드 양개(양쪽 열림)");
		}
		
		/* INPUT MSIZE DATA */
		if(cmd.getMsizeVal().equals("msize01")){
			cmd.setMsizeVal("평수에 맞게 스탠다드 적용");
		}else if(cmd.getMsizeVal().equals("msize02")){
			cmd.setMsizeVal("900*2100*100 (오버랩)");
		}else if(cmd.getMsizeVal().equals("msize03")){
			cmd.setMsizeVal("1000*2100*100 (오버랩)");
		}else if(cmd.getMsizeVal().equals("msize04")){
			cmd.setMsizeVal("1200*2400*100 (슬라이드 / 편개)");
		}else if(cmd.getMsizeVal().equals("msize05")){
			cmd.setMsizeVal("1400*2600*100 (슬라이드 / 편개)");
		}else if(cmd.getMsizeVal().equals("msize06")){
			cmd.setMsizeVal("2400*2600*100 (슬라이드 / 양개)");
		}else if(cmd.getMsizeVal().equals("msize07")){
			cmd.setMsizeVal("2600*2800*100 (슬라이드 / 양개)");
		}
		
		/* INPUT PURCHESE DATA */
		if(cmd.getPurcheseVal().equals("purchese01")){
			cmd.setPurcheseVal("구입");
		}else if(cmd.getPurcheseVal().equals("purchese02")){
			cmd.setPurcheseVal("렌탈");
		}
		
		//가격 내용
		msize = cmd.getMsizeVal().substring(0,2);
		if(msize.equals("90")) {
			msize_price = 550000;
		}else if(msize.equals("10")) {
			msize_price = 600000;
		}else if(msize.equals("12")) {
			msize_price = 1400000;
		}else if(msize.equals("14")) {
			msize_price = 2800000;
		}else if(msize.equals("24")) {
			msize_price = 2800000;
		}else if(msize.equals("32")) {
			msize_price = 3200000;
		}else {
			msize_price = 0;
		}
		
		panel_price = (int) (total_area * Integer.parseInt(calcPriceEntity.get(0).getPanel())); //우레탄 판넬 가격
		door_price = msize_price; //도어 가격
		base_price = (int) (floor_area * Integer.parseInt(calcPriceEntity.get(0).getBase())); //베이스 가격
		sub_price = (int) (total_area * Integer.parseInt(calcPriceEntity.get(0).getSub())); //부자재 가격

		temper_type = cmd.getTempVal().substring(0,2);
		List<CalcSettingEntity> calcSettingEntity = service.getCalcSetting(pyls,temper_type);
		
		//Price Model
		model.addAttribute("panel_price",panel_price);
		model.addAttribute("door_price",door_price);
		model.addAttribute("base_price",base_price);
		model.addAttribute("sub_price",sub_price);
		
		//Setting Model
		model.addAttribute("calcSettingEntity",calcSettingEntity);
		
		//Input Model
		model.addAttribute("wid", cmd.getWidVal());
		model.addAttribute("vert", cmd.getVertVal());
		model.addAttribute("heg", cmd.getHegVal());
		model.addAttribute("floor_area", floor_area);
		model.addAttribute("total_area", total_area);
		model.addAttribute("pyls", pyls);
		model.addAttribute("store", cmd.getStoreVal());
		model.addAttribute("temper_type", cmd.getTempVal());
		model.addAttribute("mtype", cmd.getMtypeVal());
		model.addAttribute("msize", cmd.getMsizeVal());
		model.addAttribute("purchese", cmd.getPurcheseVal());
		
		return "calc";
	}	
}
