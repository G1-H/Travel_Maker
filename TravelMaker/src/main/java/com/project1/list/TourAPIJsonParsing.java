package com.project1.list;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class TourAPIJsonParsing {
	JSONParser parser;
	JSONObject obj;
	JSONArray arr;
	
	
	// 조회 데이터의 contentid 가져오기
	public List<String> getContentIdList(String json) {
		List<String> contentIdList = new ArrayList<>();
			
		parser = new JSONParser();
		try {
			obj = (JSONObject)parser.parse(json);
			JSONObject respObj = (JSONObject)obj.get("response");
			JSONObject bodyObj = (JSONObject)respObj.get("body");
			JSONObject itemsObj = (JSONObject)bodyObj.get("items");
			JSONArray itemArr = (JSONArray)itemsObj.get("item");
			for(Object item : itemArr) {
				JSONObject itemObj = (JSONObject)item;
				String contentId = (String)itemObj.get("contentid");
				contentIdList.add(contentId);
			}
			
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		return contentIdList;
	}
	
	
	
	// 공통정보조회리스트를 파싱해 리스트를 반환.
	public List<testVo> getOutputList(List<String> detailJsonDataList) {
		List<testVo> list = new ArrayList<>();
		JSONParser parser = new JSONParser();
		
		for(String obj : detailJsonDataList) {
			testVo vo = new testVo();
			try {
				JSONObject jsonObj = (JSONObject)parser.parse(obj);
				JSONObject respObj = (JSONObject)jsonObj.get("response");
				JSONObject bodyObj = (JSONObject)respObj.get("body");
				String bodyObjStr = bodyObj.toJSONString();
				
				if(bodyObjStr.contains("\"totalCount\":1")){
					JSONObject itemsObj = (JSONObject)bodyObj.get("items");
					JSONArray itemArr = (JSONArray)itemsObj.get("item");
					
					for(Object item : itemArr) {
						JSONObject itemObj = (JSONObject)item;
						vo.setContentID((String)itemObj.get("contentid"));
						vo.setTitle((String)itemObj.get("title"));
						vo.setOverView((String)itemObj.get("overview"));
						vo.setFirstImage((String)itemObj.get("firstimage"));
					}
					
					list.add(vo);
					
				}
	
				
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}

		
		return list;
	} 
}
