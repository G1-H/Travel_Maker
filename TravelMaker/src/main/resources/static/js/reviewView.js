/**
 * 
 */
 /**하트 눌를때 */
 $('#rv_heart_icon').on('click',function(){
	var clk_yn = $('#rv_heart_icon').css('background-image');
	console.log(clk_yn);
	if(clk_yn=='url("http://localhost:9282/images/heart-icon.png")'){
		$('#rv_heart_icon').css('background-image','url("../images/heart-icon-clicked.png")');
	}else{
		$('#rv_heart_icon').css('background-image','url("../images/heart-icon.png")');
	}
})