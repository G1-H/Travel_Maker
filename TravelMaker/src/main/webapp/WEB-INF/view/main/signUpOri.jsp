<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signUp</title>
<link rel='stylesheet' href='css/signUp.css'/>
</head>
<body>
	<main class='signUpMain'>
		<h1 class='signUpH'>회원가입을 완료해 주세요</h1>
		<div class='nickname'>
			<span>닉네임</span>
			<input type='text'>
		</div>
		<div class='intro'>
			<span>한 줄 소개</span>
			<input type='text'>
		</div>
		<div class='profileImage'>
			<div class='img-box'></div>
			<input type='button' class='btnProfileSelect' value='파일 선택'>
			<br/>
			<input type='button' class='btnSubmit' value='가입 완료'>
		</div>
	</main>
</body>
</html>