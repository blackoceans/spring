<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="Author" content="최재호"/>
	<meta name="Keywords" content="최재호, Choi Jaeho, Seoul CityHall, 서울시청, 서울 시청, 서울시청 홈페이지, 서울 시청 홈페이지, 로그인, 서울시청 홈페이지 로그인, 서울 시청 홈페이지 로그인, Login, login,"/>
	
	<title>login</title>
	<link rel="stylesheet" href="css/login.css"/>
	<link rel="stylesheet" href="../css/common.css"/>
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="js/loginScript.js"></script>

</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<section id="mainTop2">
		<div class="mainTopLeftLogo cf showBalloon" title="메인 페이지"><a href="../sub1/board.jsp" tabindex="194"><img src="../images/subpageLogo.png" alt="시청 메인 로고2"/></a>			
		</div>
		<div id="mainTopRightLogo1" class="cf">
			<div id="mainTopRightLogo2">
				<div class="inputBorder">
					<input type="text" class="searchBar showBalloon" title="검색창" value=" 검색어를 입력해 주세요" style="font-size:15pt"/>
				</div>
			</div>
		</div>	
	</section>	
	<section id="loginCenterWrap" class="showBalloon" title="로그인">
		<div id="loginCenter">
			<div class="loginImg">
				<img src="../images/bgNewLogin.png" alt="loginLogo"/>
			</div>
			<div class="loginInfo">
				<h1>서울시 <span class="blue">통합회원 로그인</span></h1><br/>
				<p>서울특별시 누리집을 방문해주셔서 감사합니다 <br/>로그인하시면 보다 편리하게 서비스 이용이 가능합니다</p><br/>
				<p class="border"><img src="../images/icoBulNotiBlack.png" alt="noticeIcon"/><span class="red">타인 아이디</span>사용 등 약관 위반 행위 시<span class="red"> 서비스 이용</span>이 중지됩니다</p>
			</div>
		</div>	
		<div id="login">
			<div id="mainTopSlide">
				<input type="radio" id="first" name="tab" checked />
				<input type="radio" id="second" name="tab"/>
				<div class="buttons cf">
					<label for="first" class="showBalloon" title="서울시 통합회원">서울시 통합회원</label>
					<label for="second" class="showBalloon" title="본인확인">본인확인</label>
				</div>
				<div class="tabImg">
					<ul>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
			<div class="loginBody">
				<div class="loginBodyBox1">
					<input type="text" value="아이디(5~15자의 영문, 숫자만 가능)" class="loginBox showBalloon" title="아이디"/>
				</div>
				<div class="loginBodyBox2">
					<input type="password" value="비밀번호(입력 실패 5회 시 잠금 처리)" class="passwordBox showBalloon" title="비밀번호"/>
				</div>
				<div class="loginBodyBox3">
					<a href="../sub1/board.jsp" tabindex="195" class="showBalloon" title="로그인">로그인</a>
				</div>
				<div class="loginBodyBox4">
					<div class="loginBodyBox4-1">
						<a href="../sub2/qnaboard.jsp" tabindex="196" class="showBalloon" title="회원가입"><span><img src="../images/icoJoin.png" alt="ico-join"/>회원가입</span></a>
					</div>
					<div class="loginBodyBox4-2">
						<a href="../index.jsp" tabindex="197" class="showBalloon" title="아이디/비밀번호 찾기"><span>아이디/비밀번호 찾기</span></a>
					</div>
				</div>
			</div>
		</div>		
	</section>		
	<section id="loginBottomInfo1" class="showBalloon" title="보안 프로그램">
		<div class="loginBottomInfo1Box1">
			<h2>키보드 보안 프로그램 설치</h2>
		</div>
		<div class="loginBottomInfo1Box2">
			<p>아이디로 비밀번호를 이용한 로그인, 개인정보 변경 등 누리집을 통해 입력하는 정보를 안전하게 보호해 드립니다 <br/>키보드 보안 솔루션을 설치하지 않으셔도 누리집 이용에 아무런 지장이 없으나 보다 안전한 개인정보 보호를 위해 설치를 권장합니다.</p>
			<div class="installBox showBalloon" title="설치하기">
				<a href="../sub1/board.jsp" tabindex="198"><span class="installBoxImg"><img src="../images/icoKey.png" alt="ico-inst"/></span><span class="installBoxText">설치하기</span></a>
			</div>
		</div>
		<div class="loginBottomInfo1Box3">
			<div class="loginBottomInfo1Box3-1">
				<div class="width300">기능</div>
				<div class="width500">운영체제 지원범위</div>
				<div class="width500">브라우저 지원범위</div>
			</div>
			<div class="loginBottomInfo1Box3-2">
				<div class="width300 fBox">키보드로 입력되는 정보가 <br/>유출되거나 변조되지 않도록<br/> 보호해주는 프로그램</div>
				<div class="width500 sBox">XP, Vista, 7, 8, 8.1, 10, Mac</div>
				<div class="width500 tBox"><p>- Internet Explorer [8.0 이상] <br/> - Chrome[18 이상]<br/>- Edge , Firefox[18 이상]</p></div>
			</div>
		</div>
	</section>	
	<section id="loginBottomInfo2">
		<div class="text">
			<p><img src="../images/icoBulNotiBlack.png" alt=""/> 귀하의 정보는 동의 없이 공개되지 않으며, <span class="red">개인정보보호정책</span>에 의해 보호받고 있습니다.</p>
			<p>서울시는 사용자의 개인정보보호를 위해 사용자 여러분이 서울시 누리집의 서비스를 이용함에 있어 온라인상에서 서울시에서 제공한 개인정보가 보호 받을 수 있도록 최선을 다하고 있습니다</p><br/>
			<p><a href="../sub2/qnaboard.jsp" tabindex="199">이용안내</a> <a href="../sub1/board.jsp">이용약관</a></p>
		</div>
	</section>		
	<%@ include file="../include/footer.jsp" %>	
</body>
</html>