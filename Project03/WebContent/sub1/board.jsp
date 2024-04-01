<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="Author" content="최재호"/>
	<meta name="Keywords" content="최재호, Choi Jaeho,Seoul CityHall,게시판, 이벤트, 서울소식, 서울시청, 서울 시청, 서울시청 홈페이지, 서울 시청 홈페이지"/>

	<title>Board</title>
	<link rel="stylesheet" href="css/Board.css"/>
	<link rel="stylesheet" href="../css/common.css"/>
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="js/boardScript.js"></script>
	<script src="../js/common.js"></script>

</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<section id="mainTop2">
		<div class="mainTopLeftLogo cf showBalloon" title="메인 페이지"><a href="../index.jsp" tabindex="194"><img src="../images/subpageLogo.png" alt="시청 메인 로고2"/></a>			
		</div>
		<div id="mainTopRightLogo1" class="cf">
			<div id="mainTopRightLogo2">
				<div class="inputBorder">
					<input type="text" class="searchBar showBalloon" title="검색창" value=" 검색어를 입력해 주세요" style="font-size:15pt"/>
				</div>
			</div>
		</div>	
	</section>
	<aside id="subBodyWrap" class="cf">
		<aside id="sideMenu">
			<div class="sideMenuTitle">
				<h2>서울소식</h2>
			</div>
			<nav>
				<ol>
					<li class="showBalloon" title="새소식"><a href="../index.jsp" tabindex="195">새소식</a>
						<ol class="sideMenuSub">
							<li><a href="../login/login.jsp" tabindex="196">분야별 새소식</a></li>
							<li><a href="../index.jsp" tabindex="197">이달의 행사 및 축제</a></li>
							<li><a href="../sub2/qnaboard.jsp" tabindex="198">이벤트 신청</a></li>
							<li><a href="../login/login.jsp" tabindex="199">자치구 주요뉴스</a></li>
							<li><a href="../index.jsp" tabindex="200">강좌 교육</a></li>
							<li><a href="../sub2/qnaboard.jsp" tabindex="201">인사발령</a></li>
						</ol>
					</li>
					<li class="showBalloon" title="서울시 정책 뉴스"><a href="../login/login.jsp" tabindex="202">서울시 정책 뉴스</a></li>
					<li class="showBalloon" title="공고"><a href="../login/login.jsp" tabindex="203">공고</a>
						<ol class="sideMenuSub">
							<li><a href="../index.jsp" tabindex="204">입찰공고</a></li>
							<li><a href="../sub2/qnaboard.jsp" tabindex="205">수의계약내역</a></li>
							<li><a href="../login/login.jsp" tabindex="206">채용시험</a></li>
							<li><a href="../index.jsp" tabindex="207">서울시보</a></li>
							<li><a href="../sub2/qnaboard.jsp" tabindex="208">고시공고</a></li>
							<li><a href="../index.jsp" tabindex="209">도시관리계획안 열람공고</a></li>
							<li><a href="../login/login.jsp" tabindex="210">석면해체·제거일정</a></li>
						</ol>
					</li>
					<li class="showBalloon" title="보도·해명자료"><a href="../login/login.jsp" tabindex="211">보도·해명자료</a>
						<ol class="sideMenuSub">
							<li><a href="../index.jsp" tabindex="212">보도자료</a></li>
							<li><a href="../sub2/qnaboard.jsp" tabindex="213">해명자료</a></li>
						</ol>
					</li>
					<li class="showBalloon" title="내 손안에 서울"><a href="../login/login.jsp" tabindex="214">내 손안에 서울</a></li>
					<li class="showBalloon" title="서울사랑"><a href="../index.jsp" tabindex="215">서울사랑</a></li>
					<li class="showBalloon" title="내친구서울"><a href="../sub2/qnaboard.jsp" tabindex="216">내친구서울</a></li>
				</ol>
			</nav>
		</aside>	
		<section id="subHeader">
			<div class="subHeader1">
				<ol>
					<li>이벤트 신청</li>
					<li class="showBalloon" title="프린트"><a href="../index.jsp" tabindex="217"></a></li>
				</ol>
			</div>
			<div class="subHeader2">
				<ol>
					<li><a href="../login/login.jsp" tabindex="218" class="showBalloon" title="Home">Home</a> > <a href="../login/login.jsp" tabindex="219" class="showBalloon" title="서울소식">서울소식</a> > <a href="../index.jsp" tabindex="220" class="showBalloon" title="새소식">새소식</a> > <a href="../login/login.jsp" class="showBalloon" title="이벤트 신청">이벤트 신청</a></li>
				</ol>
			</div>
		</section>
		<nav id="subSearchBar">
			<div class="searchBox1">
				<div class="searchBoxHead">분야선택</div>
				<div class="searchBoxNav1">
					<a href="../login/login.jsp" tabindex="221" class="showBalloon" title="모든분야">모든분야</a>
					<a href="../sub2/qnaboard.jsp" tabindex="222" class="showBalloon" title="교통">교통</a>
					<a href="../index.jsp" tabindex="223" class="showBalloon" title="안전">안전</a>
					<a href="../login/login.jsp" tabindex="224" class="showBalloon" title="주택">주택</a>
					<a href="../login/login.jsp" tabindex="225" class="showBalloon" title="경제">경제</a>
					<a href="../index.jsp" tabindex="226" class="showBalloon" title="환경">환경</a>
					<a href="../sub2/qnaboard.jsp" tabindex="227" class="showBalloon" title="문화">문화</a>
					<a href="../login/login.jsp" tabindex="228" class="showBalloon" title="복지">복지</a>
					<a href="../index.jsp" tabindex="229" class="showBalloon" title="행정">행정</a>
				</div>
			</div>
			<div class="searchBox2">
				<div class="searchBoxHead">기간선택</div>
				<div class="searchBoxNav2">
					<a href="../index.jsp" tabindex="230" class="showBalloon" title="오늘">오늘</a>
					<a href="../login/login.jsp" tabindex="231" class="showBalloon" title="최근 일주일">최근 일주일</a>
					<a href="../sub2/qnaboard.jsp" tabindex="232" class="showBalloon" title="최근 한달">최근 한달</a>
					<span> 예)2018-08-15</span>
					<input type="text" name="txtStart" id="txtStart" class="showBalloon" title="시작일"/>
					<img src="../images/calendarIcon.png" alt="calendarIcon"/>
					<span>~</span>
					<input type="text" name="txtEnd" id="txtEnd" class="showBalloon" title="종료일"/>
					<img src="../images/calendarIcon.png" alt="calendarIcon"/>					
				</div>			
			</div>
			<div class="searchBox3">
				<div class="searchBoxHead">검색어</div>
				<div class="searchBoxNav3">
					<input type="text" title="검색" name="search" id="search" class="showBalloon" title="검색창"/>
					<button class="btnFind showBalloon" title="검색버튼"><img src="../images/btnSearch.png" alt="btn_search"/>검색</button>
					<button class="btnClear showBalloon" title="초기화버튼"><img src="../images/icReset.png" alt="ic_reset"/>초기화</button>
				</div>			
			</div>
		</nav>
		<section id="sublist" class="showBalloon" title="게시판">
			<article class="list01">
				<a href="../sub2/qnaboard.jsp" tabindex="233"><h2><img src="../images/articleImg01.png" alt="articleImg01"/>서울공예박물관 &lt;2024 SeMoCA 공예강좌> 첫 번째 강좌 운영 안내</h2></a>
				<span>2024-02-14 13:29:29</span><span class="purple"> [문화]</span>
				<p>서울공예박물관에서 공예 문화의 이해를 넓힐 수 있는 2024 SeMoCA 공예 강좌를 준비했습니다 <br/>다방면으로 공예를 이해할 수 있는 분야별 전문가를 초빙하여 공예 전반 지식을 넓히고, 심도 있는 공예 교육의 기회를 제공합니다 <br/>공예강좌는 올해 총 6회로 진행될 예정으로 시민 여러분의 많은 관심과 참여 부탁드립니다</p>				
			</article>
			<article class="list02">
				<a href="../index.jsp" tabindex="234"><h2>디지털 격차 해소에 동행할 어르신 모십니다! 어디나지원단강사 150명 모집</h2></a>
				<span>2024-01-22 16:14:36</span><span class="blue"> [행정]</span>
				<p>서울디지털재단(이사장 강요식)은 22일(월)부터 디지털 약자 없는 서울시 만들기에 동참할 &lt;어디나지원단> 150명을 신규 모집한다.</p>
			</article>
			<article class="list03">
				<a href="../login/login.jsp" tabindex="235"><h2>'2024 서울시청 하늘광장 갤러리 전시작가' 공개모집</h2></a>
				<span>2024-01-17 15:41:33</span><span class="blue"> [행정]</span>
				<p>서울시는 오는 1월 19일(금)부터 2월 18일까지 '동행·매력 특별시 서울'을 주제로 2024 서울시청 하늘광장 갤러리 전시작가를 공모한다고 밝혔다</p>			
			</article>
			<article class="list04">
				<a href="../index.jsp" tabindex="236"><h2>'복지도 창의시대' 서울시, 현장복지TF로 생생한 목소리 담아낸다</h2></a>
				<span>2024-02-14 14:05:15</span><span class="brown"> [복지]</span>
				<p>노인빈곤, 고독사, 장애인 돌봄부담 등 복지 현장의 생생한 목소리를 듣고 체감할 수 있는 대책을 만들어 내기 위한 ‘현장복지 특별반’이 꾸려졌다. 특별반은 복지분야 가장 시급한 현안에 대한 특단의 방안을 마련, 즉시 반영할 수 있는 대책은 즉시 시행에 들어가게 된다.</p>				
			</article>
			<article class="list05">
				<a href="../login/login.jsp" tabindex="237"><h2>러닝명소로 재탄생한 여의나루역서 `가치 있는 달리기` 동행해요</h2></a>
				<span>2024-02-14 13:59:05</span><span class="purple"> [문화]</span>
				<p>올 4월 지하철 5호선 여의나루역 일대가 러닝을 테마로 한 ‘러너스테이션’으로 탈바꿈하는 가운데, 여의도 둘레길 8.4km를 릴레이로 달리면 장애인 등 운동 약자와 동행하는 일명 ‘가치를 더한 달리기’, ‘기부런(RUN)’이 열린다.</p>				
			</article>
			<article class="list06">
				<a href="../login/login.jsp" tabindex="238"><h2>서울식물원에서 거인과 함께 텃밭을 가꾸자! 프로그램 참여기관 모집</h2></a>
				<span>2024-02-13 15:48:29</span><span class="green"> [환경]</span>
				<p>서울식물원은 어린이들의 창의력을 자극하고 생태적 호기심을 불러일으킬 수 있는 프로그램 ‘탄소먹는 거인의 텃밭정원’을 함께 가꾸어나갈 영유아교육기관을 모집한다고 밝혔다.</p>				
			</article>
			<article class="list07">
				<a href="../index.jsp" tabindex="239"><h2><img src="../images/articleImg02.jpg" alt="articleImg01"/>식품위생 분야 중대시민재해 맞춤형 해설서(식품의약품안전처)</h2></a>
				<span>2024-02-13 14:51:59 <span class="red"> [안전]</span></span>
				<p>식품위생 분야 중대시민재해 맞춤형 해설서</p>			
			</article>
			<article class="list08">
				<a href="../login/login.jsp" tabindex="240"><h2>[어린이 행복 프로젝트] 어린이 눈건강 지킴이 사업 신청 안내(안경 20% 할인)</h2></a>
				<span>2024-02-08 17:51:35</span><span class="brown"> [복지]</span>
				<p>□ 지원대상 : 12세 이하 어린이(자녀가 2011. 1. 1. 이후 출생), 지원인원 제한 없음(선착순x) <br/>□ 지원내용 : 안경 20% 할인 <br/>* 기존 할인행사품목은 5% 할인(업체 개별 문의) <br/>□ 접수기간 : '24. 2. 15.(목) 09:00 ~ '24. 2. 19.(월) 18:00 &lt;5일간> <br/>□ 할인쿠폰 발송 : '24. 2. 23.(금) <br/>□ 사용기간 : '24. 2. 23. ~ 8. 22.(6개월)</p>			
			</article>
			<article class="list09">
				<a href="../index.jsp" tabindex="241"><h2>``아이들의 상상 속에는 어떤 정원이``…서울시, 유아숲체험원에 `동행가든` 조성</h2></a>
				<span>2024-02-08 15:13:00</span><span class="green"> [환경]</span>
				<p>서울시가 ‘약자와의 동행’, ‘정원도시 서울’을 한 단계 발전시켜 도입한‘동행가든’을 처음으로 선보인다. 서울시는 ‘어린이가 꿈꾸고 어린이가 가꾸는 동행가든’라는 주제로 유아숲체험원 주변 유휴부지에 아이들과 함께 만들고 가꾸는 ‘동행가든’을 조성한다.</p>				
			</article>
			<article class="list10">
				<a href="../login/login.jsp" tabindex="242"><h2><img src="../images/articleImg03.jpg" alt="articleImg01"/>2024년 서울영상크리에이터 9기 모집</h2></a>
				<span>2024-02-06 19:00:15</span><span class="blue"> [행정]</span>
				<span>&lt;2024년 서울영상크리에이터 9기 모집> 서울의 각종 정책 정보들과 다양한 즐길거리를 본인만의 숏폼 영상으로 녹여낼 수 있는 크리에이터 여러분을 모십니다!</span>			
			</article>
		</section>
	</aside>			
	<div id="buttonWrap">
		<div class="buttonSub">
			<div class="beforeButton">
				<button class="button1 showBalloon" title="처음으로">&lt;&lt;</button>
				<button class="button2 showBalloon" title="이전으로">&lt;</button>
			</div>
			<div class="pageNumber">
				<div class="page"><a class="activeNumber" href="../login/login.jsp" tabindex="243">1</a></div>
				<div class="page"><a href="../index.jsp" tabindex="244">2</a></div>
				<div class="page"><a href="../login/login.jsp" tabindex="245">3</a></div>
				<div class="page"><a href="../login/login.jsp" tabindex="246">4</a></div>
				<div class="page"><a href="../index.jsp" tabindex="247">5</a></div>
				<div class="page"><a href="../sub2/qnaboard.jsp" tabindex="248">6</a></div>
				<div class="page"><a href="../login/login.jsp" tabindex="249">7</a></div>
				<div class="page"><a href="../index.jsp" tabindex="250">8</a></div>
				<div class="page"><a href="../sub2/qnaboard.jsp" tabindex="251">9</a></div>
				<div class="page"><a href="../login/login.jsp" tabindex="252">10</a></div>
			</div>
			<div class="afterbutton">
				<button class="button1 showBalloon" title="다음으로">&gt;</button>
				<button class="button2 showBalloon" title="끝으로">&gt;&gt;</button>
			</div>
		</div>
	</div>	
	<%@ include file="../include/footer.jsp" %>	
</body>
</html>