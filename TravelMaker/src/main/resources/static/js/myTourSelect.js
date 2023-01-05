/**
 * 
 */

/* 일정짜기 페이지 연결 */
 $('.item').on('click',function(){
	 $('#content').load('');
 });
 /* 후기작성 페이지 연결 */
 $('button').on('click',function(){
	 $('#content').load('/myTour/reviewInsert');
 })
 