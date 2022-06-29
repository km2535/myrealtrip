<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이리얼트립 :: 항공권</title>
<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
<link rel="shortcut icon" type="image/x-icon" href="${cp}/app/img/favicon.ico">
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
 <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" /></head>
 <link rel="stylesheet" href="${cp}/css/air/airlist.css"> 
 
 <link rel="stylesheet" href="${cp}/css/common.css"> 
</head>
<body>
<%@ include file="/app/common/header.jsp" %>
<!-- input -->
<div class="k1_left_type2">
	<div class="list_search_wrap">
		<h2 class="k1_h_tit2">왕복</h2>
		<div id="basetrip">
			<form id="frm" method="get" action="/myrealtrip/air/airSearch.ar">
					<fieldset id="div_search1_trip1">
						<legend></legend>
							<ul class="itinerary">
								<li class="clearfix">
								<div class="city_selector clearfix border_all">
									<input id="depCtyCodeSearch" placeholder="서울" class="input_text input" type="text" readonly="">
									<button type="button" class="btn_swapper" id="btn_arrDepChange">도착지 출발지 교체</button>
									<input id="txt_arrCtyCode" placeholder="제주 (CJU)" class="input_text" type="text" readonly="">
								</div>
								<div class="date_selector clearfix border_all ml8" id="div_day_selector" role="calendarPopTxt" style="cursor: pointer;">
									<input id="txt_depDt" class="input_text" type="hidden" title="가는날 선택" placeholder="가는날 선택" readonly="readonly" value="">
									<input id="txt_depDt_view" class="input_text" type="text" title="가는날 선택" placeholder="가는날 선택 - 오는날 선택" readonly="readonly" name="datefilter" role="calendarPopInput" style="cursor: pointer;" value="">
								</div>
								
								<div class="seat_wrap border_all">
									<a class="select_border">
										<input name="count-total-input" class="count-total-input" type="hidden" readonly="readonly" value="">
										<span class="txt" id="bin_people">승객 <span class="count-total"></span>명, 전체</span>
									</a>
								</div>
								<a class="btn_price_search" onclick="return ok_frm()">검색</a>
								<div class="Nop_wrap hidden">
									<div class="Nop_header">
										<h1>인원 &amp; 좌석등급</h1>
									</div>
									<div class="Nop_container">
										<div class="Nop_items">
											<dl class="Nop_item">
												<dt>성인 <span>만 12세 이상</span></dt>
												<dd class="count-box">
													<button class="Nop_btn_minus" type="button"></button>
													<span class="num">0</span>
													<button class="Nop_btn_plus" type="button"></button>
												</dd>
											</dl>
											
											<dl class="Nop_item">
												<dt>소아 <span>만 12세 미만</span></dt>
												<dd class="count-box">
													<button class="Nop_btn_minus" type="button"></button>
													<span class="num">0</span>
													<button class="Nop_btn_plus" type="button"></button>
												</dd>
											</dl>
											
											<dl class="Nop_item">
												<dt>유아 <span>24개월 미만</span></dt>
												<dd class="count-box">
													<button class="Nop_btn_minus" type="button"></button>
													<span class="num">0</span>
													<button class="Nop_btn_plus" type="button"></button>
												</dd>
											</dl>
										</div>
									</div>
                                </div>
                                
                                
								</li>
							</ul>
					</fieldset>
				</form>
		</div>
	</div>
</div>
<div id = "k1_content">
	<div class="con_section">	
		<form>
			<div class="mrt_con_left">
				<!-- 사이드바 여기에다가 만들기  -->
				<div class="mrt_condi_box">
					<fieldset class="filter-group aircdCheckboxes">
						<div class="mrt_list_wrap">
							<h2 class="k1_h_tit2">
								<a href="#" class="active">항공사</a>
							</h2>
							<div class="mrt_list">
								<ul class="mrt_select_all">
									<li>
										<button id="allSelectBtn" class="active">모두 선택</button>
									</li>
									<li>									
										<button id="unAllSelectBtn">모두 해제</button>
									</li>
								</ul>
								<ul id="checkAirList">
									<li>
										<div class="mrt_check_wrap">
											<input type="checkbox" id="airCd0" class="k1_input_check" name="airCd0" checked="checked">
											<label for="airCd0">
												<span class="ico_checkbox"></span>
												대한항공
											</label>
										</div>
									</li>
									<li>
										<div class="mrt_check_wrap">
											<input type="checkbox" id="airCd1" class="k1_input_check" name="airCd1" checked="checked">
											<label for="airCd1">
												<span class="ico_checkbox"></span>
												아시아나항공
											</label>
										</div>
									</li>
									<li>
										<div class="mrt_check_wrap">
											<input type="checkbox" id="airCd2" class="k1_input_check" name="airCd2" checked="checked">
											<label for="airCd2">
												<span class="ico_checkbox"></span>
												진에어
											</label>
										</div>
									</li>
									<li>
										<div class="mrt_check_wrap">
											<input type="checkbox" id="airCd3" class="k1_input_check" name="airCd3" checked="checked">
											<label for="airCd3">
												<span class="ico_checkbox"></span>
												에어부산
											</label>
										</div>
									</li>
									<li>
										<div class="mrt_check_wrap">
											<input type="checkbox" id="airCd5" class="k1_input_check" name="airCd5" checked="checked">
											<label for="airCd5">
												<span class="ico_checkbox"></span>
												티웨이항공
											</label>
										</div>
									</li>
									<li>
										<div class="mrt_check_wrap">
											<input type="checkbox" id="airCd6" class="k1_input_check" name="airCd6" checked="checked">
											<label for="airCd6">
												<span class="ico_checkbox"></span>
												제주항공
											</label>
										</div>
									</li>
									<li>
										<div class="mrt_check_wrap">
											<input type="checkbox" id="airCd7" class="k1_input_check" name="airCd7" checked="checked">
											<label for="airCd7">
												<span class="ico_checkbox"></span>
												에어서울
											</label>
										</div>
									</li>
																		
								</ul>
							</div>
						</div>
					</fieldset>
					<fieldset class="filter-group deparrtmCheckboxes">
						<div class="mrt_list_wrap">
							<h2 class="k1_h_tit2">
								<a href="#" class="active">출발시간</a>
							</h2>
							<div class="mrt_list k1_mt16">
				    			<ul>
				    				<li>
				    					<div class="mrt_check_wrap">
											<input checked="checked" type="checkbox" id="depTm1" name="depTm1" class="k1_input_check" value="0000|0600"><label for="depTm1"><span class="ico_checkbox"></span>새벽 00:00~06:00</label>
										</div>
				    				</li>
				    				<li>
				    					<div class="mrt_check_wrap">
											<input checked="checked" type="checkbox" id="depTm2" name="depTm2" class="k1_input_check" value="0600|1200"><label for="depTm2"><span class="ico_checkbox"></span>오전 06:00~12:00</label>
										</div>
				    				</li>
				    				<li>
				    					<div class="mrt_check_wrap">
											<input checked="checked" type="checkbox" id="depTm3" name="depTm3" class="k1_input_check" value="1200|1800"><label for="depTm3"><span class="ico_checkbox"></span>오후 12:00~18:00</label>
										</div>
				    				</li>
				    				<li>
				    					<div class="mrt_check_wrap">
											<input checked="checked" type="checkbox" id="depTm4" name="depTm4" class="k1_input_check" value="1800|2400"><label for="depTm4"><span class="ico_checkbox"></span>야간 18:00~24:00</label>
										</div>
				    				</li>
				    			</ul>
			    			</div>
						</div>
					</fieldset>
					<fieldset class="filter-group cabinClassCheckboxes">
						<div class="mrt_list_wrap">
							<h2 class="k1_h_tit2">
								<a href="#" class="active">좌석종류</a>
							</h2>
							<div class="mrt_list k1_mt16">
				    			<ul id="checkCabinClassList">
				    				<li>
				    					<div class="mrt_check_wrap">
					    					<input checked="checked" type="checkbox" id="cabinClass0" name="cabinClass0" class="k1_input_check" value=".V">
					    					<label for="cabinClass0">
					    					<span class="ico_checkbox"></span>할인석
					    					</label>
				    					</div>
				    				</li>
				    				<li>
				    					<div class="mrt_check_wrap">
				    						<input checked="checked" type="checkbox" id="cabinClass2" name="cabinClass2" class="k1_input_check" value=".C">
				    						<label for="cabinClass2">
				    						<span class="ico_checkbox"></span>비즈니스석
				    						</label>
				    					</div>
				    				</li>
				    				<li>
				    					<div class="mrt_check_wrap">
				    						<input checked="checked" type="checkbox" id="cabinClass25" name="cabinClass25" class="k1_input_check" value=".Y">
				    						<label for="cabinClass25">
				    						<span class="ico_checkbox"></span>일반석
				    						</label>
				    					</div>
				    				</li>
				    			</ul>
			    			</div>
						</div>
					</fieldset>
					<fieldset class="filter-group slider">
		    			<!-- 가격대 -->
		    			<div class="mrt_list_wrap">
			    			<h2 class="k1_h_tit2"><a href="#" class="active">가격대</a></h2>
			    			<div class="mrt_list">
				    			<ul>
				    				<li>
				    					<span id="totalPriceSrchTxt">198,600원 미만</span>
				    				</li>
				    				<li>
				    					<div class="mrt_slide_wrap">
				    						<span class="bar ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" id="totalPriceSrchSlider">
					    						<div class="ui-slider-range ui-widget-header ui-slider-range-max" style="width: 0%;"></div>
					    						<a class="dot" href="#" style="left: 100%; z-index: 99999;"></a>
				    						</span>
				    						<span class="bar_active"></span>
				    					</div>
				    				</li>
				    			</ul>
			    			</div>
		    			</div>
		    			<!-- //가격대 -->
	    			</fieldset>
				</div>
			</div>
		</form>
		<div class="search_result_container">
			<div class="srch_result_bar">
				<span class="label_blue">가는편</span>
				<p class="mrt_select_way">
					<strong class="city_to">김포</strong>
					<span class="ico_itinerary">여정</span>
					<strong class="city_to">제주</strong>
				</p>
				<span class="mrt_date">${boardingMonth}월 ${boardingDay}일</span>
			</div>
			<div class="scdul_srch">
				<ul class="flight_list">
					<c:forEach items="${list}" var="airlist" varStatus="status">
						<li class="flight_items">
							<span class="airline_ico">
								<c:if test="${airlist.airlineKorean eq '에어서울'}">
									<img src="https://flights.myrealtrip.com/air/wfw/imgs/mbl/logo/air/RS.png">
								</c:if>
								<c:if test="${airlist.airlineKorean eq '아시아나항공'}">
									<img src="https://flights.myrealtrip.com/air/wfw/imgs/mbl/logo/air/OZ.png">
								</c:if>
								<c:if test="${airlist.airlineKorean eq '제주항공'}">
									<img src="https://flights.myrealtrip.com/air/wfw/imgs/mbl/logo/air/7C.png">
								</c:if>
								<c:if test="${airlist.airlineKorean eq '진에어'}">
									<img src="https://flights.myrealtrip.com/air/wfw/imgs/mbl/logo/air/LJ.png">
								</c:if>
								<c:if test="${airlist.airlineKorean eq '대한항공'}">
									<img src="https://flights.myrealtrip.com/air/wfw/imgs/mbl/logo/air/KE.png">
								</c:if>
								<c:if test="${airlist.airlineKorean eq '티웨이항공'}">
									<img src="https://flights.myrealtrip.com/air/wfw/imgs/mbl/logo/air/TW.png">
								</c:if>
								<c:if test="${airlist.airlineKorean eq '에어부산'}">
									<img src="https://flights.myrealtrip.com/air/wfw/imgs/mbl/logo/air/BX.png">
								</c:if>
							</span>
							<span class="airline_name">
								<em>${airlist.airlineKorean}</em>
								<em class="airline_num">${airlist.airFln}</em>
							</span>
							<span class="airline_time">
								<span class="dep_time time">
								${airlist.fEtd}:${airlist.bEtd}
								<em>${airlist.airport}
								<span class="mrt_tootip_wrap ">
									<span class="txt_wrap">
										<span class="txt">${airlist.airport}</span>
									</span>
								</span>
								</em>
								</span>
								<span class="from_to">
									<span class="fromTo_ico"> </span>
									<em class="from_to_time time">1시간 10분</em>
								</span>
								<span class="arr_time time">
									<!-- 이동시간이 경과된 시간 -->
									<c:if test="${Integer.parseInt(airlist.fEtd) >= 12}">
										${Integer.parseInt(airlist.fEtd) - 12 +1}
									</c:if>
									<c:if test="${Integer.parseInt(airlist.bEtd) + 15 >= 60}">
										<c:if test="${Integer.parseInt(airlist.fEtd) < 12}">
											${0}${Integer.parseInt(airlist.fEtd) + 2}<c:if test="${Integer.parseInt(airlist.bEtd) + 15 - 60 >= 10}">:${Integer.parseInt(airlist.bEtd) + 15 - 60}										
											</c:if><c:if test="${Integer.parseInt(airlist.bEtd) + 15 - 60 < 10}">:${0}${Integer.parseInt(airlist.bEtd) + 15 - 60}																					
											</c:if>
										</c:if>
									</c:if>
									<c:if test="${Integer.parseInt(airlist.bEtd) + 15 < 60}">
									<c:if test="${Integer.parseInt(airlist.fEtd) < 12}">
										${0}${Integer.parseInt(airlist.fEtd) + 1}</c:if>:${Integer.parseInt(airlist.bEtd) + 15}
									</c:if>							
									<em>${airlist.arrivedEng}</em>
								</span>
							</span>
							<span class="seat_class">할인석</span>				
							<span class="seat_num">${remainSeat[status.index]}석</span>
							<strong class="airline_price">${price[status.index]}원</strong>
							<button class="airline_btn" >선택</button>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>

</body>
  <script src="${cp}/js/designForInput.js"></script>
  <script>
  $(function() {

	  $('input[name="datefilter"]').daterangepicker({
	      autoUpdateInput: false,
	      locale: {
	          cancelLabel: 'Clear'
	      }
	  });

	  $('input[name="datefilter"]').on('apply.daterangepicker', function(ev, picker) {
	      $(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format('MM/DD/YYYY'));
	  });

	  $('input[name="datefilter"]').on('cancel.daterangepicker', function(ev, picker) {
	      $(this).val('');
	  });

	});
  
  function countBtn(){
	  const $wrap = $('.Nop_wrap'),    
	  	  $btnMinus = $wrap.find('.Nop_btn_minus'),       
	  	  $btnPlus = $wrap.find('.Nop_btn_plus');        
	  	  $cell = $wrap.find('.cell'); 
	              
	  $btnMinus.on('click', function(e){ 
	  	let $this = $(this);        
	  	let num = $this.parent().find('.num').text();        
	  	num --;        
	  	if (num <= 0) {            
	  		num = 0;        
	  		}        
	  		$this.parent().find('.num').text(num);        
	  		totalFn();    
	  	});     
	  		$btnPlus.on('click', function(){        
	  			let $this = $(this);        
	  			let num = $this.parent().find('.num').text();        
	  			num ++;        
	  			if (9 <= num) {            
	  				num = 9; // 최대 인원수         
	  				}        
	  				$this.parent().find('.num').text(num);        
	  				totalFn();
	  				});     
	  				
	  function totalFn(){       
	  	var $total = $(".count-box")        
	  	var total = 0;        
	  	$total.find(".num").each(function(){             
	  		total += Number($(this).text());        
	  		});        		
	  		$(".count-total").text(total);    
	  		$(".count-total-input").val(total);    
	  	};
	  }

	  countBtn();

	  const seat_wrap = document.getElementsByClassName("seat_wrap")[0];
	  const Nop_wrap = document.getElementsByClassName("Nop_wrap")[0];
	  seat_wrap.addEventListener('click', ()=>{
	  	Nop_wrap.classList.toggle('hidden');
	  })
	  	
	  function ok_frm() {
	  	document.getElementById("frm").submit();
	  }
	  	
  </script>
  <script>
  	//항공권 선택 시 항공권을 이동시켜주는 스크립트
  	//어떤 요소를 선택하는가? 
  	const airline_btn = document.getElementsByClassName('airline_btn');
  	const originUrl = location.origin;
  	const dateData = location.search;
  	for (let i = 0; i < airline_btn.length; i++) {
  		airline_btn[i].addEventListener("click" , click , false );
	}
  	function click(e) {
		console.log(e.path[1].innerText.split('\n'));
		const data = e.path[1].innerText.split('\n');
		location.href = originUrl+"/myrealtrip/loading/airReserve.rs"+dateData
						+"&airline="+data[0]+"&airnum="+data[1]+"&dep="+data[2]
						+"&arr="+data[4]+"&price="+data[7];
	}
  	
  </script>
</html>