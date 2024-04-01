<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="EUC-KR">
	<meta charset="UTF-8">
	<meta name="Author" content="최재호"/>
	<meta name="Keywords" content="최재호, Choi Jaeho, Seoul CityHall, 서울시청, 서울 시청, 서울시청 홈페이지, 서울 시청 홈페이지, 서울 시청 홈페이지 메인, 메인, main, 서울시청 홈피, 서울시청 메인 페이지"/>
	<title>Seoul CityHall main</title>
	<link rel="stylesheet" href="css/common.css"/>
	<link rel="stylesheet" href="main/css/main.css"/>
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="main/js/jquery.bxslider.min.js"></script>
	<script src="main/js/mainScript.js"></script>
	<script src="js/common.js"></script>
	<script>
	var tid;
	var cnt = parseInt(600);
	function counter_init() {
		tid = setInterval("counter_run()", 1000);
	}

	function counter_reset() {
		clearInterval(tid);
		cnt = parseInt(60);
		counter_init();
	}

	function counter_run() {
		document.getElementById("counter").innerText = time_format(cnt);
		cnt--;
		if(cnt < 0) {
			clearInterval(tid);
			self.location = "main.html";
		}
	}
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
	<script>
		counter_init();
	</script>
	<script>window.open("popUp/vote.htm", "", "resizable=no, toolbar=no, width=506, height=506")
	</script>
</head>
<body>
	<div id="quickWrap">
		<a href="#" class="closeBtn"><img src="images/quickMenu01.png" alt="닫기버튼"/></a>
		<ul>
			<li><a href="login/login.jsp"><img src="images/quickMenu02.png" alt="닫기버튼"/><span class="sideText">로그인</span></a></li>
			<li><a href="sub1/board.jsp"><img src="images/quickMenu06.png" alt="닫기버튼"/><span class="sideText">Q&amp;A</span></a></li>
			<li><a href="sub2/qnaboard.jsp"><img src="images/quickMenu05.png" alt="닫기버튼"/><span class="sideText">자유게시판</span></a></li>
			<li><a href="login/login.jsp"><img src="images/quickMenu04.png" alt="닫기버튼"/><span class="sideText">서울시청소개</span></a></li>
			<li><a href="sub1/board.jsp"><img src="images/quickMenu03.png" alt="닫기버튼"/><span class="sideText">찾아오시는길</span></a></li>
		</ul>
		<p onclick="$('html').animate({scrollTop:0})">
			<span class="topMove">TOP</span>
		</p>
	</div>	
	<div class="mainEventBannerWrap">
		<a href="#"><div class="mainEventBanner">
			<div class="eventClose"></div>
		</div></a>
	</div>
	<%@ include file="include/header.jsp" %>
	<section id="mainTop2">
		<div class="mainTopLeftLogo cf showBalloon" title="메인 페이지"><a href="index.jsp" tabindex="194"><img src="images/CityhallLogo2.png" alt="시청 메인 로고2"/></a>			
		</div>
		<div id="mainTopRightLogo1" class="cf">
			<div id="mainTopRightLogo2">
				<div class="inputBorder">
					<input type="text" class="searchBar showBalloon" title="검색창" value=" 무엇을 도와드릴까요?"/>
					<div class="inputBorderBox">
						<div class="searchIcon"></div>
					</div>
				</div>
				<div class="loginBoxs">
					<div class="loginBox1">
						<input type="text" placeholder="아이디"/>
						<input type="password" placeholder="비밀번호"/>
						<div class="loginBox1-1">
							<div class="loginBox1-2">로그인</div>
							<div class="loginBox1-3">회원가입</div>
						</div>
					</div>
					<div class="loginBox2">
						<p class="loginTopP">자동 로그인까지</p>
						<span id="counter"></span>
						<p>초 남음</p>
						<div class="loginBox2-1"><a href="#">연장</a></div>
					</div>
				</div>
			</div>
		</div>	
	</section>
	<section id="mainTopCenterWrap">
		<div id="mainTopCenterBox" class="cf">
			<div id="mainTopSlide">
				<input type="radio" id="first" name="tab" checked />
				<input type="radio" id="second" name="tab"/>
				<div class="buttons cf">
					<label for="first" class="showBalloon" title="주요뉴스"><img src="images/mainSlideLogo1.png" alt="메인 슬라이드 로고1"/><br/>주요뉴스</label>
					<label for="second" class="showBalloon" title="시민참여"><img src="images/mainSlideLogo2.png" alt="메인 슬라이드 로고2"/><br/>시민참여</label>
				</div>
				<div class="tabImg cf">
					<ul>
						<span class="left"><a href="#" onclick="return false"><img src="images/btn_left.png" alt="이전"/></a></span>					
						<div class="slideGroup1 cf">
							<li class="showBalloon imgLot" title="슬라이드 이미지"><img src="images/mainSlideImg1.jpg" alt="메인 슬라이드 이미지1" width="830" height="430"/></li>
							<li class="imgLot"><img src="images/mainSlideImg3.jpg" alt="" width="830" height="430"/></li>
							<li class="imgLot"><img src="images/mainSlideImg4.jpg" alt="" width="830" height="430"/></li>
							<li class="imgLot"><img src="images/mainSlideImg5.jpg" alt="" width="830" height="430"/></li>
						</div>
						<span class="right"><a href="#" onclick="return false"><img src="images/btn_right.png" alt="다음"/></a></span>
						<div class="slideText1">
							<div class="slideTextSub">
								<p>'역대 최대' 중장년을 위한 보람일자리 5600명 모집</p>
							</div>
							<div class="slideTextSub">
								<p>끊김 없이 간다! 자전거 타고 정릉·청계천~한강까지</p>
							</div>							
							<div class="slideTextSub">
								<p>30대, 40대 여성이라면 구직지원금 신청해서 받으세요</p>
							</div>							
							<div class="slideTextSub">
								<p>어린이·청소년을 대상으로 시민상 수상후보자 공개모집</p>
							</div>							
						</div>
						<div class="control_panel">
							<div class="control_button"></div>
							<div class="control_button"></div>
							<div class="control_button"></div>
							<div class="control_button"></div>
						</div>
						<div class="slideGroup2">
							<li class="showBalloon" title="슬라이드 이미지"><img src="images/mainSlideImg2.jpg" alt="메인 슬라이드 이미지2" width="830" height="430"/></li>
						</div>
					</ul>
				</div>
			</div>
			<div id="mainTopRight">
				<ol>
					<li class="weather">
						<h2>서울시</h2>
						<div class="cicon"></div>
						<div class="ctemp"></div>
						<div class="clowtemp">최저 온도 : </div>
						<div class="chightemp">최고 온도 : </div>
					</li>
					<li class="showBalloon" title="서울시 카톡"><a href="login/login.jsp" tabindex="199"><img src="images/slideRight3.png" width="350" alt="슬라이드 오른쪽 3"/></a></li>
				</ol>
			</div>
		</div>
		<div id="mainCenter" class="cf">
			<div id="mainCenterService1" class="showBalloon" title="주요 서비스">
				<ol>
					<li>주요 서비스</li>
					<li><a href="sub1/board.jsp" tabindex="200">전체 누리집 ＞</a></li>
				</ol>
			</div><hr/>
			<div id="mainCenterService1Sub1" class="cf tim">
				<ol>
					<li class="showBalloon" title="공공서비스 예약"><a href="sub2/qnaboard.jsp" class="option1" tabindex="201"></a></li>
					<li class="showBalloon" title="응답소"><a href="sub1/board.jsp" class="option2" tabindex="202"></a></li>
					<li class="showBalloon" title="서울일자리"><a href="login/login.jsp" class="option3" tabindex="203"></a></li>
					<li class="showBalloon" title="부동산정보"><a href="sub2/qnaboard.jsp" class="option4" tabindex="204"></a></li>
					<li class="showBalloon" title="서울런"><a href="sub1/board.jsp" class="option5" tabindex="205"></a></li>
					<li class="showBalloon" title="서울복지포털"><a href="login/login.jsp" class="option6" tabindex="206"></a></li>
					<li class="showBalloon" title="서울거주포털"><a href="sub2/qnaboard.jsp" class="option7" tabindex="207"></a></li>
					<li class="showBalloon" title="청년몽땅정보통"><a href="sub1/board.jsp" class="option8" tabindex="208"></a></li>
					<li class="showBalloon" title="내 손안에 서울"><a href="sub2/qnaboard.jsp" class="option9" tabindex="209"></a></li>
					<li class="showBalloon" title="상상대로 서울"><a href="login/login.jsp" class="option10" tabindex="210"></a></li>
					<li class="showBalloon" title="전자책"><a href="sub1/board.jsp" class="option11" tabindex="211"></a></li>
					<li class="showBalloon" title="시의회"><a href="sub2/qnaboard.jsp" class="option12" tabindex="212"></a></li>
				</ol>
			</div>
			<div id="mainCenterService1Sub2" class="cf">
				<ol>
					<li><a href="sub1/board.jsp" tabindex="213">공공서비스 예약</a></li>
					<li><a href="sub2/qnaboard.jsp" tabindex="214">응답소</a></li>
					<li><a href="login/login.jsp" tabindex="215">서울일자리</a></li>
					<li><a href="sub1/board.jsp" tabindex="216">부동산정보</a></li>
					<li><a href="sub2/qnaboard.jsp" tabindex="217">서울런</a></li>
					<li><a href="sub2/qnaboard.jsp" tabindex="218">서울복지포털</a></li>
					<li><a href="login/login.jsp" tabindex="219">서울주거포털</a></li>
					<li><a href="sub1/board.jsp" tabindex="220">청년몽땅정보통</a></li>
					<li><a href="login/login.jsp" tabindex="221">내 손안에 서울</a></li>
					<li><a href="sub2/qnaboard.jsp" tabindex="222">상상대로 서울</a></li>
					<li><a href="sub1/board.jsp" tabindex="223">전자책</a></li>
					<li><a href="login/login.jsp" tabindex="224">시의회</a></li>
				</ol>
			</div>
		</div>	
	</section>
	<section id="mainCenterService2">
		<div class="mainCenterService2Sub">
			<ol>
				<li class="showBalloon" title="스토리 in서울"><a href="sub1/board.jsp" tabindex="225"><img src="images/mainCenterService2SubImg1.jpg" alt="IMGBANNER"/></a></li>
				<li class="mainCenterService2SubImg showBalloon" title="빈대 신고 센터"><a href="sub2/qnaboard.jsp" tabindex="226"><img src="images/mainCenterService2SubImg2.jpg" alt="IMGBANNER"/></a></li>
				<li class="mainCenterService2SubImg showBalloon" title="수산물 방사능 결과"><a href="login/login.jsp" tabindex="227"><img src="images/mainCenterService2SubImg3.jpg" alt="IMGBANNER"/></a></li>
				<li class="mainCenterService2SubImg showBalloon" title="정부24"><a href="sub1/board.jsp" tabindex="228"><img src="images/mainCenterService2SubImg4.jpg" alt="IMGBANNER"/></a></li>
				<li class="mainCenterService2SubImg showBalloon" title="온라인 민원"><a href="login/login.jsp" tabindex="229"><img src="images/mainCenterService2SubImg5.jpg" alt="IMGBANNER"/></a></li>
			</ol>
		</div>
	</section>
	<section id="maincenterWrap" class="cf">	
		<article id="mainCenterBoard">
			<div id="mainCenterBoard2" class="showBalloon" title="이벤트 신청">		
				<div class="mainCenterBoardSub1">
					<ol>
						<li>이벤트 신청</li>
						<li class="showBalloon" title="더보기"><a href="login/login.jsp" tabindex="230"></a></li>
					</ol>
				</div>
				<div class="mainCenterBoardSub2">
					<div class="mainCenterBoardSub3">
						<ol>
							<li class="centerBoardColor1">행정</li>
							<li class="centerBoardColor1">행정</li>
							<li class="centerBoardColor2">복지</li>
							<li class="centerBoardColor1">행정</li>
							<li class="centerBoardColor3">환경</li>
						</ol>
					</div>
					<div class="mainCenterBoardSub4">
						<ol>
							<li><a href="sub1/board.jsp" tabindex="231">디지털 격차 해소에 동행할 어르신 모십니다!</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="232">'2024 서울시청 하늘광장 갤러리 전시작가' 공개</a></li>
							<li><a href="login/login.jsp" tabindex="233">'성장과 배움의 동행을 실천할'서울런 멘토단' 800</a></li>
							<li><a href="sub1/board.jsp" tabindex="234">2024 서울시민기자 모집</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="235">"덜 쓰고 덜 타면 혜택이 쏠쏠~"서울시,에코·승용차</a></li>
						</ol>
					</div>
				</div>
			</div>
			<div id="mainCenterBoard3" class="showBalloon" title="이달의 행사 및 축제">		
				<div class="mainCenterBoardSub1">
					<ol>
						<li>이달의 행사 및 축제</li>
						<li class="showBalloon" title="더보기"><a href="login/login.jsp" tabindex="236"></a></li>
					</ol>
				</div>
				<div class="mainCenterBoardSub2">
					<div class="mainCenterBoardSub3">
						<ol>
							<li class="centerBoardColor4">경제</li>
							<li class="centerBoardColor5">문화</li>
							<li class="centerBoardColor5">문화</li>
							<li class="centerBoardColor3">환경</li>
							<li class="centerBoardColor5">문화</li>
						</ol>
					</div>
					<div class="mainCenterBoardSub4">
						<ol>
							<li><a href="login/login.jsp" tabindex="237">디지털 격차 해소에 동행할 어르신 모십니다!</a></li>
							<li><a href="sub1/board.jsp" tabindex="238">'2024 서울시청 하늘광장 갤러리 전시작가' 공개</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="239">'성장과 배움의 동행을 실천할'서울런 멘토단' 800</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="240">2024 서울시민기자 모집</a></li>
							<li><a href="sub1/board.jsp" tabindex="241">"덜 쓰고 덜 타면 혜택이 쏠쏠~"서울시,에코·승용차</a></li>
						</ol>
					</div>
				</div>
			</div>	
			<div id="mainCenterBoard4" class="showBalloon" title="자주 찾은 서비스">		
				<div class="mainCenterBoardSub1">
					<ol>
						<li>자주 찾은 서비스</li>
					</ol>
				</div>
				<div class="mainCenterBoardSub5">
					<div class="mainCenterBoardSub6">
						<ul>
							<li><a href="sub2/qnaboard.jsp" tabindex="242">법무행정(자치법규)</a></li>
							<li><a href="sub1/board.jsp" tabindex="243">지방세납부</a></li>
							<li><a href="login/login.jsp" tabindex="244">공공서비스예약</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="245">서울일자리포털</a></li>
							<li><a href="sub1/board.jsp" tabindex="246">조직도</a></li>
						</ul>
					</div>
					<div class="mainCenterBoardSub7">
						<ul>
							<li><a href="sub1/board.jsp" tabindex="247">서울안전누리</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="248">전자책(e-book)</a></li>
							<li><a href="login/login.jsp" tabindex="249">평생학습포털</a></li>
							<li><a href="sub1/board.jsp" tabindex="250">내손안에서울</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="251">에코마일리지</a></li>
						</ul>
					</div>
				</div>
			</div>				
		</article>
		
		<div id="mainCenterInformation">
			<div class="mainCenterInformationSub1">
				<ol>
					<li><span>분야별정보</span></li>
				</ol>
			</div>
			<div class="mainCenterInformationSub2">
				<ol>
					<li class="showBalloon" title="주택"><a href="sub2/qnaboard.jsp" class="option13" tabindex="252"></a></li>
					<li class="showBalloon" title="경제"><a href="sub1/board.jsp" class="option14" tabindex="253"></a></li>
					<li class="showBalloon" title="교통"><a href="login/login.jsp" class="option15" tabindex="254"></a></li>
					<li class="showBalloon" title="환경"><a href="sub2/qnaboard.jsp" class="option16" tabindex="255"></a></li>
					<li class="showBalloon" title="복지"><a href="sub1/board.jsp" class="option17" tabindex="256"></a></li>
					<li class="showBalloon" title="안전"><a href="sub2/qnaboard.jsp" class="option18" tabindex="257"></a></li>
					<li class="showBalloon" title="문화"><a href="login/login.jsp" class="option19" tabindex="258"></a></li>
					<li class="showBalloon" title="행정"><a href="sub1/board.jsp" class="option20" tabindex="259"></a></li>
				</ol>
			</div>
			<div class="mainCenterInformationSub3">
				<ol>
					<li><a href="login/login.jsp" tabindex="260">주택</a></li>
					<li><a href="sub1/board.jsp" tabindex="261">경제</a></li>
					<li><a href="sub2/qnaboard.jsp" tabindex="262">교통</a></li>
					<li><a href="sub2/qnaboard.jsp" tabindex="263">환경</a></li>
					<li><a href="login/login.jsp" tabindex="264">복지</a></li>
					<li><a href="sub1/board.jsp" tabindex="265">안전</a></li>
					<li><a href="sub2/qnaboard.jsp" tabindex="266">문화</a></li>
					<li><a href="login/login.jsp" tabindex="267">행정</a></li>
				</ol>
			</div>
		</div>
	</section>
	<section id="mainBottomWrap">
		<article id="mainNotice1" class="showBalloon" title="새소식">
			<div class="mainNotice1Sub1">
				<ol>
					<li>새소식</li>
					<li><a href="sub1/board.jsp" tabindex="268"></a></li>
					<li class="showBalloon" title="전체보기"><a href="login/login.jsp" tabindex="269">전체보기</a></li>
				</ol>
			</div>
			<div class="mainNotice1Sub2">
				<ol>
					<li><a href="sub2/qnaboard.jsp" class="mainNotice1Sub2Img1" tabindex="270"><img src="images/mainNotice1Sub2Img5.jpg" alt="newNotice05"/></a></li>
					<li><a href="sub1/board.jsp" class="mainNotice1Sub2Img2" tabindex="271"><img src="images/mainNotice1Sub2Img6.jpg" alt="newNotice06"/></a></li>
					<li><a href="login/login.jsp" class="mainNotice1Sub2Img3" tabindex="272"><img src="images/mainNotice1Sub2Img7.jpg" alt="newNotice07"/></a></li>
					<li><a href="sub2/qnaboard.jsp" class="mainNotice1Sub2Img4" tabindex="273"><img src="images/mainNotice1Sub2Img8.jpg" alt="newNotice08"/></a></li>
				</ol>
			</div>
			<div class="mainNotice1Sub3">
				<ol>
					<li><a href="sub1/board.jsp" tabindex="274">자동차세 절감 혜택 가장 큰 1월에 연세액 납부하세요!</a></li>
					<li><a href="login/login.jsp" tabindex="275">야간,휴일에도 진료하는 병원을 찾고 있다면? 우리아이 안심 의료기관을 이용해보세요</a></li>
					<li><a href="sub2/qnaboard.jsp" tabindex="276">출근 시간 서울지하철 4호선,객실 의자 없는 열차 시범운행</a></li>
					<li><a href="sub1/board.jsp" tabindex="277">31일까지 경유차 환경개선부담금 연납하고 10% 할인 받으세요</a></li>
				</ol>
			</div>
			<div class="mainNotice1Sub4">
				<ol>
					<li><a href="sub2/qnaboard.jsp" class="mainNotice1Sub4Img1" tabindex="278"><img src="images/mainNotice1Sub4Img5.png" alt="newNotice05"/></a></li>
					<li><a href="sub1/board.jsp" class="mainNotice1Sub4Img2" tabindex="279"><img src="images/mainNotice1Sub4Img6.jpg" alt="newNotice06"/></a></li>
					<li><a href="sub2/qnaboard.jsp" class="mainNotice1Sub4Img3" tabindex="280"><img src="images/mainNotice1Sub2Img2.jpg" alt="newNotice07"/></a></li>
					<li><a href="login/login.jsp" class="mainNotice1Sub4Img4" tabindex="281"><img src="images/mainNotice1Sub2Img5.jpg" alt="newNotice08"/></a></li>
				</ol>
			</div>
			<div class="mainNotice1Sub5">
				<ol>
					<li><a href="sub1/board.jsp" tabindex="282">'더 촘촘해진 복지 안전망' 서울형 기초보장제도 생계급여 역대 최대 인상</a></li>
					<li><a href="login/login.jsp" tabindex="283">서울인터넷(loT) 스마트보안등에 안전 디자인 더해 안심 귀갓길 조성</a></li>
					<li><a href="sub2/qnaboard.jsp" tabindex="284">청소년이 만든 '서체 4종' 무료 배포, 자유롭게 사용하세요!</a></li>
				</ol>
			</div>			
		</article>
		<article id="mainNotice2">
			<div class="mainNotice2Sub1 showBalloon" title="서울영상">
				<div class="mainNotice2Sub2">서울영상
				</div>
				<div class="mainNotice2Sub3">					
				</div>
			</div>
			<div class="mainNotice2Sub4 showBalloon" title="게시판">
				<div class="mainNotice2Sub5">
					<ol>
						<li><a href="#tab01" class="on">서울소식</a></li>
						<li><a href="#tab02">고시공고</a></li>
						<li><a href="#tab03">입찰공고</a></li>
						<li><a href="#tab04">채용시험</a></li>
						<li><a href="#tab05">보도자료</a></li>
						<li><a href="#tab06">이벤트</a></li>
					</ol>
				</div>
				<div class="mainNotice2Sub6" id="tab01">
					<div class="mainNotice2Sub7">
						<ol>
							<li class="red">고시공고</li>
							<li class="blue">입찰공고</li>
							<li class="brown">채용시험</li>
							<li class="purple">보도자료</li>
						</ol>
					</div>
					<div class="mainNotice2Sub8">
						<ol>
							<li><a href="sub1/board.jsp" tabindex="285">2024년「청년고용촉진 프로그램 기획 및 운영 전문가」서울시</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="286">시립중계노인전문요양원 위탁 운영체 선정결과 공고</a></li>
							<li><a href="login/login.jsp" tabindex="287">미래청년기획단 (시간선택)임기제공무원 면접시험 합격자 공고</a></li>
							<li><a href="sub1/board.jsp" tabindex="288">서울시장 동정-23일(화) 2024년 종로구 예산설명회</a></li>
						</ol>
					</div>
				</div>
				<div class="mainNotice2Sub6" id="tab02">
					<div class="mainNotice2Sub7">
						<ol>
							<li class="blue">민원안내</li>
							<li class="yellow">자료모음</li>
							<li class="blue">시험정보</li>
							<li class="red">자료보도</li>
						</ol>
					</div>
					<div class="mainNotice2Sub8">
						<ol>
							<li><a href="sub1/board.jsp" tabindex="285">'서울시 어린이집 종이팩 자원순환 동행 협약' 재생제품</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="286">"민간임대주택특별법"에서 정한 "촉진지구" 문의 </a></li>
							<li><a href="login/login.jsp" tabindex="287">건축공사업과 실내건축공사업 면허의 시공범위 </a></li>
							<li><a href="sub1/board.jsp" tabindex="288">서울시내버스 2025년까지 완전 저상 교체 정책 질의 </a></li>
						</ol>
					</div>
				</div>
				<div class="mainNotice2Sub6" id="tab03">
					<div class="mainNotice2Sub7">
						<ol>
							<li class="red">고시공고</li>
							<li class="purple">입찰공고</li>
							<li class="red">채용시험</li>
							<li class="purple">보도자료</li>
						</ol>
					</div>
					<div class="mainNotice2Sub8">
						<ol>
							<li><a href="sub1/board.jsp" tabindex="285">서울시내버스 2025년까지 완전 저상 교체 정책 질의</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="286">건축공사업과 실내건축공사업 면허의 시공범위 </a></li>
							<li><a href="login/login.jsp" tabindex="287">미래청년기획단 (시간선택)임기제공무원 면접시험 합격자 공고</a></li>
							<li><a href="sub1/board.jsp" tabindex="288">'서울시 어린이집 종이팩 자원순환 동행 협약' 재생제품</a></li>
						</ol>
					</div>
				</div>
				<div class="mainNotice2Sub6" id="tab04">
					<div class="mainNotice2Sub7">
						<ol>
							<li class="blue">고시공고</li>
							<li class="blue">입찰공고</li>
							<li class="brown">채용시험</li>
							<li class="yellow">보도자료</li>
						</ol>
					</div>
					<div class="mainNotice2Sub8">
						<ol>
							<li><a href="sub1/board.jsp" tabindex="285">2024년「청년고용촉진 프로그램 기획 및 운영 전문가」서울시</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="286">시립중계노인전문요양원 위탁 운영체 선정결과 공고</a></li>
							<li><a href="login/login.jsp" tabindex="287">'서울시 어린이집 종이팩 자원순환 동행 협약' 재생제품</a></li>
							<li><a href="sub1/board.jsp" tabindex="288">서울시장 동정-23일(화) 2024년 종로구 예산설명회</a></li>
						</ol>
					</div>
				</div>
				<div class="mainNotice2Sub6" id="tab05">
					<div class="mainNotice2Sub7">
						<ol>
							<li class="red">고시공고</li>
							<li class="brown">입찰공고</li>
							<li class="brown">채용시험</li>
							<li class="blue">보도자료</li>
						</ol>
					</div>
					<div class="mainNotice2Sub8">
						<ol>
							<li><a href="sub1/board.jsp" tabindex="285">2024년「청년고용촉진 프로그램 기획 및 운영 전문가」서울시</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="286">시립중계노인전문요양원 위탁 운영체 선정결과 공고</a></li>
							<li><a href="login/login.jsp" tabindex="287">미래청년기획단 (시간선택)임기제공무원 면접시험 합격자 공고</a></li>
							<li><a href="sub1/board.jsp" tabindex="288">서울시장 동정-23일(화) 2024년 종로구 예산설명회</a></li>
						</ol>
					</div>
				</div>
				<div class="mainNotice2Sub6" id="tab06">
					<div class="mainNotice2Sub7">
						<ol>
							<li class="red">당첨 발표</li>
							<li class="purple">Event정보</li>
							<li class="red">당첨 발표</li>
							<li class="red">당첨 발표</li>
						</ol>
					</div>
					<div class="mainNotice2Sub8">
						<ol>
							<li><a href="sub1/board.jsp" tabindex="285">2024년「청년고용촉진 프로그램 기획 및 운영 전문가」서울시</a></li>
							<li><a href="sub2/qnaboard.jsp" tabindex="286">시립중계노인전문요양원 위탁 운영체 선정결과 공고</a></li>
							<li><a href="login/login.jsp" tabindex="287">미래청년기획단 (시간선택)임기제공무원 면접시험 합격자 공고</a></li>
							<li><a href="sub1/board.jsp" tabindex="288">서울시장 동정-23일(화) 2024년 종로구 예산설명회</a></li>
						</ol>
					</div>
				</div>				
			</div> 
			<div class="mainNotice2Sub9 showBalloon" title="광고">
				<div class="autoSlideS">
					<ul class="overWrap"> 
						<li class="over"> 
							<a href="#">
								<h2>농촌문화체험</h2>
								<p>힐링여행</p>
								<p>오감만족 행복체험</p>								
							</a>							
						</li>
						<li class="under01">
							<a href="#" class="underPic01">
								<p>서울시축제이야기</p>
								<span href="#" class="underTex01"></span>
							</a> 											
						</li>
						<li class="under02">
							<a href="#" class="underPic02">
								<p>서울시 농특산물</p>
								<span href="#" class="underTex02"></span>
							</a>							
						</li>
						<li class="under03">
							<a href="#">
								<h2>감성여행</h2>
								<p>일상에 지친 몸과 마음을</p>
								<p>힐링할 수 있는 추천 감성여행</p>
							</a>						
						</li>
					</ul>
				</div>
			
			</div>
		</article>
		<article id="mainNotice3" class="showBalloon" title="주목해야 할 정보">
			<div class="slideButtonL">
				<a href="#"><img src="images/slideButtonLeft.png" alt="slideButtonLeft"/></a>
			</div>
			<div class="slideTitle">
				<p>주목해야 할 정보</p>
			</div>
			<div class="slideButtonR">
				<a href="#"><img src="images/slideButtonRight.png" alt="slideButtonRight"/></a>
			</div>
			<div class="slide">
				<ul>
					<li><a href="#"><img src="images/mainBottomBanner1.jpg" alt=""/></a></li>
					<li><a href="#"><img src="images/mainBottomBanner2.jpg" alt=""/></a></li>
					<li><a href="#"><img src="images/mainBottomBanner3.jpg" alt=""/></a></li>
					<li><a href="#"><img src="images/mainBottomBanner4.jpg" alt=""/></a></li>
					<li><a href="#"><img src="images/mainBottomBanner5.png" alt=""/></a></li>
					<li><a href="#"><img src="images/mainBottomBanner6.jpg" alt=""/></a></li>
					<li><a href="#"><img src="images/mainBottomBanner7.jpg" alt=""/></a></li>
				</ul>
			</div>
		</article>
		<div id="mainBottom">
			<ol>
				<li class="showBalloon" title="직속기관·사업소"><a href="sub2/qnaboard.jsp" tabindex="296">직속기관·사업소</a></li>
				<li class="showBalloon" title="공사·출연기관"><a href="sub1/board.jsp" tabindex="297">공사·출연기관</a></li>
				<li class="showBalloon" title="자치구"><a href="sub2/qnaboard.jsp" tabindex="298">자치구</a></li>
				<li class="showBalloon" title="중앙행정기관"><a href="login/login.jsp" tabindex="299">중앙행정기관</a></li>
				<li class="showBalloon" title="지방자치단체·유관기관"><a href="sub1/board.jsp" tabindex="300">지방자치단체·유관기관</a></li>
			</ol>
		</div>	
	</section>
	<%@ include file="include/footer.jsp" %>
</body>
</html>