<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>planner/planList</title>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script defer src="/js/plannerModal.js"></script>
</head>
<body>
	<c:forEach var = 'i' begin='1' end='15'>
		<div class="planItem">
			<div class='planItemDataZone'>
				<span class="planItemOrder">${i}</span>
				<span class="planItemName">역전 할머니맥주</span>
				<span class="planItemDate">2023-01-01</span>
			</div>
			<div class="planItemMemoZone">
				<span class="planItemIcon"><i class="fa-regular fa-pen-to-square fa-2xl" class="planMemoIcon"></i></span>
				<span><input type="button" value="메모 작성" class="btnInsertMemo"/></span>
			</div>
		</div>
	</c:forEach>
</body>
</html>