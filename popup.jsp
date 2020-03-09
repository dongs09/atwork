<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<style type="text/css">
#pop{
	width:450px; height:480px; 
	position:absolute; top:250px; left:500px; text-align:center;
	border:2px solid #ccc; z-index: 1; background:#fff;
}
#kipa a, #cpu a {
	text-decoration: none;
	display: hidden;
	position: relative;
	bottom: -10px;
    opacity:0.1;
    padding : 10px 90px;
}
#kipa{
	position:relative;
	width:180px;
	height:43px;
	bottom:113px;
	left:26px;
}
#cpu{
	position: relative;
	width: 180px;
	height: 43px;
	bottom: 156px;
	left:245px;
}
#closebtn{
	height: 30px;
	position: relative;
	bottom:90px;
    left:150px;
    width:100px;
    margin:auto;
    right:-170px;
}
#closeForaday{
	height: 30px;
	position: relative;
	bottom:118px;
    left:-120px;
    width:170px;
    margin:auto;
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script language="Javascript">
  function setCookie(name,value,expiredays){
    var todayDate = new Date();
    todayDate.setDate( todayDate.getDate() + expiredays);
    document.cookie = name+ "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString()+ ";";
  }
  function getCookie() {
   var cookiedata = document.cookie;   
    if ( cookiedata.indexOf("todaypop=no") < 0 ){     
        $('#pop').show();
    }
    else {
        $('#pop').hide();
    }
  }
 
</script>




 <div id="pop">
	<div style="height:450px;">
      <img src="/cpu/_images/popup_20200309.jpg">
	</div>
	<div id="kipa">
      <a href="http://www.kipa.org" alt="">한국발명진흥회</a>
	</div>
	<div id="cpu">
      <a href="http://www.kipa.org/cpu" alt="">특허유니버시아드</a>
	</div>
	<div id="closebtn">
		<input style="cursor:pointer;" type="checkbox" id="closePop" style="width:20px;">
      <label style="cursor:pointer;" for="closePop">닫기</label>
      
	</div>
   <div id="closeForaday">
		<input name="chk" style="cursor:pointer;" type="checkbox" id="closeAday" style="width:20px;">
      <label style="cursor:pointer;" for="closeAday">오늘 하루동안 보이지 않기</label>
	</div>
</div>
