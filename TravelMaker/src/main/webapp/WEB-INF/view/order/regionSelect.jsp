<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>regionSelect</title>
	<link rel='stylesheet' href='css/regionSelect.css'/>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script src="js/regionSelect.js"></script>
</head>
<body>
	<main class='regionSelectMain'>
		<h1 class='regionSelectH'>가고 싶은 지역이 있으신가요?</h1>
		<div class='regionSelectAll'><p class='koreap'>전 국</p></div>
		<div class='regionSelectGang'><p>강원도</p></div>
		<div class='regionSelectGyeong'><p>경상도</p></div>
		<div class='regionSelectJeolla'><p>전라도</p></div>
		<div class='regionSelectChung'><p>충청도</p></div>
	</main>

	<div id="modal" class="modal-overlay">
		<c:set var="item" value="${result}"/>
		<div class="modal-window">
			<div class="item-detail-modal">
				<div class="item-name">${item.title}</div>
				<div class="item-image" style="background-image: url('${item.firstImage}')"></div>
				<div class="item-address">${item.addr1}</div>
				<div class="item-tel">${item.tel}</div>
				<div class="item-homepage">${item.homepage}</div>
			</div>
			<div class="item-detailBtnGroup-modal">
				<input type="button" value="내 일정 보기" />
				<input type="button" value="일정에 추가" /> <!-- c:if 문으로 일정 추가 여부 확인 -->
			</div>
		</div>
	</div>
</body>
<script>
	const modal = document.getElementById("modal");

	modal.addEventListener("click", e => {
		const evTarget = e.target
		if(evTarget.classList.contains("modal-overlay")) {
			modalOff()
		}
	})
	window.addEventListener("keyup", e => {
		if(isModalOn() && e.key === "Escape") {
			modalOff()
		}
	})

	function modalOff() {
		modal.style.display = "none"
	}

	function isModalOn() {
		return modal.style.display === "flex"
	}
</script>
</html>