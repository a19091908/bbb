<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>員工管理</title>
<link rel="stylesheet" type="text/css" href="css/empManage.css">
<link href="css/cover.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.js"></script>
<script>
	$(function() {
		$(window).bind('beforeunload',function(){
    		$('body>.holdon-overlay').fadeIn();
    		return ;
    	});
    	
		loaded();
		$('#em_ul li').on(
				'click',
				function() {
					$('body>.holdon-overlay').stop().delay( 300 ).fadeIn();
					var id = $(this).attr('id');
					if (!$(this).hasClass('em_li_sel')) {
						$(this).addClass('em_li_sel').parent().siblings().find(
								'li').removeClass('em_li_sel');
					}
					loaded();
				});
	});
	function loaded(){
		$('#em_content_div iframe').load(function(){
    		$('body>.holdon-overlay').stop().fadeOut(300);
    	});
	}
</script>
</head>
<body>
<div class="holdon-overlay" style="">
      <div class="holdon-content-container">
        <div class="holdon-content">
            <div class="sk-rect">
                <div class="rect1"></div> 
                <div class="rect2"></div> 
                <div class="rect3"></div> 
                <div class="rect4"></div>
                <div class="rect5"></div> 
           </div>
       	</div>
    	<div class="holdon-message">處理中，請稍候...</div>
	</div>
</div>

	<div id="e_manage">
		<div>
			<ul id='em_ul'>
				<a href="./Employee.do?action=updateEmp_page" target="e_m_ifram"><li id="em_tab1"
					class="em_li_sel">員工修改</li></a>
				<a href="./Employee.do?action=addEmp" target="e_m_ifram"><li
					id="em_tab2">新增員工</li></a>
			</ul>
			<div id='em_content_div'>
				<iframe name='e_m_ifram' src="./Employee.do?action=updateEmp_page"></iframe>
			</div>
		</div>
	</div>
</body>
</html>