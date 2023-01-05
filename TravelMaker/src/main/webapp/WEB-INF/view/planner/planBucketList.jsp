<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>planner/planBucketList</title>
<link rel="stylesheet" href="css/planner.css"/>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
</head>
<body>
	<c:forEach begin="1" end="15">
		<div class="planBucketItem">
			<span class="planBucketItemTitle">역전 할머니맥주</span>
			<span class="planBucketItemType">맛집</span><br/>
			<span class="planBucketItemAddr">샤로수길 444번지 </span>
			<span class="planBucketItemIcon"><i class="fa-solid fa-xmark fa-2xl" id="planBucketXicon"></i></span>
		</div>
	</c:forEach>
</body>
</html>