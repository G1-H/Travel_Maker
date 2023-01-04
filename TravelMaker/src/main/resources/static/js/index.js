/**
 * 
 */
 /**후기게시판 연결  */
 $('.reviewBoard').on('click', function(){
	$('#content').load('/review/reviewSelect')
	
})


$('.btnMyInfo').on('click',function(){
	 $('#content').load('/myInfo/myInfo');
 })

 function navigo (){
	const hero = document.querySelector('#hero');	//hero부분 획득
	const fixStart = hero.clientHeight;		//hero 높이
	document.addEventListener('scroll', onScroll, { passive: true });	//스크롤 이벤트
 
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


function div(){
	const header = document.querySelector('header');
	const empty = document.querySelector('#empty');
	$('.btnMyInfo').on('click',function(){
		empty.style.height='65px';
		header.style.backgroundColor='#697c89';
		header.style.opacity=0.55;
	});
 	$('.btnSearch').on('click',function(){
		empty.style.height='65px';
		header.style.backgroundColor='#697c89';
		header.style.opacity=0.55;
 	});
 	$('.reviewBoard').on('click',function(){
		empty.style.height='65px';
		header.style.backgroundColor='#697c89';
		header.style.opacity=0.55;
 	});

}
div()

