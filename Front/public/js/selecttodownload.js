$(function(){
	// Cookies.remove('selectedToDownload');

	// var id = [];

	// var downloadAll = function(){

	// 	// 抓取後台的url
	// 	var string = "http://"+window.location.host + window.location.pathname;
	// 	var ipos = string.indexOf("public");
	// 	var str1=string.substring(0,ipos+6); //取前部分
	// 	str1 = str1 + '/downloadall';
	// 	str1 = str1.replace(/Front/g, "Back");

	// 	// var str1 = "http://192.168.160.227:8082/downloadall"
	// 	// 新增一個dom元素a並點擊觸發下載
	// 	var link = document.createElement('a');

	// 	link.classList.add("image_download");
	// 	link.style.display = 'none';
	// 	link.setAttribute('href',str1);

	// 	document.body.appendChild(link);

	// 	link.click();

	// 	document.body.removeChild(link);
	// }


	// $('.btn_download').on('click',function(){
	// 	var array_id = [];
	// 	$('.icon-list').find('li.selected').each(function(){
	// 		array_id.push($(this).data('id'));
	// 	})
	// 	if(array_id.length){
	// 		Cookies.set('selectedToDownload',JSON.stringify(array_id));
	// 		downloadAll();
	// 	}else{
	// 		alert('請選擇任一icon');
	// 	}

	// })

	// 綁定選取icon的功能
	// PS::因為Dom元素是用Vue長的所以畫面載入的時候無法做綁定，只好先綁在icon-list上
	// $('.icon-list').mouseover(function(e){
	// 	$(this).unbind(e);
	// 	$('.icon-list').find('.select').on('click',function(){
	// 		if($(this).parent('li').hasClass('selected')){
	// 			$(this).parent('li').removeClass('selected');
	// 		}else{
	// 			$(this).parent('li').addClass('selected');
	// 		}
	// 		if($('.selected').length > 0){
	// 			$('.btn_download').show();
	// 		}else{
	// 			$('.btn_download').hide();
	// 		}
	// 	})
	// })
})

