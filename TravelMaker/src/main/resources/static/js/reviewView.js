/**
 * 
 */
 /**하트 눌를때 */
 $('#rs_heart_icon').on('click',function(){
	var clk_yn = $('#rs_heart_icon').css('background-image');
	if(clk_yn=='url("http://localhost:9282/images/heart-icon.png")'){
		$('#rs_heart_icon').css('background-image','url("../images/heart-icon-clicked.png")');
	}else{
		$('#rs_heart_icon').css('background-image','url("../images/heart-icon.png")');
	}
})