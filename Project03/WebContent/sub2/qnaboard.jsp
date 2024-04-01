<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="Author" content="최재호"/>
	<meta name="Keywords" content="최재호, Choi Jaeho, QnABoard, Seoul CityHall,응답소, 시정일반 건의, 시정일반 질의,민원, 민원 신청, 민원 사례, 서울시청, 서울 시청, 서울시청 홈페이지, 서울 시청 홈페이지"/>
	<title>QnABoard</title>
	<link rel="stylesheet" href="css/QnABoard.css"/>
	<link rel="stylesheet" href="../css/common.css"/>
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="js/qnaScript.js"></script>

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
	<!-- 공용 -->
	<section id="subNoticeWrap">
		<div class="subNotice cf showBalloon" title="건의·질의">
			<div class="subNoticeText">시정일반 건의·질의
			</div>
			<div class="subNoticeImg">
				<ol>
					<li><img src="../images/bgIco07.png" alt=""/></li>
					<li>
						<ol>
							<li>신청하신 민원은'민원 처리에 관한 법률 및 시행령'에 따라 처리되고 있습니다</li>
							<li>서울시 및 25개 자치구, 서울시 사업소 및 산하기관의 업무는 응답소 시스템을 통해 답변드리고 있으며, 서울시 이외의 민원은 정부부처, 타 지방 자치단체,공공기관 등 해당 기관으로 이송 처리됩니다</li>
							<li>민원결과는 이메일,서신 중 선택한 방법을 통해 확인하실 수 있습니다</li>
							<li>불법주정차,도로안전,쓰레기무단투기 등 시민생활과 밀접한 생활불편 및 안전사고 위험요인 신고는 <a href="../index.jsp" tabindex="195">스마트불편신고</a>를 이용해주시기 바랍니다</li>
						</ol>
					</li>
				</ol>
			</div>
			<div class="subNoticeIcon">
				<ol>
					<li class="showBalloon" title="결과"><a href="../login/login.jsp" tabindex="196">결과보기</a></li>
					<li class="showBalloon" title="민원신청"><a href="../index.jsp" tabindex="197">민원신청하기</a></li>
				</ol>
			</div>
		</div>
	</section>
	<section id="subSearchBarWrap">
		<div class="subSearchBar1">
			<ol>
				<li>민원 신청 하시기 전에 민원사례를 확인해 주세요</li>
			</ol>
		</div>
		<div class="subSearchBar2">
			<select name="subSearchSelect1" id="subSearchSelect1">
				<option value="제목">제목</option>
				<option value="번호">번호</option>
			</select>
			<input type="text" class="showBalloon" title="검색창"/>
			<a href="../sub1/board.jsp" tabindex="198" class="showBalloon" title="검색버튼"><img src="../images/SearchBarIcon.png" height="34" alt="SearchBarIcon"/></a>
		</div>
	</section>
	<article id="subBoardWrap" class="showBalloon" title="게시판">
		<div id="subBoardHeader">
			<div class="width70">번호</div>
			<div class="width966">제목</div>
			<div class="width84">신청일</div>
			<div class="width100">조회수</div>
		</div>
		<div class="subBoardList1">
			<div class="boardWrap">
				<div class="width70">3547</div>
				<div class="width966">버스 내 텀블러 반입 금지</div>
				<div class="width84">2024-01-11</div>
				<div class="width100">345</div>
			</div>	
			<div class="boardContent">&nbsp;&nbsp;안녕하십니까? 귀하께서 응답소(민원상담)를 통해 신청하신 민원에 대한 검토 결과를 다음과 같이 알려드립니다.</div>	
			<div class="boardWrap">
				<div class="width70">3546</div>
				<div class="width966">나눔장터 개장을 원합니다</div>
				<div class="width84">2024-01-10</div>
				<div class="width100">51</div>
			</div>
			<div class="boardContent">&nbsp;&nbsp;안녕하십니까? 귀하께서 응답소(민원상담)를 통해 신청하신 민원에 대한 검토 결과를 다음과 같이 알려드립니다.</div>
			<div class="boardWrap">
				<div class="width70">3545</div>
				<div class="width966">4호선 지하철 좌석 제거를 반대합니다</div>
				<div class="width84">2024-01-10</div>
				<div class="width100">248</div>			
			</div>		
			<div class="boardContent">&nbsp;&nbsp;안녕하십니까? 귀하께서 응답소(민원상담)를 통해 신청하신 민원에 대한 검토 결과를 다음과 같이 알려드립니다.</div>				
			<div class="boardWrap">
				<div class="width70">3544</div>
				<div class="width966">상황에 맞지 않는 무리한 개인택시 단속</div>
				<div class="width84">2024-01-09</div>
				<div class="width100">102</div>
			</div>
			<div class="boardContent">&nbsp;&nbsp;안녕하십니까? 귀하께서 응답소(민원상담)를 통해 신청하신 민원에 대한 검토 결과를 다음과 같이 알려드립니다.</div>				
			<div class="boardWrap">
				<div class="width70">3543</div>
				<div class="width966">고령산모 기형아 검사비 지원 진행상황 문의</div>
				<div class="width84">2024-01-05</div>
				<div class="width100">78</div>
			</div>							
			<div class="boardContent">&nbsp;&nbsp;안녕하십니까? 귀하께서 응답소(민원상담)를 통해 신청하신 민원에 대한 검토 결과를 다음과 같이 알려드립니다.</div>			
			<div class="boardWrap">
				<div class="width70">3542</div>
				<div class="width966">양화대교 남단 낚시 금지 해제</div>
				<div class="width84">2024-12-30</div>
				<div class="width100">55</div>
			</div>
			<div class="boardContent">&nbsp;&nbsp;안녕하십니까? 귀하께서 응답소(민원상담)를 통해 신청하신 민원에 대한 검토 결과를 다음과 같이 알려드립니다.</div>
			<div class="boardWrap">
				<div class="width70">3541</div>
				<div class="width966">성평등지원센터 통폐합을 철회하십시오</div>
				<div class="width84">2024-12-28</div>
				<div class="width100">67</div>
			</div>
			<div class="boardContent">&nbsp;&nbsp;안녕하십니까? 귀하께서 응답소(민원상담)를 통해 신청하신 민원에 대한 검토 결과를 다음과 같이 알려드립니다.</div>	
			<div class="boardWrap">
				<div class="width70">3540</div>
				<div class="width966">노숙인 시설 관련 안내</div>
				<div class="width84">2024-12-27</div>
				<div class="width100">104</div>
			</div>
			<div class="boardContent">&nbsp;&nbsp;안녕하십니까? 귀하께서 응답소(민원상담)를 통해 신청하신 민원에 대한 검토 결과를 다음과 같이 알려드립니다.</div>	
			<div class="boardWrap">
				<div class="width70">3539</div>
				<div class="width966">서울내 키즈카페 입장료 할인 건의</div>
				<div class="width84">2024-12-27</div>
				<div class="width100">212</div>
			</div>
			<div class="boardContent">&nbsp;&nbsp;안녕하십니까? 귀하께서 응답소(민원상담)를 통해 신청하신 민원에 대한 검토 결과를 다음과 같이 알려드립니다.</div>	
			<div class="boardWrap">
				<div class="width70">3538</div>
				<div class="width966">적극행정 공무원 포상 및 칭찬하는 방법</div>
				<div class="width84">2024-12-25</div>
				<div class="width100">341</div>
			</div>
			<div class="boardContent">&nbsp;&nbsp;안녕하십니까? 귀하께서 응답소(민원상담)를 통해 신청하신 민원에 대한 검토 결과를 다음과 같이 알려드립니다.</div>
		</div>	
	</article>
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
				<div class="page"><a href="../index.jsp" tabindex="248">6</a></div>
				<div class="page"><a href="../login/login.jsp" tabindex="249">7</a></div>
				<div class="page"><a href="../index.jsp" tabindex="250">8</a></div>
				<div class="page"><a href="../index.jsp" tabindex="251">9</a></div>
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