/**
 * 
 */
 /**후기게시판 연결  */


 $('.btnReviewBoard').on('click', function(){
	$('#content').load('/review/reviewSelect')
	
})
/* 마이페이지-기본정보 연결 */
$('.btnMyInfo').on('click',function(){
	 $('#content').load('/myInfo/myInfo');
 })
 /* 마이페이지-내여행 연결 */
 $('.btnMyTour').on('click',function(){
	 $('#content').load('/myTour/myTourSelect');
 })

 function navigo (){
   const hero = document.querySelector('#hero');   //hero부분 획득
   const fixStart = hero.clientHeight;      //hero 높이
   document.addEventListener('scroll', onScroll, { passive: true });   //스크롤 이벤트
 

  

	 function onScroll () {
	   const scrollposition = pageYOffset;	//스크롤 위치
	   const header = document.querySelector('header'); 	//네비게이션
	   if (fixStart<=scrollposition){	//만약 hero높이<=스크롤 위치라면
	     header.style.position='fixed';
	     header.style.backgroundColor='#697c89';
	     header.style.opacity=0.55;
	   }else {
			if(document.getElementById("hero")){
				header.style.position='absolute';
				header.style.backgroundColor='rgb(255 255 255 / 0%)';
				header.style.opacity=0; 			 
			}else{
				header.style.position='fixed';
		     	header.style.backgroundColor='#697c89';
		     	header.style.opacity=0.55;
			}
	   }
	 }
}
navigo()





var width_size = window.outerWidth;
if(width_size<=450){
	const logo = document.querySelector('.TravelMaker');
	logo.style.marginLeft ='10px';
   	const header2 = document.querySelector('header');
	header2.style.padding='35px 5px 10px 0px';
   	const navList = document.querySelector('#menu>ul>li');
   	navList.style.margin='0 35px';
   	navList.style.width='fit-content';
   	const hero = document.querySelector('#hero');
	hero.style.minHeight='50vh';
	hero.style.gridTemplateAreas='". start ." "startDate date1 amPm1" "endDate date2 amPm2" "people su ." "button button button"';
   	const heroContent = document.querySelector('#hero-content');
	heroContent.style.width='90%';
	heroContent.style.height='30%';
	heroContent.style.fontSize='25px';
	const btnSearch = document.querySelector('#btnSearch');
	btnSearch.style.fontSize='30px';
	btnSearch.style.fontWeight='bold';
	btnSearch.style.height="60px";
	const dateSelector = document.querySelector('.dateSelector');
	dateSelector.style.height="25px";
	dateSelector.style.fontSize="22px";
	const dateSelector2 = document.querySelector('#date2');
	dateSelector2.style.height="25px";
	dateSelector2.style.fontSize="22px";
	}

	const header = document.querySelector('header');
	const empty = document.querySelector('#empty');
	$('.indexMenuA').on('click',function(){
		empty.style.height='65px';
		header.style.backgroundColor='#697c89';
		header.style.opacity=0.55;
	});
}
div()

