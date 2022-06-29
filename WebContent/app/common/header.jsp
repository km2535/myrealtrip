<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header id="mainHeader">
    <div class="headerGnb">
      <nav class="globalNavBar">
        <div class="logo">
          <a href="${cp}/index.jsp"><img src="${cp}/app/img/logo.png" alt="logo"></a>
        </div>
        <div class="searchBar">
          <div  id="searchContainer" class="searchContainer">
            <div class="searchImg">
              <img src="${cp}/app/img/search.svg" alt="search">
            </div>
            <input id="searchInput" class="searchInput" type="text" placeholder="도시나 상품을 검색해보세요">
          </div>
        </div>
        <!-- 로그인 정보 있을 경우  -->
        <c:choose>
        	<c:when test="${loginUser == null}">
		        <div class="globalItems">
		        	<div class="globalItem">
		        		<a href="https://www.myrealtrip.com/about/becomeguide">
		        		파트너 등록하기
		        		${loginUser}
		        		</a>
		        	</div>
		        	<div class="globalItem">
		        		<a href="${cp}/user/sign_in.us">
		        		로그인
		        		</a>
		        	</div>
		        	<div class="globalItem signInItem">
		        		<a  href="${cp}/user/sign_up.us">
		        		회원가입
		        		</a>
		        	</div>
		       </div>
        	
        	</c:when>
        	<c:otherwise>
        	
		        <!-- globalItems는 세션에 로그인 정보가 있어야 창을 보여줌 -->
		        <div class="globalItems">
		          <div class="globalItem">
		            <a href="#">위시리스트</a>
		          </div>
		          <div class="globalItem">
		            <a href="${cp}/mytrip/mytrip.mt">내 여행</a>
		          </div>
		          <div class="globalItem">
		            <a href="#">메시지</a>
		          </div>
		          <div class="globalItem">
		            <button onclick="location.href='#'">알림</button>
		          </div>
		          <div class="profileItem">
		            <div class="profileCard">
		              <button onclick="myinfo()">
		                <img src="${cp}/app/img/bird.png" alt="bird">
		              </button>
		            </div>
		            <div class="myinfoContainer">
		            	<span class="smallArrow"></span>
		            	<div class="ProfilePopup-InfoSection">
			            	<div class="ProfileCardButton-Container">
			            		<div class="ProfileCardButton">
			            			<img src="http://d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png">
			            		</div>
			            		<div class="DetailContainer ">
			            			<span>${loginUser.username}</span>
			            		</div>
			            	</div>
		            	</div>
		            	<div class="myinfo">
		            		<a href="${cp}/user/log_out.us">
		            			<span class="ProfilePopupLink">로그아웃</span>
		            		</a>
		            	</div>
		            </div>
		          </div>
		        </div>
        	</c:otherwise>
        </c:choose>
      </nav>
    </div>
    <div class="headerLnb">
      <nav class="localNavBar">
        <div class="lnbWrapper">
          <div class="localItemWithIcon">
            <a href="#">
              <img src="${cp}/app/img/clover.png" alt="clover">
              <span>초특가뽑기</span>
            </a>
          </div>
          <div class="localItemWithIcon">
            <a href="${cp}/air/airReserve.ar">
              <img src="${cp}/app/img/plane.png" alt="plane">
              <span>항공권</span>
            </a>
          </div>
          <div class="localItemWithIcon">
            <a href="${cp}/tour/tourTicket.tr">
              <img src="${cp}/app/img/flag.png" alt="flag">
              <span>투어·티켓</span>
            </a>
          </div>
          <div class="localItemWithIcon">
            <a href="${cp}/hotel/hotel.ht">
              <img src="${cp}/app/img/pool.png" alt="pool">
              <span>국내숙소</span>
            </a>
          </div>
          <div class="localItemWithIcon">
            <a href="#">
              <img src="${cp}/app/img/trip.png" alt="trip">
              <span>호캉스</span>
            </a>
          </div>
          <div class="localItemWithIcon">
            <a href="#">
              <img src="${cp}/app/img/car.png" alt="car">
              <span>렌터카</span>
            </a>
          </div>
          <div class="localItemForSpace">&nbsp;</div>
          <div class="localItem">
            <a class="localItem_item" href="#">
              <span>패키지</span>
            </a>
          </div>
          <div class="localItem">
            <a class="localItem_item" href="#">
              <span>한인민박</span>
            </a>
          </div>
          <div class="localItem">
            <a class="localItem_item" href="#">
              <span>해외호텔</span>
            </a>
          </div>
          <div class="localItem">
            <a class="localItem_item" href="#">
              <span>할인혜택</span>
            </a>
          </div>
        </div>
      </nav>
    </div>
  </header>