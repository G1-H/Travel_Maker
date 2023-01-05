<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>reviewInsert.jsp</title>

<link rel='stylesheet' type='text/css' href='./css/reviewInsert.css'>

<body>
	<div id='summer'>
		<form name='frm_summernote' class='frm_summernote' method='post' action='/review/reviewView'>
			<div id='ri_title'>
				<h2 id='ri_InsertH'>후기 작성</h2>
				<div id='ri_InsertDiv'>여러분의 여행을 공유해주세요.</div>
			</div>
			<sapn class='reviewInsertSpanDate'>작성날짜</sapn>
			<input type='text' class='reviewInsertDate' value='2022-12-25(일)' disabled="disabled">
			<span class='reviewInsertSpanRegion'>지  역</span>
			<input type='text' class='reviewInsertRegion' value='전라도 구례' disabled="disabled"/>
			<span class='reviewInsertSpanSubject'>제  목</span>
			<input type='text' size='90' class='reviewInsertSubject' value='구례여행 후기입니다~'>
			
			<div id='ri_content_plan'>
					<div id='ri_content_plan_day'>1일차</div>
					oo숙소 - oo맛집 - oo관광지<br/>
					<div id='ri_content_plan_day'>2일차</div>
					oo숙소 - oo맛집 - oo관광지
			</div>
			
			<textarea id='summernote' name='editordata'>hello</textarea>

			<button class='reviewInsertBtn'>게시하기</button>
			<!-- <a class='reviewInsertA' href='myTourSelect.jsp'>목록으로</a> -->
		</form>
	</div>

	<script src='js/reviewInsert.js'></script>
</body>
</html>