<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<title>header</title>
<style>
.headerul ul {
	border-top: 0 !important;
	margin: 0;
	padding: 0;
	list-style: none;
	float: right;	
}

#menufont li {
	margin: 0;
	padding: 0 4% 0 0;
	list-style: none;
	float: right;
	font-weight: bold;
	font-size: 1rem;
}

#myMenu li {
	margin: 0;
	padding: 0 8px 0 0;
	list-style: none;
	float: right;
	font-weight: bold;
	font-size: 1rem;
}

@media screen and (max-width: 1450px) {
	li {
		font-size: 1rem;
	}
}

@media screen and (max-width: 736px) {
	.secret {
		display: none;
	}
}

/* #main-menu>li {
	float: left;
	position: relative;
}

#main-menu>li>a {
	font-size: 1rem;
	color: #ffaec9;
	text-align: center;
	text-decoration: none;
	letter-spacing: 0.05em;
	display: block;
	padding: 14px 36px;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
} */
#sub-menu {
	position: absolute;
	background: #ffffff9e;
	opacity: 0;
	visibility: hidden;
	transition: all 0.15s ease-in;
}

#sub-menu>li {
	padding: 5px 0;
	border-bottom: 1px solid rgba(0, 0, 0, 0.15);
	margin-top: 5px;
}

#sub-menu>li>a {
	color: #7f888f;
	text-decoration: none;
}

/* #main-menu>li:hover #sub-menu {
	opacity: 1;
	visibility: visible;
} */
#sub-menu>li>a:hover {
	text-decoration: underline;
}

#menuHover:hover #sub-menu {
	opacity: 1;
	visibility: visible;
}

#menufont a {
	color: black;
}

#popup {
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -150px;
	margin-top: -100px;
	border: 2px solid #c4c4c4;
	width: 300px;
	height: 200px;
	z-index: 10 !important;
}

.sub_menu_list {
	margin : 0 4px;
}
</style>
</head>
<body onload="counter_init()">
	<!-- Header -->
	<header id="header" style="display: block; border-bottom: solid 2px rgba(210, 215, 217, 0.75);">
		<div class="row headerul" style="display:flex; justify-content:space-between; padding-right:0 !important">
			
			<div style="display:flex; width:70%; padding: 0;">
				<div style="display:flex; margin-right:2%; margin-left:4%;">
					<a href="${pageContext.request.contextPath}/" class="logo" style="padding-bottom: 
					0px; font-weight:bold; font-size:3rem; color: rgba(0, 59, 251, 1); font-style:italic">
						DAVI
					</a>
				</div>
				
				<div  style="padding-left:1.5em; display:flex; align-items:center; width:75%;">
					<ul id="menufont" class="secret" style="width:100%; display:flex; justify-content:flex-start;">						
						<c:if test="${not empty session_id }">
						<li><a href="${pageContext.request.contextPath}/member/reportView.me" style="color:rgba(0, 59, 251, 1);">?????????</a></li>
						<li><a href="${pageContext.request.contextPath}/member/weekMenu.me" style="color:rgba(0, 59, 251, 1);">??????</a></li>
						
								<li id="menuHover"><a href="#">?????????????????????</a>
									<ul id="sub-menu" style="display: flex;flex-direction: center;">
										<li><a class = "sub_menu_list" href="${pageContext.request.contextPath}/board/ceritificatedBoard.bo" >?????????????????????</a></li>
										<li><a class = "sub_menu_list"href="${pageContext.request.contextPath}/board/bestList.bo" >????????????????????????</a></li>
									</ul>
								</li>
						</c:if>
						<li><a href="${pageContext.request.contextPath}/board/freeList.bo">???????????????</a></li>	
								<li id="menuHover"><a href="#">????????????</a>
									<ul id="sub-menu" style="display: flex;flex-direction: center;">
										<li><a class = "sub_menu_list" href="${pageContext.request.contextPath}/board/cheatList.bo?searchWord=??????/??????" >??????/??????</a></li>
										<li><a class = "sub_menu_list" href="${pageContext.request.contextPath}/board/cheatList.bo?searchWord=?????????" >?????????</a></li>
										<li><a class = "sub_menu_list" href="${pageContext.request.contextPath}/board/cheatList.bo?searchWord=?????????" >?????????</a></li>
										<li><a class = "sub_menu_list" href="${pageContext.request.contextPath}/board/cheatList.bo?searchWord=?????????" >?????????</a></li>
										<li><a class = "sub_menu_list"href="${pageContext.request.contextPath}/board/cheatList.bo?searchWord=?????????/??????" >?????????</a></li>
									</ul>
								</li>
								<li><a href="${pageContext.request.contextPath}/board/qnaList.bo?qnaHead=??????">QnA</a></li>
						<c:if test="${session_id eq 'admin1234'}">
							<li><a href="${pageContext.request.contextPath}/app/dietary/admin.jsp">????????? ?????????</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			
			<div style="display: flex; justify-content: flex-end; align-items:center; width:30%; padding: 0;">
				<ul id="myMenu" style="margin-right: 3%; display:flex;">
					<!-- ????????? ?????????????????? ????????? ???????????? if?????? ?????? ?????? -->
					<c:if test="${not empty sessionScope.session_id}">
						<li style="margin-right:0.5em">${sessionScope.session_id}???&nbsp;</li>
						<li style="margin-right:0.5em"><a href="${pageContext.request.contextPath}/member/memberPayListCheckOk.me"><span><i class="fas fa-user" style="font-size:1.5em;"></i></span></a></li>
						<li><a href="${pageContext.request.contextPath}/member/logoutOk.me"><i class="fas fa-sign-out-alt" style="font-size:1.5em;"></i></a>&nbsp;</li>
					</c:if>
					<c:if test="${empty sessionScope.session_id}">					
						<li><a href="${pageContext.request.contextPath}/app/member/join_before.jsp">????????????</a></li>
						<li><a href="${pageContext.request.contextPath}/app/member/login.jsp">?????????</a>&nbsp;</li>						
					</c:if>
				</ul>
			</div>
		</div>		
	</header>
	<!-- Timer ?????? -->
	   <span id="counter" style="display: none"></span><!-- <input type="button" value="??????" onclick="counter_reset()"> -->
		
		<!-- Layer Popup ?????? ?????? -->
		<!-- div id="popup" style="visibility:hidden" -->
		<div id="popup" style="display:none"> <!-- ????????????????????? ????????? ????????? ????????? ?????? ????????? ?????? ????????? ??????. -->
			<div style="width:300px;height:170px" align="center"><br>
				<!-- ???????????? -->
				<span id="ncounter"></span> ??? ?????? ???????????? ?????????. <br><br>
				<input type="button" value="????????????" onclick="counter_reset(), close_window()">
				<input type="button" value="????????????" onclick="logout()">
			</div>
		</div>
		<!-- Layer Popup ?????? ??? -->

</body>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script>
		var path = "${pageContext.request.contextPath}";
		var nowPath = window.location.href;		
		//Layer Popup ?????? ??????
		function open_window(){
			var popup = document.getElementById("popup");
			popup.style.display = "block"; //block??? ???????????? ???????????????.
			//popup.style.visibility = "visible"; --> ?????? ????????? ????????? visible ????????? On ??? ??????
		}
		
		function close_window(){
			var popup = document.getElementById("popup");
			popup.style.display = "none"; //?????? ????????? ????????? ???????????? ??????.
			//popup.style.visibility = "hidden"; --> ?????? ????????? ???????????? ???????????? visible ????????? Off ??? ??????
		}
		//Layer Popup ?????? ???
		
		//Timer ?????? ??????
		var tid;
		var cnt = parseInt(550);//?????????(?????????)
		var session_id = "${session_id}"
		
		function counter_init() { //???????????? ?????? ????????? ??????
			tid = setInterval("counter_run()", 1000);
		}
		
		function counter_run() { //???????????? ?????? ?????????
			document.all.counter.innerText = time_format(cnt);
			cnt--;
			if(cnt < 0) {
				clearInterval(tid);
				/*???????????? ????????? ???????????? ????????? ?????????.*/
				open_window();

				/*???????????? ?????? ????????? ??????*/
				cnt = parseInt(30);//????????? ?????????(?????????)
				nCounter_init();
			}
		}
		
		function nCounter_init() { //???????????? ?????? ?????? ????????? ??????
			tid = setInterval("nCounter_run()", 1000);
		}


		function nCounter_run() { //???????????? ?????? ?????? ?????????
			document.all.ncounter.innerText = time_format(cnt);
			cnt--;
			if(cnt < 0) {
				/*?????? ?????? ???????????? 0?????? ???????????? ??? ?????????????????? ?????????????????? ??????*/
				logoutInfo();
			}
		}
				
		function counter_reset() { //???????????? ????????? ????????? ??? ?????? ?????? ??????
			//(1) WAS session ????????? ?????? WAS??? dummy ????????? ??????
			// => WAS ???????????? ??????!
			
			//(2) ?????? ????????? ?????????
			clearInterval(tid);
			cnt = parseInt(550);//?????????(?????????)
			counter_init();
			
			//(3) ???????????? ?????? ?????? ???????????? ?????????
			document.all.ncounter.innerText = ""; 
			
			self.location = path + "/member/sessionAdd.me?nowPath=" + nowPath;

		}
		
		function logoutInfo() { //???????????? ??? ?????????????????? ?????????????????? ??????
			self.location = path + "/member/logoutOk.me";
		}
		
		function logout() { //???????????? ??? ????????????????????? ?????? 
			self.location = path + "/member/logoutOk.me";
		}
		//Timer ?????? ???
		
		function time_format(s) {
			var nHour=0;
			var nMin=0;
			var nSec=0;
			if(s>0) {
				nMin = parseInt(s/60);
				nSec = s%60;

				if(nMin>60) {
					nHour = parseInt(nMin/60);
					nMin = nMin%60;
				}
			} 
			if(nSec<10) nSec = "0"+nSec;
			if(nMin<10) nMin = "0"+nMin;

			return ""+nHour+":"+nMin+":"+nSec;
		}
		
	</script>
</html>