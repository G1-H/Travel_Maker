package com.project1.tourapi;

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

	// 조회된 데이터의 상세정보 가져오기
	public testVo getDetailItem(String json) {
		testVo vo = new testVo();

		parser = new JSONParser();
		try {
			obj = (JSONObject)parser.parse(json);
			JSONObject respObj = (JSONObject)obj.get("response");
			JSONObject bodyObj = (JSONObject)respObj.get("body");
			JSONObject itemsObj = (JSONObject)bodyObj.get("items");
			JSONArray itemArr = (JSONArray)itemsObj.get("item");
			JSONObject itemObj = (JSONObject)itemArr.get(0);

			String contentId = (String)itemObj.get("contentid");
			String contentTypeId = (String)itemObj.get("contenttypeid");
			String title = (String)itemObj.get("title");
			String addr1 = (String)itemObj.get("addr1");
			String addr2 = (String)itemObj.get("addr2");
			String tel = (String)itemObj.get("tel");
			String mapx = (String)itemObj.get("mapx");
			String mapy = (String)itemObj.get("mapy");
			String firstimage = (String)itemObj.get("firstimage");
			String firstimage2 = (String)itemObj.get("firstimage2");
			String overview = (String)itemObj.get("overview");
			String homepage = (String)itemObj.get("homepage");
			String mlevel = (String)itemObj.get("mlevel");
			String sigungucode = (String)itemObj.get("sigungucode");
			String areacode = (String)itemObj.get("areacode");
			String cat1 = (String)itemObj.get("cat1");
			String cat2 = (String)itemObj.get("cat2");
			String cat3 = (String)itemObj.get("cat3");
			String createdtime = (String)itemObj.get("createdtime");
			String modifiedtime = (String)itemObj.get("modifiedtime");
			String readcount = (String)itemObj.get("readcount");
			String sigunguname = (String)itemObj.get("sigunguname");
			String areaname = (String)itemObj.get("areaname");

			vo.setContentID(contentId);
			vo.setFirstImage(firstimage);
			vo.setAddr1(addr1);
			vo.setTel(tel);
			vo.setHomepage(homepage);
			vo.setTitle(title);
			vo.setOverView(overview);

		} catch (ParseException e) {
			e.printStackTrace();
		}


		return vo;
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
