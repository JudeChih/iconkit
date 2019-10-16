$(function(){
	// 抓取後台的url
	var string = "http://"+window.location.host + window.location.pathname;
	var ipos = string.indexOf("public");
	var str1=string.substring(0,ipos+6); //取前部分

	$('.logo').prop('href',str1);

	$('.login-input input').each(function(){
		if($(this).is(":focus")){
			$(this).siblings('.text').addClass('move');
		}
	})
	//login頁面的動畫
	$('.login-input input').focus(function(){
		$('.login-input input').each(function(){
			if($(this).val() == ''){
				$(this).siblings('.text').removeClass('move');
			}
		})
		$(this).siblings('.text').addClass('move');
	})
	$('.login-input input').focusout(function(){
		if($(this).val() == ''){
			$(this).siblings('.text').removeClass('move');
		}
	})
})