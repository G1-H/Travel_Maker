/**
 * 
 */
$('.mList').load('/mplan/mPlanBucketList');	/* 메인화면 들어가자마자 바로 뿌려주게*/ 
 // A $( document ).ready() block.
$( document ).ready(function() {
    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(37.6, 127), //지도의 중심좌표.
			level: 9 //지도의 레벨(확대, 축소 정도)
		};
			
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
		var positions = [
		{
	        title: '가가밀라노 롯데백화점 에비뉴엘 월드타워점', 
	        latlng: new kakao.maps.LatLng(37.51424591, 127.1040305)
			
	    },
	    {
	        title: '가나돈까스의집', 
	        latlng: new kakao.maps.LatLng(37.5099674377, 127.0377755568)
	    },
	    {
	        title: '가나아트센터', 
	        latlng: new kakao.maps.LatLng(37.6122099878, 126.9751811398)
	    },
	    {
	        title: '가나아트파크',
	        latlng: new kakao.maps.LatLng(37.7254519094, 126.9497496852)
	    },
	    {
	        title: '가나안국수',
	        latlng: new kakao.maps.LatLng(37.6009169989, 126.8278865647)
	    }
	];
	
		for (var i = 0; i < positions.length; i ++) {
			   // 마커를 생성합니다
			 var marker = new kakao.maps.Marker({
			     map: map, // 마커를 표시할 지도
			     position: positions[i].latlng, // 마커를 표시할 위치
			     title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
			 });
		    
		    
		    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
		    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			//kakao.maps.event.addListener(marker, 'mouseover', makeInfo(map, marker));
		    
		} // for문의 끝
	
	});

	$('#mPlanBucketList').on('click', function(){
		$('#mPlanBucketList').attr("class","clickbtn");
		$('#mPlanList').attr("class","nonclickbtn");
		$('.mList').load('/mplan/mPlanBucketList');	/* 메인화면 들어가자마자 바로 뿌려주게*/ 
	})
	
	$('#mPlanList').on('click', function(){
		$('#mPlanList').attr("class","clickbtn");
		$('#mPlanBucketList').attr("class","nonclickbtn");
		$('.mList').load('/mplan/mPlanList');	/* 메인화면 들어가자마자 바로 뿌려주게*/ 
	})
	
	//modal
	$('#modalBack').on('click', function(){
			$('#modal').css('display', 'none');
		
	})	
	
	
	$('#btnClose').on('click', function(){
		$('#modal').css('display', 'none');
		
	})	
		
	var delForm;
	modalView = function(frm){
		delForm = frm;
		$('#modal').css('display', 'block');
		
		
	}
	
	//modal insert
	$('#modalBack').on('click', function(){
			$('#modal').css('display', 'none');
		
	})	
	
	
	$('#btnClose').on('click', function(){
		$('#modal').css('display', 'none');
		
	})	
		
	modalView = function(frm){
		$('#modal').css('display', 'block');	
	}
	
	
	var memo=1;
	//modal update
	$('#modalBack2').on('click', function(){
		$('#modal2').css('display', 'none');
	})	
	
	
	$('#btnClose2').on('click', function(){
		$('#modal2').css('display', 'none');
	})	
		
	modalView2 = function(frm){
		if(memo==1){
			$('#modal2').css('display', 'block');	
		}
	}
	
	
	//modal memo
	var memoTag;
	$('#modalBack3').on('click', function(){
		memo=1;
			$('#modal3').css('display', 'none');
	})	
	
	
	$('#btnClose3').on('click', function(){
		memo=1;
		$('#modal3').css('display', 'none');
		
	})		
	modalView3 = function(memoTag){
		memo=0;
		this.memoTag = memoTag;
		$('#modal3').css('display', 'block');	
	}
	
	memoInsert = function(){
		memo=1;
		$('#modal3').css('display', 'none');
		this.memoTag.src="img/memo.png";
	}