<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en-US" dir="ltr">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Boots4 v3.1 | Portfolio Template</title>

    <link rel="apple-touch-icon" sizes="180x180" href="/assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicons/favicon.ico">
    <link rel="manifest" href="/assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="/assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">

    <link href="/assets/css/main/slides.css" rel="stylesheet" type="text/css">  
    <link href="/assets/css/theme.css" rel="stylesheet">
    <link href="/assets/lib/prismjs/prism.css" rel="stylesheet">
    <link href="/assets/lib/loaders.css/loaders.min.css" rel="stylesheet">
    <link href="/assets/css/detail/jquery.fancybox.min.css" rel="stylesheet">
    <link href="/assets/css/detail/comm_detail.css" rel="stylesheet">
    <link href="/assets/lib/remodal/remodal.css" rel="stylesheet">
    <link href="/assets/lib/remodal/remodal-default-theme.css" rel="stylesheet">
    <link href="/assets/lib/owl.carousel/owl.carousel.css" rel="stylesheet">
    <link href="/assets/css/detail/lightbox.min.css" rel="stylesheet">
    <link href="/assets/css/calc/commons.css" rel="stylesheet" type="text/css">
    <link href="/assets/css/calc/est.css" rel="stylesheet" type="text/css">
    <link href="/assets/css/calc/comm_calc.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=PT+Mono%7cPT+Serif:400,400i%7cLato:100,300,400,700,800,900" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <style>
    * {
    	font-family: 'GmarketSansMedium' !important;
    }
	@font-face {
	    font-family: 'GmarketSansMedium';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	#loading {
	  	width: 80%;
	  	height: 100%;
	  	top: 0;
	  	left: 0;
	  	position: fixed;
	  	display: block;
	  	opacity: 0.6;
	  	background: #000;
	  	z-index: 99;
	  	text-align: center;
	}
	#loading > img {
	  	position: absolute;
	  	top: 50%;
	  	left: 50%;
	  	z-index: 100;
	}
	#loading > p {
    	position: absolute;
    	top: 57%;
    	left: 43%;
    	z-index: 101;
    	font-color: #fff;
	}
    </style>
    <script>
    	function submitCheck() {
    		var count = $('#store > option:selected').val();
			var temperture = $('#temperture > option:selected').val();
			var mtype = $('#mtype > option:selected').val();
			var msize = $('#msize > option:selected').val();
			var purchese = $('#purchese > option:selected').val();
			var inputValueVert = $('#vert').val();
	 		var inputValueHeg = $('#heg').val();
	 		var inputValueWid = $('#wid').val();
	 		
			if(count==0){
				$("#store").focus();
				return false;
			}

			if(temperture==0){
				$("#temperture").focus();
				return false;
			}

			if(mtype==0){
				$("#mtype").focus();
				return false;
			}

			if(msize==0){
				$("#msize").focus();
				return false;
			}

			if(purchese==0){
				$("#purchese").focus();
				return false;
			}else{
				$('#loading').show();
			}
    	    return true;
    	}
    	
    	
    	function inputValueVertChange(){
    		var inputValueVert = document.getElementById('vert').value;
    		var inputValueVerts = document.getElementById('vert');
    		const birthErrorMsgElVert = 
      		  document.querySelector('.item .error-msg2');
    		
    		if(inputValueVert < 800){
    			inputValueVerts.value = null;
    			birthErrorMsgElVert.textContent = "최소 800 이상의 값을 입력하세요. 다시 확인해주세요."
	   			document.getElementById('vert').focus();
    		}else {
    			birthErrorMsgElVert.textContent = "";
    		}
    	}
    	
    	function inputValueHegChange(){
    		var inputValueHeg = document.getElementById('heg').value;
    		var inputValueHegs = document.getElementById('heg');
    		const birthErrorMsgElHeg = 
      		  document.querySelector('.item .error-msg3');

    		if(inputValueHeg < 800){
    			inputValueHegs.value = null;
    			birthErrorMsgElHeg.textContent = "최소 800 이상의 값을 입력하세요. 다시 확인해주세요."
	   			document.getElementById('heg').focus();
    		}else {
    			birthErrorMsgElHeg.textContent = "";
    		}
    	}
    	
    	function inputValueWidChange(){
    		var inputValueWid = document.getElementById('wid').value;
    		var inputValueWids = document.getElementById('wid');
    		const birthErrorMsgElWid = 
      		  document.querySelector('.item .error-msg1');
    		
    		if(inputValueWid < 800){
    			inputValueWids.value = null;
    			birthErrorMsgElWid.textContent = "최소 800 이상의 값을 입력하세요. 다시 확인해주세요."
	   			document.getElementById('wid').focus();
    		}else{
    			birthErrorMsgElWid.textContent = "";
    		}
    	}
    	
    	function onload(){
    		const birthErrorMsgElSize = 
      		  document.querySelector('.item .alert-msg');
      		birthErrorMsgElSize.innerText = "가로 x 세로 x 도어 두께 (도어 타입)";	
    	}
    </script>
    
  	</head>
<body onload="onload()">
    <main>
      
	  
      <!-- ============================================-->
      <!-- Preloader ==================================-->
      <div id="preloader">
        <div class="loader"><span></span><span></span><span></span><span></span></div>
      </div>

      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="p-0" id="home">

        <div class="container-fluid p-0 minh-100vh">
          <div class="position-relative px-3 w-lg-50 position-lg-absolute" id="baseContent">
            <div class="row align-items-center minh-50vh justify-content-center py-5 minh-lg-100vh">
              <div class="bg-holder overlay overlay-1">
              	<video src="/assets/video/coolinic.mp4" class="videoMp4-main" autoplay muted loop controls></video>
              	<!-- <video src="/assets/video/joomin.mp4" style="width: 100%; height: 100%;background-size: contain;" autoplay muted loop controls></video> -->
              </div>
              <!--/.bg-holder-->
       
 
              <div class="col-10 col-sm-8 col-md-9 z-index-1">
                <h1 class="text-white fs-2 fs-sm-4 fs-xl-5 display-4" style="font-family: 'OTWelcomeBA';src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeBA.woff2') format('woff2');sfont-weight: 700; font-style: normal;line-height: 1.2;"><!-- 저온 설비가 필요할 땐<br/>AI 자동 견적. --></h1>
                <h5 class="fs-0 fs-sm-1 mt-3 mt-md-5 text-white"></h5>
              </div>
            </div>
          </div>
          <div class="position-relative w-lg-50 position-lg-fixed undefined" id="gridNav">
            <div class="row h-lg-100vh">
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="about">
                <div class="bg-holder" id="bg-holder-about">
                </div><!-- 회사소개 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="ai">
                <div class="bg-holder" id="bg-holder-ai">	
                </div><!-- AI 자동견적 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="coldroom">
                <div class="bg-holder" id="bg-holder-3years">
                </div>
              </div>
              <!-- <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="as">
                <div class="bg-holder" id="bg-holder-as">
                </div>
              </div> -->
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="locationAS">
                <div class="bg-holder" id="bg-holder-contact"">
                </div><!-- 문의하기 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="traceabilityRMS">
                <div class="bg-holder" id="bg-holder-rms">
                </div><!-- RMS 이력추적 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="smartADS">
                <div class="bg-holder" id="bg-holder-ads">
                </div><!-- ADS  -->
                <!--/.bg-holder-->
              </div>
              <!-- <div class="col-6 col-sm-3 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="integSolution">
                <div class="bg-holder" id="bg-holder-integration">
                </div>통합관리솔루션
                /.bg-holder
              </div> -->
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->


      <div class="page position-absolute t-0 w-100 slides horizontal simplifiedMobile animated" id="about">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-6 pt-lg-0">

	  <!-- 회사소개 -->
      <!-- <section> begin ============================-->
      <section class="py-0 overflow-hidden" id="digital-header">
        	<div class="bg-holder overlay digital-header overlay-1" style="background-image:url(/assets/img/detail/headers/header-digital2.png);" data-zanim-xs='{"delay":0,"animation":"zoom-out"}' data-zanim-trigger="scroll"></div>
        <!--/.bg-holder-->
        <div class="container">
          <div class="row min-vh-100 align-items-center py-8 justify-content-center text-center">
            <div class="col-lg-8 col-xl-7" data-zanim-timeline="{}" data-zanim-trigger="scroll">
               <h1 class="fs-3 fs-sm-4 fs-md-5 text-white parallax display-4" data-rellax-speed="4"><span class="overflow-hidden d-block"><span class="d-inline-block font-weight-black" style="margin-bottom:20px;font-family: 'OTWelcomeBA';margin-top:30px;" data-zanim-xs='{"delay":0.1}'> <!--  냉동공조 산업영역의 혁신을 더하다 -->  </span></span></span><span class="overflow-hidden d-block"><!-- <span class="d-inline-block font-weight-black text-underline mb-1" data-zanim-xs='{"delay":0.3}'>COOLINIC</span> --></span></h1>
              <div class="overflow-hidden parallax" data-rellax-speed="3">
               	 <h3 class="mt-3 mt-sm-4 mt-md-5 mb-4 text-300 font-weight-normal" data-zanim-xs='{"delay":0.4}'><br class="d-none d-sm-block" />HVAC & COLDCHAIN<br/>Solution</h3>
              </div>
            </div>
          </div><a class="indicator indicator-down" data-zanim-timeline='{"delay":1}' data-zanim-trigger="scroll" href="#target-down" data-fancyscroll="data-fancyscroll" data-offset="60"><span class="indicator-arrow indicator-arrow-one" data-zanim-xs='{"from":{"opacity":0,"y":15},"to":{"opacity":1,"y":-5,"scale":1},"ease":"Back.easeOut","duration":0.4,"delay":0.25}'></span><span class="indicator-arrow indicator-arrow-two" data-zanim-xs='{"from":{"opacity":0,"y":15},"to":{"opacity":1,"y":-5,"scale":1},"ease":"Back.easeOut","duration":0.4,"delay":0.5}'></span></a>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->

      <div id="target-down"></div>

      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <!--  section class="py-0" id="digital-features">
        <div class="container-fluid">
          <div class="row align-items-center py-6 py-md-8 py-lg-0">
            <div class="col-lg-4 px-lg-5">
              <div class="media text-sans-serif overflow-hidden" data-zanim-timeline='{"delay":0.1}' data-zanim-trigger="scroll"><img class="mr-3" src="/assets/img/detail/icons/icon-startup.svg" alt="icon" width="50" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' />
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>organic search optimization</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p class="mb-0" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>If you’re not in the first page of organic search results, your potential customers won’t even know that you exist. Let us fix that for you.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 px-lg-5 border-lg-left border-lg-right border-300 py-4 py-md-7">
              <div class="media text-sans-serif overflow-hidden" data-zanim-timeline='{"delay":0.2}' data-zanim-trigger="scroll"><img class="mr-3" src="/assets/img/detail/icons/icon-target.svg" alt="icon" width="50" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' />
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>conversion rate optimization</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p class="mb-0" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Turn your visitors into customers with our team of experts. We'll analyze your website and develop a suitable conversion strategy.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 px-lg-5">
              <div class="media text-sans-serif overflow-hidden" data-zanim-timeline='{"delay":0.3}' data-zanim-trigger="scroll"><img class="mr-3" src="/assets/img/detail/icons/icon-teamwork.svg" alt="icon" width="50" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' />
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>advanced website analytics</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p class="mb-0" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>We help you measure what's working and what isn't, and improve the performance of your website to meet your business objectives.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section-->

      <!-- <section> begin ============================-->
      <!-- <section class="border-top border-bottom border-300 bg-light" id="digital-about">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-7"><img class="img-fluid" src="/assets/img/detail/illustration/golden.jpg" alt="" /></div>
            <div class="col-md-4 ml-auto">
              <h3 class="mb-3"><span class="font-weight-extra-bold">쿨리닉은!</span></h3>
              <p class="text-sans-serif">냉동공조 산업영역에 <span class="font-weight-extra-bold">시스템을</span> 더합니다<br/>일반적인 시공에 <span class="font-weight-extra-bold">차별화 된 사후관리를</span> 더합니다<br/>보수적인 불변의 시장에 <span class="font-weight-extra-bold">혁신의 스마트함을</span> 더합니다</p>
              <div class="row mt-4">
                <div class="col-lg-4">
                  <div class="media align-items-center mt-3"><span class="fas fa-puzzle-piece mr-3 fs-2 text-warning"></span>
                    <div class="media-body">
                      <h5 class="mb-0 font-weight-bold text-900">Connect with target customers</h5>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4">
                  <div class="media align-items-center mt-3"><span class="far fa-clock mr-3 fs-2 text-success"></span>
                    <div class="media-body">
                      <h5 class="mb-0 font-weight-bold text-900">Time-efficient and cost-effective</h5>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4">
                  <div class="media align-items-center mt-3"><span class="far fa-grin-tears mr-3 fs-2 text-info"></span>
                    <div class="media-body">
                      <h5 class="mb-0 font-weight-bold text-900">Rely on an experienced team</h5>
                    </div>
                  </div>
                </div>
              </div><a class="btn btn-outline-danger mt-6" href="#">&xrarr; learn more about us</a>
            </div>
          </div>
        </div>
      </section> --><!-- <section> close ============================-->
      <!-- ============================================-->


	 <section class="border-top border-300" id="default-process">
	        <div class="container">
	           <div class="row justify-content-center text-center mb-6">
	            <div class="col-lg-6" style="margin-top: 7rem;">
	              <h2 class="fs-3 fs-sm-4 mb-3">쿨리닉은 콜드체인<br/>전문 브랜드 입니다</h2>
<!-- 	              <p class="text-500 font-italic"></p> -->
	              <hr class="hr-short mt-5 border-300" />
	            </div>
	          </div>
	          <div class="row inner">
	            <div class="col-12 pl-lg-7">
	              <div class="row align-items-end">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-01.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 pb-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">01</span>
	                    <h3>왜 콜드룸을 믿고 맡길만한 전문 브랜드가 없을까요?</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    콜드룸은 특별한 면허나 자격요건 없이도 시공 가능한 시장으로 운영되어 왔습니다.
	                    <br/><br/>
						대부분은 1인 기업의 소규모의 업체로, A/S 워런티 시스템이 가동되기도 어려운 것이 현실입니다.
						<br/><br/> 
						국내 약 2만 여 개사의 시공업체가 있지만 공조냉동 자격증을 갖춘 업체는 10% 채 되지 않습니다.
						<br/><br/> 
						시스템과 룰이 없고 기술만 있는, 사람만을 신뢰해야하는 전형적인 레몬마켓 시장입니다.
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/> 
						<h4>신뢰있는 브랜드가 필요한 이유입니다.</h4>
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-8">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">02</span>
	                    <h3>왜 A/S기간이 지나면, 책임지지 않을까요?</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    워런티 기간이 끝나면, 많은 고객들이 수리업체를 찾아 헤맵니다. 
	                    대기업들도 마찬가지 입니다.
	                    <br/><br/>
	                    <h4>이유는 무엇일까요?</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						시공 업체에게 A/S보다 신규설치가 중요합니다. 
						워런티의 책임이 끝난 사후관리는 소홀할 수 밖에 없고, 
						콜드룸시장에서의 워런티는 <b>“잘 버티기만 하면 되는 기간”</b>으로 치부되기도 합니다.<br/><br/>
						만약, 삼성에서 판매한 제품을 워런티가 지났다는 이유로 유상 A/S에 적극적이지 않다면 어떨까요.
	                    </a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">03</span>
	                    <h3>왜 사후관리가 중요할까요?</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    큰 비용이 투입되는 건축, 인테리어, 저온설비 등은 사후관리가 중요한 분야입니다. <br/><br/>
	                    그중 콜드룸의 워런티가 중요한 2가지 이유입니다.<br/><br/>
	                    
	                    <h4>첫째. 쉼없는 가동률</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						일정한 온도를 유지하기 위해 콜드룸은 쉬지 않고 가동됩니다. 
						우리가 사용하는 제품중에 1년 365일 24시간 가동되는 제품이 과연 몇이나 있을까요?<br/><br/>
						
						<h4>둘째. 긴급한 A/S</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						냉동기가 고장나면 대부분 긴급으로 분류 됩니다. 보관된 제품의 가치와 직결되니까 말이죠.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row" style="margin-bottom:7.5rem;">
	                <div class="col-lg-6 border-lg-right border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8" style="margin-bottom: 7.5rem !important;">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">04</span>
	                    <h3>온도에 민감한 고객을 위해 일합니다.</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    쿠팡과 마켓컬리와 같은 식자재 기업에서 콜드체인에 막대한 돈을 쏟아붇는 이유도,
	                    <br/><br/> 
						백신을 -70℃에 꼭 유지해야 하는 이유도,
						<br/><br/> 
						마트에서 해썹(HACCP) 마크가 붙은 제품이 더 비싼 이유도 <b>온도는 안전이기 때문입니다.</b> 
						<br/><br/>
						<p style="font-size:10px;">※콜드체인 : 농장에서 식탁까지의 모든 과정에 “정온”을 유지하는 일련의 과정<p>
	                    </p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </section>




      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="text-center text-sans-serif" id="digital-features-1" style="pdding-bottom:7.5rem;">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-9">
              <h2 style="font-size:1.9rem;">쿨리닉만의 독보적인 시스템</h2>
              <p class="lead mb-0">시스템을 개발하고 독보적인 서비스를 제공합니다</p>
            </div>
          </div>
          <div class="row mt-6 justify-content-center">
            <div class="col-sm-6 col-lg-2 mb-4">
              <div class="h-100 border border-300"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-02.svg" alt="" data-zanim-xs='{"delay":0.1,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h4 class="py-3 mb-0 bg-light">A.I 자동견적 시스템</h4><br/>
                <p style="font-size:15px;padding-left:10px;padding-right:10px;">
				데이터를 분석하여 만든 빅데이터 기반의 자동 견적서가 즉시 산출 됩니다.
				</p>
              </div>
            </div>
            <div class="col-sm-6 col-lg-2 mb-4">
              <div class="h-100 border border-300"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-02.svg" alt="" data-zanim-xs='{"delay":0.1,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h4 class="py-3 mb-0 bg-light">주민번호 RMS</h4><br/>
                <p style="font-size:15px;padding-left:10px;padding-right:10px;">
				냉동기 정보, 시공이력, 점검 수리 이력 등 모든 정보를 추적 관리합니다.
				</p>
              </div>
            </div>
            <div class="col-sm-6 col-lg-2 mb-4">
              <div class="h-100 border border-300"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-02.svg" alt="" data-zanim-xs='{"delay":0.1,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h4 class="py-3 mb-0 bg-light">위치기반 A/S</h4><br/>
                <p style="font-size:15px;padding-left:10px;padding-right:10px;">
				빠른 대응을 위해 위치기반으로 가까운 엔지니어가 빠르게 대응합니다.
              </div>
            </div>
            <div class="col-sm-6 col-lg-2 mb-4">
              <div class="h-100 border border-300"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-02.svg" alt="" data-zanim-xs='{"delay":0.1,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h4 class="py-3 mb-0 bg-light">A/S 기준단가표</h4>
                <br/>
                <p style="font-size:15px;padding-left:10px;padding-right:10px;">
				고장수리 기준표 “A/S시트” 를 제공하여 덤터기를 막을수 있습니다.
              </div>
            </div>
            <div class="col-sm-6 col-lg-2 mb-4">
              <div class="h-100 border border-300"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-02.svg" alt="" data-zanim-xs='{"delay":0.1,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h4 class="py-3 mb-0 bg-light">사후관리 시스템</h4>
                <br/>
                <p style="font-size:15px;padding-left:10px;padding-right:10px;">
				철저한 관리 시스템 안에서 냉동기를 체계적으로 케어하고 관리합니다.
              </div>
            </div>
          </div>
          

          <!-- <div class="row mt-7 text-left inner">
            <div class="col-sm-6 col-lg-4 pr-sm-5" data-zanim-timeline='{"delay":0}' data-zanim-trigger="scroll">
              <div class="media text-sans-serif"><span class="mr-3 fs-3 far fa-share-square" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'></span>
                <div class="media-body overflow-hidden">
                  <h3 data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					왜 이렇게 견적을 받기 어려운가요?
				  </h3>
                  <p data-zanim-xs='{"delay":0.3,"animation":"slide-right"}'>
                  이제 원하는 조건들만 체크하세요. 즉시, 콜드룸의 견적을 확인할 수 있습니다.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 pr-sm-5 mt-4 mt-sm-0" data-zanim-timeline='{"delay":0.1}' data-zanim-trigger="scroll">
              <div class="media text-sans-serif"><span class="mr-3 fs-3 far fa-map" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'></span>
                <div class="media-body overflow-hidden">
                  <h3 data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                  왜 판매자들도 냉동기 정보를 관리하지 않을까요?
                  </h3>
                  <p data-zanim-xs='{"delay":0.3,"animation":"slide-right"}'>
                	 휘발성으로 사라지는 냉동기 정보, 고장 수리 내역 등의 방대한 정보를 보관하기는 어렵습니다.<br/><br/> 
					수리 시간과 관리 비용도 절감과 어디서든 제품을 식별할 수 있고, 고장 시 수리대응에 빠릅니다.
				</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 pr-sm-5 mt-4 mt-lg-0" data-zanim-timeline='{"delay":0.2}' data-zanim-trigger="scroll">
              <div class="media text-sans-serif"><span class="mr-3 fs-3 far fa-check-square" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'></span>
                <div class="media-body overflow-hidden">
                  <h3 data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                  이렇게 긴급한 A/S, 왜 통합 시스템이 없을까요?
                  </h3>
                  <p data-zanim-xs='{"delay":0.3,"animation":"slide-right"}'>
                  콜센터, 비대면 접수, 모바일 앱, 원하시는 모든 채널에서 A/S 신청이 가능합니다.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 pr-sm-5 mt-4" data-zanim-timeline='{"delay":0.3}' data-zanim-trigger="scroll">
              <div class="media text-sans-serif"><span class="mr-3 fs-3 far fa-chart-bar" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'></span>
                <div class="media-body overflow-hidden">
                  <h3 data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                  왜 수리비용은 모두 제각각인가요?
                  </h3>
                  <p data-zanim-xs='{"delay":0.3,"animation":"slide-right"}'>
                  2만여개의 냉동기 부품과 수리유형별 공임, 데이터를 기반으로 기준표에 의거한 수리와 
                  즉흥적인 금액이 아닌 매뉴얼에 의한 합리적인 비용이 산정 됩니다.
				</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 pr-sm-5 mt-4" data-zanim-timeline='{"delay":0.4}' data-zanim-trigger="scroll">
              <div class="media text-sans-serif"><span class="mr-3 fs-3 far fa-object-ungroup" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'></span>
                <div class="media-body overflow-hidden">
                  <h3 data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                  왜 냉동기 관리는 언제나 주먹구구 식일까요?
                  </h3>
                  <p data-zanim-xs='{"delay":0.3,"animation":"slide-right"}'>
                  월 2회 정기점검, 클리닝, 점검 포인트로 관리되는 쿨리닉 케어프로그램은 비즈니스변수에 대해 완벽하게 통제합니다.<br/><br/>
				  기업의 특성에 맞는 유형별 유지관리 시스템을 선택할 수 있습니다.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-12 text-center mt-6"><a class="btn btn-danger" href="#"><span class="fas fa-paper-plane mr-3" data-fa-transform="grow-8"></span>Request a free quote</a></div>
          </div> -->
          
        </div>
      </section><!-- <section> close ============================-->
      <!-- ============================================-->



	<section class="py-0 inner" id="default-cta-1" style="margin-top:7.5rem;">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay rounded" style="" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	            <!--/.bg-holder--><!-- background-image:url(/assets/img/detail/headers/header-16.jpg); -->
	          </div>
	          <div class="row justify-content-center text-center py-7">
	            <div class="col-lg-9 px-4">
	            
	            
	        <div class="col-12 mb-5 mb-md-7 text-center">
              <h2 class="fs-3 fs-sm-4"><span class="text-underline">
              이렇게 해결했어요.
              </span></h2>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-6">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>왜 이렇게 견적을 받기 어려운가요?</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					이제 원하는 조건들만 체크하세요. 즉시, 콜드룸의 견적을 확인할 수 있습니다.
					</p>
                  </div>
                  <div>
	                  <a class="btn btn-primary" href="#">
	                  	<span class="fas fa-calculator mr-3" data-fa-transform="grow-8"></span>
	                  	A.I 자동견적서
	                  </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-6">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>왜 판매자들도 냉동기 정보를 관리하지 않을까요?</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					휘발성으로 사라지는 냉동기 정보, 고장 수리 내역 등의 방대한 정보를 보관하기는 어렵습니다.
					수리 시간과 관리 비용도 절감과 어디서든 제품을 식별할 수 있고, 고장 시 수리대응에 빠릅니다.
					</p>
                  </div>
                  <div>
	                  <a class="btn btn-primary" href="#">
	                  <span class="fas fa-notes-medical mr-3" data-fa-transform="grow-8"></span>
	                  	주민번호 RMS
	                  </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-6">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-target.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>이렇게 긴급한 A/S에 왜 통합 시스템이 없을까요?</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    콜센터, 비대면 접수, 모바일 앱, 원하시는 모든 채널에서 A/S 신청이 가능합니다.
                    </p>
                  </div>
                  <div>
	                  <a class="btn btn-primary" href="#">
	                  <span class="fas fa-street-view mr-3" data-fa-transform="grow-8"></span>
	                  	위치기반 A/S</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-6">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-target.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>왜 수리비용은 모두 제각각인가요?</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    2만여개의 냉동기 부품과 수리유형별 공임, 데이터를 기반으로 기준표에 의거한 수리와 
                    즉흥적인 금액이 아닌 매뉴얼에 의한 합리적인 비용이 산정 됩니다.
                    </p>
                  </div>
                  <div>
	                  <a class="btn btn-primary" href="#">
	                  	<span class="fas fa-list-ol mr-3" data-fa-transform="grow-8"></span>
	                  	A/S 기준단가표</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-6">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/favorites-button.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>왜 냉동기 관리는 언제나 주먹구구 식일까요?</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    월 2회 정기점검, 클리닝, 점검 포인트로 관리되는 쿨리닉 케어프로그램은 비즈니스변수에 대해 완벽하게 통제합니다.
				    기업의 특성에 맞는 유형별 유지관리 시스템을 선택할 수 있습니다.
                    </p>
                  </div>
                  <div>
	                  <a class="btn btn-primary" href="#">
	                  <span class="fas fa-toolbox mr-3" data-fa-transform="grow-8"></span>
	                  	유형별 사후관리</a>
                  </div>
                </div>
              </div>
            </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section>

      <!-- <section class="py-0 overflow-hidden" id="digital-we-do">
        <div class="container-fluid px-lg-0" style="padding-top:7.5rem;">
          <div class="row align-items-center">
          	<div class="col-lg-6 align-self-stretch py-11">
          		<div class="bg-holder" style="background-image:url(/assets/img/detail/digital-strategy.jpg);"></div>
          	</div>
            <div class="col-lg-6 px-sm-6 px-md-8 px-lg-6 px-xl-8 py-6 py-md-8 align-self-stretch bg-light">
              <div class="owl-carousel owl-theme owl-nav-outer owl-theme-white px-4" data-options='{"items":1,"autoplay":true,"dots":false,"loop":true,"nav":true,"mouseDrag":true,"autoplayHoverPause":true}'>
                <div class="text-sans-serif">
                  <h3 class="mb-2 font-weight-normal">왜 믿고 맡길만한 <span class='font-weight-black'>전문 브랜드가 없을까?</span></h3>
                  <p class="mb-0"><br/>콜드룸은 특별한 면허나 자격요건 없이도 시공 가능한 시장으로 운영되어 왔습니다.<br/><br/>
                  				국내 약 2만 여 개사의 시공업체가 있지만 공조냉동 자격증을 갖춘 업체는 10% 채 되지 않습니다. <br/><br/> 
								대부분은 1인 기업의 소규모의 업체로, A/S 워런티 시스템이 가동되기도 어려운 것이 현실이며,
								시스템은 없고 사람을 신뢰해야 하는 시장입니다.<br/><br/>
								<span class='font-weight-black'>룰은 없고 기술만 있는, 전형적인 레몬마켓에서 
								<br/>콜드룸 전문 브랜드 쿨리닉이 앞장섭니다. </span>
				  </p>
                </div>
                <div class="text-sans-serif">
                  <h3 class="mb-2 font-weight-normal">왜 A/S기간이 지나면, <span class='font-weight-black'>책임지지 않을까?</span></h3>
                  <p class="mb-0"><br/> 
	                  워런티 기간이 끝나면,<br/> 
	                  많은 고객들이 수리업체를 찾아 헤맵니다.<br>
	                  대기업들도 예외는 아닙니다.<br><br>
	                  
	                  <span class='font-weight-black'>이유는 무엇일까요?</span><br><br>
	                  
					  시공 업체에게 A/S보다 신규설치가 중요합니다.<br><br>
					  그렇기에 워런티의 책임이 끝난 사후관리는<br/>
					  소홀할 수 밖에 없고, 콜드룸시장에서의 워런티는<br/>
					  “잘 버티기만 하면 되는 기간”으로 치부되기도 합니다.<br><br>
					  
					  만약, 삼성에서 판매한 제품을 워런티가 지났다는 이유로 유상 A/S에 적극적이지 않다면 어떨까요.<br/><br/>
					  <span class='font-weight-black'>신뢰있는 브랜드가 필요한 이유입니다.</span>
				  </p>
                </div>
                <div class="text-sans-serif">
                  <h3 class="mb-2 font-weight-normal">왜 사후관리가 <span class='font-weight-black'>중요할까?</span></h3>
                  <p class="mb-0"><br/> 
	                 큰 비용이 투입되는 건축, 인테리어, 저온설비 등은<br/> 
	                 사후관리가 중요한 분야입니다.<br/><br/>
	                 
	                 그 중 콜드룸의 워런티가 <span class='font-weight-black'>중요한 2가지</span> 이유는,<br/><br/>
	                 <span class='font-weight-black'>첫째, 쉼없는 가동률</span><br/>
	                 일정한 온도를 유지하기 위해 콜드룸은<br/>쉬지 않고 가동됩니다.<br/><br/>
	                 생계와 관련이 있는 제품중에<br/>1년 365일 24시간 가동되는 제품이<br/>과연 몇이나 있을까요?<br/><br/>
	                 
	                  
	                 <span class='font-weight-black'>둘째, 긴급한 A/S</span><br/>
	                 냉동기가 고장나면 대부분 긴급으로 분류 됩니다.<br/> 
	                 이는 보관된 제품의 가치와 직결됩니다.
				  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section> -->

		<!-- <section class="text-center pb-4 inner" id="default-gallery" style="padding-top:7.5rem !important;padding-bottom:7.5rem !important;">
	        <div class="container">
	          <div class="row">
	            <div class="col-12 mb-5 mb-lg-7">
	            	<h3 class="mb-2">사후관리에 최적화 된 시공 및 감리 시스템 적용</h3>
                	<p>종목별 구분된 시공팀 운용, 내부 감리 시스템을 통한 시공 관리 되고 있습니다</p>
	            </div>
	            <div class="col-6 col-lg-4 pb-4"><a href="/assets/img/detail/gallery/13-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/13.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4"><a href="/assets/img/detail/gallery/14-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/14.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4"><a href="/assets/img/detail/gallery/15-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/15.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4"><a href="/assets/img/detail/gallery/16-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/16.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4"><a href="/assets/img/detail/gallery/17-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/17.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4"><a href="/assets/img/detail/gallery/18-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/18.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4 pb-lg-0"><a href="/assets/img/detail/gallery/19-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/19.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4 pb-sm-0"><a href="/assets/img/detail/gallery/20-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/20.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4"><a href="/assets/img/detail/gallery/21-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/21.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	          </div>
	        </div>end of .container
	      </section> -->

	   <section class="text-center text-sans-serif" id="digital-partners">
        <div class="container" style="padding-top:7.5rem;">
          <div class="row justify-content-center">
            <div class="col-lg-7">
              <h2 class="mb-2">쿨리닉은 냉동공조 산업의 시스템을 만들어 갑니다.</h2>
            </div>
          </div>
        </div><!-- end of .container-->
      </section>

      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="text-center bg-black text-sans-serif inner" id="digital-contact" style="padding-top:7.5rem;pdding-bottom:7.5rem;margin-top:7.5rem;">
        <div class="container">
          <form class="zform text-left mt-6">
            <div class="row justify-content-center" style="padding-bottom:7.5rem;">
              <div class="col-lg-5"><input type="hidden" name="to" value="username@domain.extension" />
                <div class="form-group mb-4"><label class="text-400 font-weight-bold ls fs--1">성함</label><input class="fs-0 form-control border-800 bg-transparent" type="text" required="required" /></div>
                <div class="form-group mb-4"><label class="text-400 font-weight-bold ls fs--1">이메일</label><input class="fs-0 form-control border-800 bg-transparent" type="email" required="required" /></div>
                <div class="form-group mb-4"><label class="text-400 font-weight-bold ls fs--1">연락처</label><input class="fs-0 form-control border-800 bg-transparent" type="text" required="required" /></div>
                <div class="form-group mb-4"><label class="text-400 font-weight-bold ls fs--1">문의사항은 무엇인가요?</label><select class="fs-0 custom-select border-800 bg-transparent">
                    <option selected="">Select one</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select></div>
              </div>
              <div class="col-lg-5">
                <div class="form-group mb-4"><label class="text-400 font-weight-bold ls fs--1">회사명</label><input class="fs-0 form-control border-800 bg-transparent" type="text" required="required" /></div>
                <div class="form-group mb-4"><label class="text-400 font-weight-bold ls fs--1">문의내용</label><textarea class="fs-0 form-control border-800 bg-transparent" rows="11" required="required"></textarea></div>
              </div>
              <div class="col-lg-10 text-center">
                <div class="zform-feedback my-2"></div><input class="btn btn-danger" type="submit" value="문의 할게요" />
              </div>
            </div>
          </form>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->



      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="text-sans-serif inner" id="digital-socials" style="padding-top:7.5rem;padding-bottom:7.5rem;">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 pr-lg-5">
              <h3 class="mb-3">COOLINIC</h3>
              <p>#콜드룸 전문 브랜드<br/>#콜드체인 솔루션 기업</p>
            </div>
            <div class="col-md-6 col-lg-4 pr-lg-6 ml-lg-auto mt-6 mt-lg-0">
              <h4 class="mb-3">Find us</h4>
              <address>경기도 화성시 기산로 43-2</address>
            </div>
            <div class="col-md-6 col-lg-4 mt-6 mt-lg-0">
              <h4 class="mb-3">Info</h4>
              <p class="mb-0"><span class="text-black">Tel: </span><a class="text-700" href="tel:+15771817">1577-1817</a></p>
              <p class="mb-0"><span class="text-black">Email: </span><a class="text-700" href="mailto:info@coolinic.com">info@coolinic.com</a></p>
            </div>
          </div>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->

    <!--===============================================-->
    <!--    Modal for language selection-->
    <!--===============================================-->
    <!-- Modal-->
    <div class="modal fade fade-in" id="languageModal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-xs mx-auto" role="document">
        <div class="modal-content bg-black">
          <div class="modal-body text-center p-0"><button class="close text-white position-absolute t-0 r-0 times-icon mt-2 mr-2 p-2" type="button" data-dismiss="modal" aria-label="Close"></button>
            <ul class="list-unstyled pl-0 my-0 py-4 text-sans-serif">
              <li><a class="text-white font-weight-bold pt-1 d-block" href="home-default.html">English</a></li>
              <li><a class="pt-1 d-block text-500" href="#">Français</a></li>
              <li><a class="text-500 pt-1 d-block" href="page-rtl.html">عربى</a></li>
              <li><a class="pt-1 d-block text-500" href="#">Deutsche</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>


            <footer class="page-footer">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/about.jpg);background-position: 0 27%; transform: scale(1.1);">
              </div>
              <!--/.bg-holder-->

              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0"></div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/about.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">회사소개</h1>
            </div>
          </div>
        </div>
      </div>
      
      
      <!-- AI 자동견적 -->
      <div class="page position-absolute t-0 w-100" id="ai">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-6 pt-lg-0">

          <!-- ============================================-->
          <!-- <section> begin ============================-->
	      <section>
	      <div id="wrapsv">
			<header id="headersv" class="row_flex">
    			<h2>AI 자동견적 계산기</h2>
  			</header>
			
		  	<section id="sectionsv">
   			<form action="/ai-calc" name="rentalForm" id="rentalForm" method="post" onsubmit="return submitCheck();">
   			
   			<!-- container_content -->
   			<div class="container_content">
     			<div class="row_flex">
       				<!-- product_info -->
       				<div class="product_info">
         				<!-- product_size -->
	         				<div class="product_size product_info_item">
	      					<!-- <h3>저온창고 정보</h3> -->
	      					<!-- <video src="/assets/video/coolinic.mp4" class="videoMp4-calc" style="border-radius: 10px;" autoplay muted loop controls></video> -->
	      					<div class="owl-carousel owl-theme owl-dots-inner owl-theme-white h-100" data-options='{"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true,"animateOut":"fadeOut","nav":true}' data-zanim-lg='{"animation":"zoom-out","delay":0}' data-zanim-trigger="scroll">
				                <div class="min-vh-lg-100 py-9">
				                  <div class="bg-holder" style="border-radius:10px;background-image:url(/assets/img/detail/headers/header-3.jpg);"></div>
				                  <!--/.bg-holder-->
				                </div>
				                <div class="min-vh-lg-100 py-9">
				                  <div class="bg-holder" style="border-radius:10px;background-image:url(/assets/img/detail/headers/header-2.jpg);"></div>
				                  <!--/.bg-holder-->
				                </div>
				                <div class="min-vh-lg-100 py-9">
				                  <div class="bg-holder" style="border-radius:10px;background-image:url(/assets/img/detail/headers/header-12.jpg);"></div>
				                  <!--/.bg-holder-->
				                </div>
			                </div>
	           				<!-- <table id="20ftMasterList" style="margin-top:20px;">
		             			<th class="br_l"></th>
					            <th>내부<span>(m)</span></th>
					            <th>외부<span>(m)</span></th>
					            <th class="br_r">개구부<span>(m)</span></th>
		             			<tr>
					               	<td>길이</td>
					               	<td>5.5</td>
					               	<td>6.1</td>
					               	<td>-</td>
					            </tr>
					            <tr>
					            	<td>폭</td>
					                <td>2.3</td>
					                <td>2.4</td>
					                <td>2.4</td>
					            </tr>
					            <tr>
					                <td>높이</td>
					                <td>2.3</td>
					                <td>2.6</td>
					                <td>2.6</td>
					            </tr>
	           				</table> -->
         				</div>
         				
       				</div>
       				
       				<div class="addition">
         				<!-- product_size -->
         				<div class="product_size product_info_item product_info_item_mobile">
       					<!-- <h3>저온창고 정보</h3> -->
       					<!-- <p><img src="/assets/img/calc/size_img.png"></p> -->
       					<div class="owl-carousel owl-theme owl-dots-inner owl-theme-white h-100" data-options='{"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true,"animateOut":"fadeOut","nav":true}' data-zanim-lg='{"animation":"zoom-out","delay":0}' data-zanim-trigger="scroll">
				                <div class="min-vh-lg-100 py-9">
				                  <div class="bg-holder" style="border-radius:10px;background-image:url(/assets/img/detail/headers/header-3.jpg);"></div>
				                  <!--/.bg-holder-->
				                </div>
				                <div class="min-vh-lg-100 py-9">
				                  <div class="bg-holder" style="border-radius:10px;background-image:url(/assets/img/detail/headers/header-2.jpg);"></div>
				                  <!--/.bg-holder-->
				                </div>
				                <div class="min-vh-lg-100 py-9">
				                  <div class="bg-holder" style="border-radius:10px;background-image:url(/assets/img/detail/headers/header-12.jpg);"></div>
				                  <!--/.bg-holder-->
				                </div>
			                </div>
       						<!-- <table id="20ftMasterList_M" style="margin-top:20px;">
		       					<th class="br_l"></th>
					            <th>내부<span>(m)</span></th>
					            <th>외부<span>(m)</span></th>
					            <th class="br_r">개구부<span>(m)</span></th>
		             			<tr>
					               	<td>길이</td>
					               	<td>5.5</td>
					               	<td>6.1</td>
					               	<td>-</td>
					            </tr>
					            <tr>
					            	<td>폭</td>
					                <td>2.3</td>
					                <td>2.4</td>
					                <td>2.4</td>
					            </tr>
					            <tr>
					                <td>높이</td>
					                <td>2.3</td>
					                <td>2.6</td>
					                <td>2.6</td>
					            </tr>
         					</table> -->
         				</div>

         				<div class="cont_box tab_common_cont">
              					<h3>저온창고의 정보를 입력해주세요.</h3>
              					<h6 style="padding-left: 10px;">저온창고의 정보 입력만으로 쉽게 자동 견적서를 확인하실 수 있습니다.</h6>
              					<div class="item">
                					<input type="text" id="wid" name="wid" placeholder="가로(mm)" onchange="inputValueWidChange();" required>
              						<div class="error-msg1" style="padding:5px 0 0 5px;font-size:12px;color:red;background-color: #F4F7FF;"></div>
              					</div>
              					<div class="item">
                					<input type="text" id="vert" name="vert" placeholder="세로(mm)" onchange="inputValueVertChange();" required>
                					<div class="error-msg2" style="padding:5px 0 0 5px;font-size:12px;color:red;background-color: #F4F7FF;"></div>
              					</div>
              					<div class="item">
                					<input type="text" id="heg" name="heg" placeholder="높이(mm)" onchange="inputValueHegChange();" required>
                					<div class="error-msg3" style="padding:5px 0 0 5px;font-size:12px;color:red;background-color: #F4F7FF;"></div>
              					</div>
              					<div class="item">
	              					<select id="store" name="store" required="required">
								      <option value="0" selected disabled>저장품목</option>
								      <option value="storelist01">어패류</option>
								      <option value="storelist02">화훼류</option>
								      <option value="storelist03">돈육</option>
								      <option value="storelist04">채소류</option>
								      <option value="storelist05">과실류</option>
								      <option value="storelist06">혼합류</option>
								      <option value="storelist07">기타</option>
								   </select>
              					</div>
              					<div class="item">
	              					<select id="temperture" name="temperture" required="required">
								      <option value="0" selected disabled>희망온도</option>
								      <option value="temp01">냉장(0 ~ 15℃)</option>
								      <option value="temp02">냉동(0 ~ -20℃)</option>
								      <option value="temp03">동결(-20 ~ -40℃)</option>
								      <option value="temp04">급속동결(-40 ~ -70℃)</option>
								   </select>
              					</div>
              					<div class="item">
	              					<select id="mtype" name="mtype" required="required">
								      <option value="0" selected disabled>출입구 형태</option>
								      <option value="mtype01">오버랩 도어(일반 도어 타입)</option>
								      <option value="mtype02">수동 슬라이드 편개(한쪽 열림)</option>
								      <option value="mtype03">수동 슬라이드 양개(양쪽 열림)</option>
								      <option value="mtype04">자동 슬라이드 편개(한쪽 열림)</option>
								      <option value="mtype05">자동 슬라이드 양개(양쪽 열림)</option>
								   </select>
              					</div>
              					<div class="item">
	              					<select id="msize" name="msize" required="required">
								      <option value="0" selected disabled>출입구 사이즈</option>
								      <option value="msize01">평수에 맞게 스탠다드 적용</option>
								      <option value="msize02">900 X 2100 X 100 (오버랩)</option>
								      <option value="msize03">1000 X 2100 X 100 (오버랩)</option>
								      <option value="msize04">1200 X 2400 X 100 (슬라이드 / 편개)</option>
								      <option value="msize05">1400 X 2600 X 100 (슬라이드 / 편개)</option>
								      <option value="msize06">2400 X 2600 X 100 (슬라이드 / 양개)</option>
								      <option value="msize07">2600 X 2800 X 100 (슬라이드 / 양개)</option>
								   </select>
								   <div class="alert-msg" style="padding:5px 0 0 5px;font-size:12px;color:#999;background-color: #F4F7FF;"></div>
              					</div>
              					<div class="item">
	              					<select id="purchese" name="purchese" required="required">
								      <option value="0" selected disabled>구매형태</option>
								      <option value="purchese01">구입</option>
								      <option value="purchese02">렌탈</option>
								   </select>
              					</div>
            				</div>
          			  <!--cont_box end-->
        		      </div>
        			  <!-- addition end -->
                </div>
            </div>	
            
            
   		  <!-- container_content end -->
      		  <footer class="footer" id="individually_footer">
        	      <div class="footer_cont">
          			  <!--calculator_box -->
          			  <div class="calculator_box">
            		      <div class="calculator_cont row_flex">
              			      
              				<!--calculator_cont01-->
              				<div id="btnloading" class="calculator_cont02 row_flex">
                				<input type="submit" id="btnSave" value="견적서 확인">
              				</div>
              				<!--calculator_cont02-->
            			</div>
            			<!--calculator_cont end-->
    
            			<div class="notice">
              				<p>기본 정보 입력만으로 스탠다드 견적 금액을 확인하실 수 있으며, 설치현장 환경에 따라 추가 비용이 발생할 수 있습니다.</p>
            			</div>
            			<!--notice-->
          			</div>
          			<!--calculator_box-->
        		</div>
      		</footer>
	    	</form>
		    </section>
			</div>
            </section>

            <footer class="page-footer">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/service.jpg);background-position: 0 41%; transform: scale(1.1);">
              </div>
              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0"></div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/service.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">AI 자동견적</h1>
            </div>
          </div>
        </div>
      </div>
      
      <div class="page position-absolute t-0 w-100" id="coldroom">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-6 pt-lg-0" style="padding-bottom:0;padding-top: 0 !important;">

		      <!-- 3년의 워런티 -->
		      <section class="py-0" id="page-about">
		        <div class="container-fluid">
		          <div class="row">
		            <div class="col-lg-6 px-0 order-lg-2">
		              <div class="sticky-top vh-lg-100 py-9">
		                <div class="waranch" style="background-image:url(/assets/img/detail/about.jpg);" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out-slide-left","delay":0.4}'></div>
		                <!--/.bg-holder-->
		              </div>
		            </div>
		            <div class="col-lg-6 bg-white py-6">
		              <div class="row h-100 align-items-center justify-content-center">
		              
		              
		                <div class="col-lg-10">
		                  <div class="mb-5">
		                    <div class="overflow-hidden">
		                      <h1 class="fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll">
		                      point 3가지.
		                      </h1>
		                    </div>
		                  </div>
		                  
		                  <div class="media mb-5 card-service" data-zanim-timeline="{}">
		                    <div class="overflow-hidden"><img class="mr-3 mr-sm-4" src="/assets/img/detail/icons/icon-target.svg" alt="" width="50" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);"></div>
		                    <div class="media-body">
		                      <div class="overflow-hidden">
		                        <h4 class="mb-2" data-zanim-xs="{&quot;delay&quot;:0.1,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
		                        A/S 시스템이 완벽하다
		                        </h4>
		                      </div>
		                      <div class="overflow-hidden">
		                        <p class="mb-0" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
		                         A/S 스트레스 없는 안전한 콜드룸
		                        </p>
		                      </div>
		                    </div>
		                  </div>
		                  <div class="media mb-5 card-service" data-zanim-timeline="{}">
		                    <div class="overflow-hidden"><img class="mr-3 mr-sm-4" src="/assets/img/detail/icons/icon-line-chart.svg" alt="" width="50" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);"></div>
		                    <div class="media-body">
		                      <div class="overflow-hidden">
		                        <h4 class="mb-2" data-zanim-xs="{&quot;delay&quot;:0.1,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
		                        이력추적으로 관리된다
		                        </h4>
		                      </div>
		                      <div class="overflow-hidden">
		                        <p class="mb-0" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
		                        기억력 좋은 똑똑한 콜드룸
		                        </p>
		                      </div>
		                    </div>
		                  </div>
		                  <div class="media mb-5 card-service" data-zanim-timeline="{}">
		                    <div class="overflow-hidden"><img class="mr-3 mr-sm-4" src="/assets/img/detail/icons/icon-coding.svg" alt="" width="50" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);"></div>
		                    <div class="media-body">
		                      <div class="overflow-hidden">
		                        <h4 class="mb-2" data-zanim-xs="{&quot;delay&quot;:0.1,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
		                        2배의 보증기간
		                        </h4>
		                      </div>
		                      <div class="overflow-hidden">
		                        <p class="mb-0" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
		                        홀수는 정없잖아요, 1년 보다는 2년
		                        </p>
		                      </div>
		                    </div>
		                  </div>
		                  
		                  
		                  <!-- A/S 시스템이 완벽하다 -->
		                  <div style="margin-top:7.5rem;">
		                    <div class="overflow-hidden">
		                      <blockquote class="blockquote text-center my-3 border p-5 px-xl-7 border-300 rounded" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">
			                    <p class="blockquote-content" style="font-size:1.9rem;">
			                    A/S 스트레스 없는<br/>안전한 콜드룸
			                    </p>
			                  </blockquote>
		                    </div>
		                  </div>
		                  <p class="dropcap" data-zanim-xs='{"delay":0.5}' data-zanim-trigger="scroll">
		                  <h4 class="fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll" style="font-size:1.5rem;">
		                      오랜 사용을 목적으로<br/>A/S에 용의한 콜드룸을 만듭니다.
		                  </h4>
		                  <br/><br/>
	                      <h4>생계수단 자산 콜드룸.</h4>
		                  <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
		                  왜냐하면 콜드룸은 10년 이상을 사용하는 자산이기 때문입니다.
		                  <br/><br/><br/>
	                      <h4>사후관리에 최적화 된 콜드룸을 만듭니다.</h4>
		                  <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						  그래서 저희 콜드룸 설계팀은 지속적이고 안정적인 사용성에 최우선 순위를 두고,
						  고장이 났을때 잘 대응할 수 있는 즉, 사후관리에 최적화된 콜드룸을 만들고 있습니다.
		                  </p>
		                  <div class="row mt-5">
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/about-02.jpg" alt="" data-zanim-xs='{"delay":0.6,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/about-01.jpg" alt="" data-zanim-xs='{"delay":0.7,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                  </div>
		                  
		                  <!-- 이력추적으로 관리된다 -->
		                  <div style="margin-top:7.5rem;"><!-- class="mb-5" -->
		                    <div class="overflow-hidden">
		                      <blockquote class="blockquote text-center my-3 border p-5 px-xl-7 border-300 rounded" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">
			                    <p class="blockquote-content" style="font-size:1.9rem;">
			                    기억력 좋은<br/>똑똑한 콜드룸
			                    </p>
			                  </blockquote>
		                    </div>
		                  </div>
		                  <p class="dropcap" data-zanim-xs='{"delay":0.5}' data-zanim-trigger="scroll">
		                  <h4 class="fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll" style="font-size:1.5rem;">
		                      언제가 될지 모르는 한번을 위해<br/>모두를 기록합니다.
		                  </h4><br/>
		                  <br/>
	                      <h4>RMS는 냉동기의 모든 이력을 기록하고 보관합니다.</h4>
		                  <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
		                    병원에서 우리의 병력을 기록하고 관리하듯,
		                    기약없는 냉동기 고장의 빠른 대응을 위해 
		                    냉동기와 콜드룸의 모든 이력을 기록하고 보관합니다
						  <br/><br/><br/>
	                      <h4>단 1분 입니다.</h4>
		                  <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							콜드룸의 모든 정보를 파악하는데 필요한 시간은, 단 1분 입니다.
							현장에서 확인할수 밖에 없었던 콜드룸의 정보는 어디서든 단 1분이면 확인할 수 있습니다.
		                  </p>
		                  <div class="row mt-5">
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/about-02.jpg" alt="" data-zanim-xs='{"delay":0.6,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/about-01.jpg" alt="" data-zanim-xs='{"delay":0.7,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                  </div>
		                  
		                  <!-- 2배의 보증기간 -->
		                  <div style="margin-top:7.5rem;"><!-- class="mb-5" -->
		                    <div class="overflow-hidden">
		                      <blockquote class="blockquote text-center my-3 border p-5 px-xl-7 border-300 rounded" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">
			                    <p class="blockquote-content" style="font-size:1.9rem;">
			                    더 안심할수 있도록,<br/>1년 보다는 2년
			                    </p>
			                  </blockquote>
		                    </div>
		                  </div>
		                  <p class="dropcap" data-zanim-xs='{"delay":0.5}' data-zanim-trigger="scroll">
		                  <h4 class="fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll" style="font-size:1.5rem;">
		                      책임감은 자신감으로부터,<br/>국내 최대 워런티를 보장합니다.
		                  </h4>
		                  <br/><br/>
	                      <h4>유일무이 2년의 워런티.</h4>
		                  <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
		                  새것은 고장나지 않아요. 냉동기 고장은 데미지의 누적이고 새 제품은 생각보다 데미지를 잘 견딥니다.
					      쿨리닉의 콜드룸은 대한민국 유일하게 2년의 워런티를 보장합니다. 
					      <br/><br/><br/>
	                      <h4>대체불가능한 기술력.</h4>
		                  <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						  불가능을 가능하게 한 관리 솔루션, 위치기반의 A/S 시스템과 같은 대체불가능한 기술력에 대한 자신감 입니다.
		                  </p>
		                  <div class="row mt-5" style="margin-bottom: 7.5rem;">
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/about-02.jpg" alt="" data-zanim-xs='{"delay":0.6,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/about-01.jpg" alt="" data-zanim-xs='{"delay":0.7,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                  </div>
		                </div>
		                
		                
		                
		                
		                  
		                
		                
		                
		                <!-- <div class="col-xl-4 text-center" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll" >
		                  <h2 class="fs-3 fs-sm-4 mb-1" style="font-size: 3rem;">6 million</h2>
		                  <p class="font-italic text-500">Total Lines of Code</p>
		                </div>
		                <div class="col-xl-4 text-center mt-4 mt-xl-0" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">
		                  <h2 class="fs-3 fs-sm-4 mb-1 text-danger" style="font-size: 3rem;">1024</h2>
		                  <p class="font-italic text-500">Cups of Coffee</p>
		                </div> -->
		                
		                <!-- <div class="col-lg-10 mt-6"><img class="rounded img-fluid" src="/assets/img/detail/about-03.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" />
		                  <div class="row mt-6">
		                    <div class="col-md col-lg-12 col-xl">
		                      <div class="overflow-hidden">
		                        <h6 class="text-uppercase ls" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">RESEARCH</h6>
		                      </div>
		                      <div class="overflow-hidden">
		                        <p class="text-justify" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">John Doe also spent nearly a decade in academia, where he was the editor of an academic journal and had plenty of research experience, including even a Ph.D. program. That has made the agency distinctively equipped to handle the complex problems of digital media and its need for storytelling.</p>
		                      </div>
		                    </div>
		                    <div class="col-md col-lg-12 col-xl mt-4 mt-md-0 mt-lg-4 mt-xl-0">
		                      <div class="overflow-hidden">
		                        <h6 class="text-uppercase ls" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">MEDIA</h6>
		                      </div>
		                      <div class="overflow-hidden">
		                        <p class="text-justify" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">Sparrow organically emerged from John Doe's work in media, which spans from websites, online and cable TV, and more. Sponsors and audiences of his platforms began asking for help in web, I.T., and marketing, leading to the founding of the agency and years of work across various industries.</p>
		                      </div>
		                    </div>
		                  </div>
		                </div> -->
		                
		              </div>
		            </div>
		          </div>
		        </div><!-- end of .container-->
		      </section><!-- <section> close ============================-->
		      <!-- ============================================-->
		
		
		    <!--===============================================-->
		    <!--    Modal for language selection-->
		    <!--===============================================-->
		    <!-- Modal-->
		    <div class="modal fade fade-in" id="languageModal" tabindex="-1" role="dialog" aria-hidden="true">
		      <div class="modal-dialog modal-dialog-centered modal-xs mx-auto" role="document">
		        <div class="modal-content bg-black">
		          <div class="modal-body text-center p-0"><button class="close text-white position-absolute t-0 r-0 times-icon mt-2 mr-2 p-2" type="button" data-dismiss="modal" aria-label="Close"></button>
		            <ul class="list-unstyled pl-0 my-0 py-4 text-sans-serif">
		              <li><a class="text-white font-weight-bold pt-1 d-block" href="home-default.html">English</a></li>
		              <li><a class="pt-1 d-block text-500" href="#">Français</a></li>
		              <li><a class="text-500 pt-1 d-block" href="page-rtl.html">عربى</a></li>
		              <li><a class="pt-1 d-block text-500" href="#">Deutsche</a></li>
		            </ul>
		          </div>
		        </div>
		      </div>
		    </div>

            <footer class="page-footer" style="z-index:9999;">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/portfolio.jpg);background-position: 0 27%; transform: scale(1.1);">
              </div>
              <!--/.bg-holder-->

              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0">
                    
                    
                    </div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/portfolio.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">Portfolio</h1>
            </div>
          </div>
          
        </div>
      </div>
      
      <!-- A/S요청 -->
      <div class="page position-absolute t-0 w-100" id="as">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-6 pt-lg-0">


		   <div class="stepContainer">
			    <div id="svg_wrap"></div>
			
			    <h1 class="steph1">간편 A/S 요청 서비스</h1>
			    <section class="stepSection selectSteps">
			      <p>A/S 신청<br/>RMS 번호로 쉽게 A/S 요청 하세요</p>
			      <input type="text" placeholder="2501-02-00052" />
			      <input type="radio" id="selectSteps1" name="1step"><label for="selectSteps1">A/S 요청하기</label>
			      <input type="radio" id="selectSteps2" name="1step"><label for="selectSteps2">일반 A/S 요청하기<br/>(RMS 번호가 없어요)</label>
			    </section>
			
			    <section class="stepSection selectSteps">
			      <p>서비스 구분 선택<br/>원하시는 서비스의 종류를 선택해 주세요</p>
			      <input type="radio" id="selectSteps3" name="2step"><label for="selectSteps3">냉동기 사업자 입니다.<br/>A/S를 요청 합니다.</label>
			      <input type="radio" id="selectSteps4" name="2step"><label for="selectSteps4">파트너 입니다.<br/>A/S 대행 요청 합니다.</label>
			      <input type="radio" id="selectSteps5" name="2step"><label for="selectSteps5">제조사 입니다.<br/>A/S 대행 요청 합니다.</label>
			    </section>
			
			    <section class="stepSection selectSteps">
			      <p>A/S 대행 유.무상 선택<br/>무상 : 대행 요청자에게 비용 청구 / 유상 : 현장에서 결제</p>
			      <input type="radio" id="selectSteps6" name="3step"><label for="selectSteps6">무상 A/S 기간입니다.</label>
			      <input type="radio" id="selectSteps7" name="3step"><label for="selectSteps7">유상 A/S 기간입니다.</label>
			    </section>
			
			    <section class="stepSection selectSteps">
			      <p>서비스 유형 선택<br/>긴급 : 2시간 이내 / 출장 및 진단비 100,000<br/>일반 : 일정 조율 / 출장 및 진단비 : 50,000</p>
			      <input type="radio" id="selectSteps8" name="4step"><label for="selectSteps8">긴급으로 A/S 요청합니다.</label>
			      <input type="radio" id="selectSteps9" name="4step"><label for="selectSteps9">긴급으로 A/S 요청합니다.</label>
			    </section>
			    
			    <section class="stepSection selectSteps">
			      <p>고장 제품 선택<br/>어떤 제품의 A/S가 필요하신가요?</p>
			      <input type="radio" id="selectSteps10" name="5step"><label for="selectSteps10">업소용 냉장고</label>
			      <input type="radio" id="selectSteps11" name="5step"><label for="selectSteps11">쇼케이스 류</label>
			    </section>
			    <section class="stepSection selectSteps">
			      <p>고장 증상 선택<br/>증상을 알면 A/S가 빨라집니다</p>
			      <input type="radio" id="selectSteps12" name="6step"><label for="selectSteps12">온도가 떨어지지 않아요</label>
			      <input type="radio" id="selectSteps13" name="6step"><label for="selectSteps13">기계가 작동하지 않아요 </label>
			    </section>
			    <section class="stepSection selectSteps">
			      <p>A/S 요청지 주소<br/>현장 주소를 입력해 주세요</p>
			      <input type="text" placeholder="우편번호" />
			      <input type="text" placeholder="주소지" />
			      <input type="text" placeholder="상세주소" />
			    </section>
			    
			    <section class="stepSection selectSteps">
			      <p>상호를 알려주세요<br/>간판명 또는 기업명을 알려주세요</p>
			      <input type="text" placeholder="상호 or 기업명" />
			    </section>
			    
			    <section class="stepSection selectSteps">
			      <p>그 외 참고사항 입력<br/>제품의 상세모델명 또는 참고사항을 남겨주세요</p>
			      <input type="text" placeholder="ex)pa-100이라고 표기되어 있음" />
			    </section>
			    <section class="stepSection selectSteps">
			      <p>전화번호 인증<br/>담당자님의 번호를 인증해 주세요</p>
			      <input type="text" placeholder="010 - 없이 숫자만 입면" />
			      <input type="text" placeholder="인증번호" />
			    </section>
			
			    <section class="stepSection">
			      <p>General condtitions</p>
			      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			    </section>
			
			    <div class="stepButton" id="prev">&larr; 이전</div>
			    <div class="stepButton" id="next">다음 &rarr;</div>
			    <div class="stepButton" id="submit">Agree and send application</div>
			</div>


            <footer class="page-footer">
              <div class="bg-holder"  style="background-image:url(/assets/img/sidebars/contact.jpg);background-position: 0 37%; transform: scale(1.1);">
              </div>
              <!--/.bg-holder-->

              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <!-- <div class="col-lg-6 text-lg-left">
                      <p class="fs--1 text-uppercase ls font-weight-bold mb-0">
                        Copyright &copy; 2018 Boots4&trade; inc.</p>
                    </div> -->
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0">
                      <!-- <p class="fs--1 text-uppercase ls font-weight-bold mb-0">Made with<span class="fas fa-heart mx-1"></span>by
                        <a class="text-light" href="https://themewagon.com/">Themewagon</a>
                      </p> -->
                    </div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/gallery.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">Gallery</h1>
            </div>
          </div>
        </div>
      </div>
      <div class="page position-absolute t-0 w-100" id="traceabilityRMS">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-6 pt-lg-0">

		  <!-- 이력추적 RMS  -->
	      <!-- <section> begin ============================-->
	      <section class="py-0">
	        <div class="container-fluid">
	          <div class="row h-full border-bottom border-300">
	            <div class="col-lg-6 px-0 order-lg-2" data-zanim-lg='{"animation":"slide-left","delay":0.4}' data-zanim-trigger="scroll">
	              <div class="owl-carousel owl-theme owl-dots-inner owl-theme-white h-100" data-options='{"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true,"animateOut":"fadeOut","nav":true}' data-zanim-lg='{"animation":"zoom-out","delay":0}' data-zanim-trigger="scroll">
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/rms-header.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	              </div>
	            </div>
	            <div class="col-lg-6 bg-white py-7 py-md-8">
	              <div class="row align-items-center justify-content-center h-100">
	                <div class="col-lg-10 text-black text-center text-lg-left" data-zanim-timeline="{}" data-zanim-trigger="scroll">
	                  <div class="overflow-hidden">
	                    <h4 class="text-uppercase font-weight-normal ls text-white bg-dark p-1 rounded d-inline-block" data-zanim-xs='{"delay":0.1}'>THE &nbsp;COOLINIC</h4>
	                  </div>
	                  <div class="overflow-hidden">
	                    <h1 class="display-3 fs-5 fs-sm-6" data-zanim-xs='{"delay":0.2}' style="padding-top:5px;">
	                    <span>단 한번을</span><br /><span class="font-weight-light">위한 기록.</span></h1>
	                  </div>
	                  <div class="overflow-hidden">
	                    <p class="text-900 fs-0 mt-3 mt-md-5" data-zanim-xs='{"delay":0.3}'>
						#이력추적 관리 시스템<br/>
						#A/S 시간을 줄여줌<br/>
						#비용도 줄어듬<br/>
						#똑똑함
						</p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	<section class="border-top border-300" id="default-process">
	        <div class="container">
	          <div class="row justify-content-center text-center mb-6">
	            <div class="col-lg-6" style="margin-top: 7rem;">
	              <h2 class="fs-3 fs-sm-4 mb-3">숫자만으로 요청되는<br/>빠른 A/S</h2>
	              <!-- <p class="px-lg-6 px-md-5">
	                기업의 경우 대부분의 냉동기와 콜드룸은 멀리 떨어져 있습니다.<br/>
					어떤 냉동기와 어떤 콜드룸이 짝인지도 모르는 현장이 대부분 입니다.<br/>
					A/S에는 어쩔수 없이 소비되는 시간이 있습니다.<br/>
	              </p> -->
	              <hr class="hr-short mt-5 border-300" />
	            </div>
	          </div>
	          <div class="row inner">
	            <div class="col-12 pl-lg-7" style="padding-bottom: 7.5rem;">
	              <div class="row align-items-end">
	                <div class="col-lg-6 order-lg-2 text-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-01.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 pb-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">01</span>
	                    <h3>위치? 모델명? 사진?</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    어디있는지도 모르는 냉동기의 생소한 모델명을 불러줘야 하고, 
						때론 사진을 찍어서 전송을 하고 A/S를 요청합니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-8">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">02</span>
	                    <h3>기억에 의존</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    고장 이력이나 이전에 조치받았던 내용을 떠올리며 이력을 설명 해야 하기도 하죠.
	                    </a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">03</span>
	                    <h3>체계 없는 A/S 요청</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    A/S 요청.. 왜 이렇게 할수밖에 없을까요?
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row overflow-hidden pb-1">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">04</span>
	                    <h3>12자리 숫자</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    RMS 바코드에 부착된 12자리 숫자만 불러주세요.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-300 border-lg-bottom py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">05</span>
	                    <h3>냉동기의 모든 정보 기억</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    냉동기의 사양, 주문 옵션, 시공정보와 고장 이력까지 기억합니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row overflow-hidden pb-1">
	                <div class="col-lg-6 border-lg-right border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">06</span>
	                    <h3>냉동기기 이력추적관리 시스템, RMS</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    RMS는 현재 운용중인 콜드룸이나 냉동기에도, 
	                    신규로 제작되는 냉동기에도 모두 도입이 가능한 냉동기기 이력추적관리 시스템입니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section>
	
	
	
	<section id="default-services">
        <div class="container">
          <div class="row justify-content-center inner">
            <div class="col-12 mb-5 mb-md-7 text-center" style="margin-top: 7rem;">
              <h2 class="fs-3 fs-sm-4"><span>제대로 관리 하고싶은 분들을 위합니다.</span></h2>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>체계적으로 냉동기를 관리하고 싶은 기업</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    남들과 차별화와 경쟁력을 갖추고 싶은 시공 및 수리업체에 권합니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-target.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>유지보수 전문 업체</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    차별화 된 경쟁력으로 무장할 수 있는 똑똑한 RMS를 권합니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div><!-- end of .container-->
      </section>
      
      
      <!-- <section class="py-0 inner" id="default-cta-1" style="margin-bottom:7.5rem;">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay rounded" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	          </div>
	          <div class="row justify-content-center text-center py-7">
	            <div class="col-lg-9 px-4">
	              <h3 class="fs-2 fs-sm-3 text-black">정보를 확인하고 미리 준비하면<br/>A/S는 46% 빨라집니다.</h3>
	              <p class="lead text-400 px-lg-7">
	              이 냉동기가 언제 시공 되었는지, <br/>
	              어떤 고장 이력이 있는지, <br/>
	              어떻게 수리 되었는지 등 모든 이력을 똑똑하게 기억합니다.
	              </p>
	            </div>
	          </div>
	        </div>
	      </section> -->
      
     <section class="bg-white py-6 py-md-8 inner" id="default-why-us">
	        <div class="container">
	          <div class="row align-items-center justify-content-center">
	            <div class="col-12 mb-2 mb-lg-5 text-center">
	              <h2 class="fs-3 fs-sm-4"><span style="font-size:2rem;">정보를 확인하고 미리 준비하면<br/>A/S는 46% 빨라집니다.</span></h2>
	            </div>
	          </div>
	          <div class="row align-items-center justify-content-center">
	           
	            <div class="col-sm-8 col-lg-4 mt-4 mt-lg-0 px-lg-4"><img class="w-100 rounded" src="/assets/img/detail/creative.jpg" alt="" data-zanim-xs='{"animation":"zoom-out","delay":0.1}' data-zanim-trigger="scroll" /></div>
	            <div class="col-sm-8 col-lg-4 mt-5 mt-lg-0 pl-lg-3 pl-xl-4">
	              <div class="overflow-hidden">
	                <h4 class="mb-3" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">걱정없는 사후관리</h4>
		            <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	              </div>
	              <div class="overflow-hidden">
	                <p data-zanim-xs='{"delay":0.3}' data-zanim-trigger="scroll">
	                  이 냉동기가 언제 시공 되었는지<br/>
		              어떤 고장 이력이 있는지<br/>
		              어떻게 수리 되었는지<br/>
		              모든 이력을 똑똑하게 기억합니다.
	                </p>
	              </div>
	            </div>
	          </div>
	        </div>
	      </section>
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      
	
	 <section class="py-0 inner" id="default-cta-1">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay rounded" style="" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	            <!--/.bg-holder--><!-- background-image:url(/assets/img/detail/headers/header-16.jpg); -->
	          </div>
	          <div class="row justify-content-center text-center py-7">
	            <div class="col-lg-9 px-4">
	            
	            
	        <div class="col-12 mb-5 mb-md-7 text-center">
              <h2 class="fs-3 fs-sm-4"><span class="text-underline">이렇게 바뀔꺼에요.</span></h2>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>모든정보 기억</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					시스템 도입 시 모든 정보는 RMS에 기억 됩니다. 
					</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>수리정보 기록</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					점검 또는 고장으로 인한 수리 정보는 RMS에 기록 됩니다.
					</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-target.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>정보유지</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    공무팀이 바뀌어도, 관리자가 바뀌어도, RMS 정보는 바뀌지 않아요.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-target.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>다수관리 용이</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    다수의 냉동기가 있을수록 관리의 효과는 커집니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/favorites-button.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>쿨리닉 케어</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    병원에서 우리의 병력을 기록하고 관리하듯 냉동기의 모든 이력을 기록하고 보관합니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	     
	      <!-- <section class="overflow-hidden py-0" id="default-cta-2">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay overlay-2 rounded" style="background-image:url(/assets/img/detail/headers/header-47.jpg);" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	            /.bg-holder
	          </div>
	          <div class="row align-items-center justify-content-center text-center py-8">
	            <div class="col-lg">
	              <h1 class="mb-0 text-white">RMS 도입 절차</h1>
	              <h6 class="text-300 fs-0">
					RMS는 신규로 콜드룸을 설치하는 경우에도,<br/> 
					기존에 사용중인 냉동기나 콜드룸에도 도입이 가능합니다.
	              </h6>
	            </div>
	            <div class="col-lg-7 px-lg-8 mt-6 mt-lg-0">
	              <div class="owl-carousel owl-theme owl-nav-outer" data-options='{"dots":false,"nav":true,"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true}'>
	                <div class="item">
	                  <h4 class="text-serif font-weight-light text-white mb-4">
	                  1. 신규 설치 시
	                  </h4>
	                  <h6 class="fs-0 mb-0 text-white font-weight-black">쿨리닉에서 시공되는 모든 콜드룸은 모두 RMS가 적용됩니다.
						함께하는 시공업체가 있으시다면, “이력관리 되는 RMS 냉동기로 해주세요” 라고 말씀해 주세요.</h6>
	                </div>
	                <div class="item">
	                  <h4 class="text-serif font-weight-light text-white mb-4">
	                  2. 기존 콜드룸 도입 시
	                  </h4>
	                  <h6 class="fs-0 mb-0 text-white font-weight-black">
	                  신청 - RMS 도입요청 버튼을 눌러 내용을 기재 해 주세요 (1분)<br/>
						상담 - 콜드매니저가 배정되어 상담이 이루어 집니다 (30분)<br/>
						도입 - 현장의 냉동기와 콜드룸에 RMS가 도입됩니다 (1 DAY)<br/>
						처리 - 계정 생성 / DB 생성 등의 전산 처리가 이루어집니다 (1주일)<br/>
						완료 - 계정이 전달되고 RMS 관리가 시작 됩니다
	                  </h6>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </section> -->
	      <!-- ============================================-->
	      
	    <!-- Cookie Notice-->
	    <div class="toast bg-dark text-white shadow-none notice" id="cookie-notice" role="alert" data-options='{"autoShow":false,"autoShowDelay":5000,"showOnce":true,"cookieExpireTime":7200000}' data-autohide="false" aria-live="assertive" aria-atomic="true">
	      <div class="toast-body p-4"><button class="close text-white text-shadow-none position-absolute t-0 r-0 p-2 mr-1 fs-1" type="button" data-dismiss="toast" aria-label="Close"><span aria-hidden="true">×</span></button>
	        <div class="media"><img class="mr-3" src="/assets/img/detail/icons/cookie-notice.png" width="50" alt="" />
	          <div class="media-body">
	            <p class="fs-0 ls text-sans-serif">Our site uses cookies. By continuing to use our site, you agree to our <a class="text-white text-underline" href="components/sparrow/cookie-notice.html">Cookie Policy.</a></p><button class="btn btn-outline-light btn-sm text-uppercase border-700" type="button" data-dismiss="toast" aria-label="Close">Ok, I understand</button>
	          </div>
	        </div>
	      </div>
	    </div>
	
	    <!--===============================================-->
	    <!--    Modal for language selection-->
	    <!--===============================================-->
	    <!-- Modal-->
	    <div class="modal fade fade-in" id="languageModal" tabindex="-1" role="dialog" aria-hidden="true">
	      <div class="modal-dialog modal-dialog-centered modal-xs mx-auto" role="document">
	        <div class="modal-content bg-black">
	          <div class="modal-body text-center p-0"><button class="close text-white position-absolute t-0 r-0 times-icon mt-2 mr-2 p-2" type="button" data-dismiss="modal" aria-label="Close"></button>
	            <ul class="list-unstyled pl-0 my-0 py-4 text-sans-serif">
	              <li><a class="text-white font-weight-bold pt-1 d-block" href="home-default.html">English</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Français</a></li>
	              <li><a class="text-500 pt-1 d-block" href="page-rtl.html">عربى</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Deutsche</a></li>
	            </ul>
	          </div>
	        </div>
	      </div>
	    </div>

            <footer class="page-footer">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/contact.jpg);background-position: 0 37%; transform: scale(1.1);">
              </div>
              <!--/.bg-holder-->

              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <!-- <div class="col-lg-6 text-lg-left">
                      <p class="fs--1 text-uppercase ls font-weight-bold mb-0">
                        Copyright &copy; 2018 Boots4&trade; inc.</p>
                    </div> -->
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0">
                      <!-- <p class="fs--1 text-uppercase ls font-weight-bold mb-0">Made with<span class="fas fa-heart mx-1"></span>by
                        <a class="text-light" href="https://themewagon.com/">Themewagon</a>
                      </p> -->
                    </div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/contact.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">Contact Us</h1>
            </div>
          </div>
        </div>
      </div>
      
      
      <div class="page position-absolute t-0 w-100" id="smartADS">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-6 pt-lg-0">
          
          	  <!-- 스마트제상 ADS  -->
		     <!-- <section> begin ============================-->
	      <section class="py-0">
	        <div class="container-fluid">
	          <div class="row h-full border-bottom border-300">
	            <div class="col-lg-6 px-0 order-lg-2" data-zanim-lg='{"animation":"slide-left","delay":0.4}' data-zanim-trigger="scroll">
	              <div class="owl-carousel owl-theme owl-dots-inner owl-theme-white h-100" data-options='{"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true,"animateOut":"fadeOut","nav":true}' data-zanim-lg='{"animation":"zoom-out","delay":0}' data-zanim-trigger="scroll">
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/header-3.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/header-2.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/header-12.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	              </div>
	            </div>
	            <div class="col-lg-6 bg-white py-7 py-md-8">
	              <div class="row align-items-center justify-content-center h-100">
	                <div class="col-lg-10 text-black text-center text-lg-left" data-zanim-timeline="{}" data-zanim-trigger="scroll">
	                  <div class="overflow-hidden">
	                    <h4 class="text-uppercase font-weight-normal ls text-white bg-dark p-1 rounded d-inline-block" data-zanim-xs='{"delay":0.1}'>THE &nbsp;COOLINIC</h4>
	                  </div>
	                  <div class="overflow-hidden">
	                    <h1 class="display-3 fs-5 fs-sm-6" data-zanim-xs='{"delay":0.2}'><span class="text-underline">직접 보는</span><br /><span class="font-weight-light">스마트 ADS</span></h1>
	                  </div>
	                  <div class="overflow-hidden">
	                    <p class="text-900 fs-0 mt-3 mt-md-5" data-zanim-xs='{"delay":0.3}'>
						#에너지 절감<br />
						#전기요금 절감<br />
						#온도편차 절감<br />
						#가치상승
						</p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
		   <section class="bg-white py-6 py-md-8 inner" id="default-why-us">
		        <div class="container">
		          <div class="row align-items-center justify-content-center">
		            <div class="col-12 mb-2 mb-lg-5 text-center">
		              <h2 class="fs-3 fs-sm-4"><span style="font-size:2rem;">하루에 6번 따뜻한 콜드룸</span></h2>
		            </div>
		          </div>
		          <div class="row align-items-center justify-content-center">
		           
		            <div class="col-sm-8 col-lg-4 mt-4 mt-lg-0 px-lg-4"><img class="w-100 rounded" src="/assets/img/detail/creative.jpg" alt="" data-zanim-xs='{"animation":"zoom-out","delay":0.1}' data-zanim-trigger="scroll" /></div>
		            <div class="col-sm-8 col-lg-4 mt-5 mt-lg-0 pl-lg-3 pl-xl-4">
		              <div class="overflow-hidden">
		                <h3 class="mb-3" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">콜드룸 증발기는요.</h3>
			            <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
		              </div>
		              <div class="overflow-hidden">
		                <p data-zanim-xs='{"delay":0.3}' data-zanim-trigger="scroll">
		                하루 평균 4 ~ 6번정도의 횟수로 혹여 생겼을지 
		                모를 증발기의 상(얼음)을 제거하는 작업(제상 작업)을 합니다.
		                <br/><br/>
						대부분 히터를 이용해서 제상 작업 하고, 콜드룸의 온도를 상승 시키며,
						온도상승은 보관 제품의 품질을 떨어트립니다.
						<br/><br/>
						상의 유무를 정확히 확인하여 제상 작업을 수행할 수 있다면, 온도 편차는 최소화 하고 품질은 상승합니다.
		                </p>
		              </div>
		            </div>
		          </div>
		        </div>
		      </section>
	
	
	      <section class="border-top border-300" id="default-process">
	        <div class="container">
	          <div class="row justify-content-center text-center mb-6">
	            <div class="col-lg-6" style="margin-top: 7rem;">
	              <h2 class="fs-3 fs-sm-4 mb-3">직접 보고<br/>판단하는 ADS.</h2>
	              <hr class="hr-short mt-5 border-300" />
	            </div>
	          </div>
	          <div class="row inner">
	            <div class="col-12 pl-lg-7">
	              <div class="row align-items-end">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-01.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 pb-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">01</span>
	                    <h3>모자랄바엔 과하게, 최악보다는 차악.</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    수증기는 차가운 증발기에 얼어붙어 상이 됩니다.
						<br/><br/>
	                    <h4>과함 & 차악</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						증발기의 상은 치명적이라 상의 누적을 막기 위한 제상 작업은 
						모자랄바엔 과하게 수행하는 것이 일반적입니다.
						<br/><br/>
						과도한 제상 작업으로 전기에너지를 낭비하는 편이, 
						상의 누적으로 인해 발생하는 고장보다는 더 낫다. 라는 이야기 입니다.
						<br/><br/>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						<b>상의 유무를 정확히 확인하여 제상 작업을 수행할 수 있다면 이야기는 달라집니다.</b>
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-8">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">02</span>
	                    <h3>직접 보는게 가장 정확합니다.</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    이런 이야기를 합니다.<br/>
						직접 보기 전까지는 아무것도 믿지말라고.<br/><br/>
						무언가를 판단하는 일의 가장 정확한 기준은 직접 보는 것이 아닐까요.
	                    </a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">03</span>
	                    <h3>ADS는 이러한 일들을 합니다.</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    <br/>
	                    <h4>첫째. </h4>
						<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						상의 유무를 카메라를 통해 직접 봅니다.
						<br/><br/>
						<h4>둘째. </h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						모니터링을 통해 상의 유무를 확인하고 제상 시점을 인공지능이 판단합니다.
						<br/><br/>
						<h4>셋째. </h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						제상이 꼭 필요할때 작업을 수행하고, 상이 제거되면 중지시킵니다.
						<br/><br/>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						ADS는 이러한 작업들로 상의 유무를 정확히 확인하여 제상 작업을 수행하고,<b> 70% 이상의 
						에너지와 전기요금을 절감과 콜드룸의 온도편차를 최소화 합니다.</b>
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-8">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">04</span>
	                    <h3>ADS 도입</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    ADS는 신규로 콜드룸을 설치하는 경우에도,
						기존에 사용중인 콜드룸에도 도입이 가능합니다.<br/> <br/> 
						ADS는 ▲ADS 뷰어(카메라) ▲관리솔루션 ▲원격제어 컨트롤러로 구성 됩니다.
	                    </a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">05</span>
	                    <h3>ADS 도입 절차</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    <br/>
	                    <h4>신청. 1분</h4>
						<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						ADS 도입요청 버튼을 눌러 내용을 기재해 주세요. 
						<br/><br/>
	                    <h4>상담. 30분</h4>
						<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						콜드매니저가 배정되어 상담이 이루어 집니다.
						<br/><br/>
						<h4>미팅. 1일</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						신규 현장이 아닌경우 현장 답사가 이루어 집니다.
						<br/><br/>
						<h4>계약. 1주일</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						견적과 계약이 이루어 집니다.
						<br/><br/>
						<h4>설치. 1일</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						자격을 득한 전문 시공팀에 의해 시공 됩니다.
						<br/><br/>
						<h4>완료. 제상시작</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						ADS 제상 시스템이 시작 됩니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </section>
	      <!-- <section class="py-0" id="page-about">
		        <div class="container-fluid">
		          <div class="row">
		            <div class="col-lg-12 bg-white py-6">
		              <div class="row h-100 align-items-center justify-content-center">
		              
		                <div class="col-lg-10">
		                  
		                  <div>
		                    <div class="overflow-hidden">
		                      <blockquote class="blockquote text-center my-3 border p-5 px-xl-7 border-300 rounded" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">
			                    <p class="blockquote-content" style="font-size:1.9rem;">
			                    콜드룸의 에너지 사용량이 100% 이면<br/>
								<span style="color:red;">21%</span>는 제상히터가 사용 합니다
			                    </p>
			                  </blockquote>
		                    </div>
		                  </div>
		                  
		                  <div class="media mb-5 card-service" data-zanim-timeline="{}">
		                    <div class="overflow-hidden"><img class="mr-3 mr-sm-4" src="/assets/img/detail/icons/icon-line-chart.svg" alt="" width="50" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);"></div>
		                    <div class="media-body">
		                      <div class="overflow-hidden">
		                        <h4 class="mb-2" data-zanim-xs="{&quot;delay&quot;:0.1,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
		                        기존의 타이머 제상으로 콜드룸은 하루에 6번 따뜻해졌고,
		                        </h4>
		                      </div>
		                      <div class="overflow-hidden">
		                        <p class="mb-0" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
				  				따뜻해진 온도를 다시 내리기 위해 냉동기는 더 많이 가동 됐었습니다.
		                        </p>
		                      </div>
		                    </div>
		                  </div>
		                </div>
		                
		              </div>
		            </div>
		          </div>
		        </div>
		      </section> -->
	      
	      <section class="py-0 inner" id="default-cta-1" style="margin-top:7.5rem;">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay rounded" style="" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	            <!--/.bg-holder--><!-- background-image:url(/assets/img/detail/headers/header-16.jpg); -->
	          </div>
	          <div class="row justify-content-center text-center py-7">
	            <div class="col-lg-9 px-4">
	            
	            
	        <div class="col-12 mb-5 mb-md-7 text-center">
              <h2 class="fs-3 fs-sm-4"><span class="text-underline">이렇게 바뀔꺼에요.</span></h2>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>70%이상 절감</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					 제상 에너지는 70% 이상 절감 됩니다.
					</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>온도상승 최소화</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					온도 상승을 최소화 해서 냉동기 가동률도 줄어들 겁니다.
					</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-target.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>히터수명 최대</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    제상을 위한 히터의 수명은 늘어날 겁니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-target.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>제품가치 상승</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    보관 제품의 가치는 높아질 겁니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/favorites-button.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>보관기간 상승</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    제품의 보관 기간은 늘어날 겁니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/favorites-button.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>위험성 감소</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    화재의 위험성은 줄어들 겁니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/favorites-button.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>비용감소</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    관리 비용은 줄어들 겁니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/favorites-button.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>탄소배출량 감소</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    탄소배출량이 줄어들 겁니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      
	      
	
	    <!-- Cookie Notice-->
	    <div class="toast bg-dark text-white shadow-none notice" id="cookie-notice" role="alert" data-options='{"autoShow":false,"autoShowDelay":5000,"showOnce":true,"cookieExpireTime":7200000}' data-autohide="false" aria-live="assertive" aria-atomic="true">
	      <div class="toast-body p-4"><button class="close text-white text-shadow-none position-absolute t-0 r-0 p-2 mr-1 fs-1" type="button" data-dismiss="toast" aria-label="Close"><span aria-hidden="true">×</span></button>
	        <div class="media"><img class="mr-3" src="/assets/img/detail/icons/cookie-notice.png" width="50" alt="" />
	          <div class="media-body">
	            <p class="fs-0 ls text-sans-serif">Our site uses cookies. By continuing to use our site, you agree to our <a class="text-white text-underline" href="components/sparrow/cookie-notice.html">Cookie Policy.</a></p><button class="btn btn-outline-light btn-sm text-uppercase border-700" type="button" data-dismiss="toast" aria-label="Close">Ok, I understand</button>
	          </div>
	        </div>
	      </div>
	    </div>
	
	    <!--===============================================-->
	    <!--    Modal for language selection-->
	    <!--===============================================-->
	    <!-- Modal-->
	    <div class="modal fade fade-in" id="languageModal" tabindex="-1" role="dialog" aria-hidden="true">
	      <div class="modal-dialog modal-dialog-centered modal-xs mx-auto" role="document">
	        <div class="modal-content bg-black">
	          <div class="modal-body text-center p-0"><button class="close text-white position-absolute t-0 r-0 times-icon mt-2 mr-2 p-2" type="button" data-dismiss="modal" aria-label="Close"></button>
	            <ul class="list-unstyled pl-0 my-0 py-4 text-sans-serif">
	              <li><a class="text-white font-weight-bold pt-1 d-block" href="home-default.html">English</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Français</a></li>
	              <li><a class="text-500 pt-1 d-block" href="page-rtl.html">عربى</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Deutsche</a></li>
	            </ul>
	          </div>
	        </div>
	      </div>
	    </div>
		
		           <footer class="page-footer">
		             <div class="bg-holder" style="background-image:url(/assets/img/sidebars/contact.jpg);background-position: 0 37%; transform: scale(1.1);">
		             </div>
		             <!--/.bg-holder-->
		
		             <div class="row justify-content-center">
		               <div class="col-lg-10">
		                 <div class="row align-items-center">
		                   <!-- <div class="col-lg-6 text-lg-left">
		                     <p class="fs--1 text-uppercase ls font-weight-bold mb-0">
		                       Copyright &copy; 2018 Boots4&trade; inc.</p>
		                   </div> -->
		                   <div class="col-lg-6 text-lg-right mt-2 mt-lg-0">
		                     <!-- <p class="fs--1 text-uppercase ls font-weight-bold mb-0">Made with<span class="fas fa-heart mx-1"></span>by
		                       <a class="text-light" href="https://themewagon.com/">Themewagon</a>
		                     </p> -->
		                   </div>
		                 </div>
		               </div>
		             </div>
		           </footer>
		         </div>
		         
		         
		         <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
		           <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
		             <div class="bg-holder" style="background-image:url(/assets/img/sidebars/contact.jpg);">
		             </div>
		             <!--/.bg-holder-->
		
		             <h1 class="page-title">Contact Us</h1>
		           </div>
		         </div>
		       </div>
		     </div>
      
      
      
      <div class="page position-absolute t-0 w-100" id="integSolution">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-6 pt-lg-0">


          	  <!-- 통합관리솔루션 -->
		      <!-- <section> begin ============================-->
	      <section class="py-0">
	        <div class="container-fluid">
	          <div class="row h-full border-bottom border-300">
	            <div class="col-lg-6 px-0 order-lg-2" data-zanim-lg='{"animation":"slide-left","delay":0.4}' data-zanim-trigger="scroll">
	              <div class="owl-carousel owl-theme owl-dots-inner owl-theme-white h-100" data-options='{"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true,"animateOut":"fadeOut","nav":true}' data-zanim-lg='{"animation":"zoom-out","delay":0}' data-zanim-trigger="scroll">
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/header-3.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/header-2.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/header-12.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	              </div>
	            </div>
	            <div class="col-lg-6 bg-white py-7 py-md-8">
	              <div class="row align-items-center justify-content-center h-100">
	                <div class="col-lg-10 text-black text-center text-lg-left" data-zanim-timeline="{}" data-zanim-trigger="scroll">
	                  <div class="overflow-hidden">
	                    <h4 class="text-uppercase font-weight-normal ls text-white bg-dark p-1 rounded d-inline-block" data-zanim-xs='{"delay":0.1}'>renovating &nbsp;together</h4>
	                  </div>
	                  <div class="overflow-hidden">
	                    <h1 class="display-3 fs-5 fs-sm-6" data-zanim-xs='{"delay":0.2}'><span class="text-underline">sparrow</span><br /><span class="font-weight-light">creative</span></h1>
	                  </div>
	                  <div class="overflow-hidden">
	                    <p class="text-900 fs-0 mt-3 mt-md-5" data-zanim-xs='{"delay":0.3}'>Creating marvelous user experience<br />for your brand, seamlessly.</p>
	                  </div>
	                  <div class="overflow-hidden">
	                    <div class="d-lg-flex align-items-center font-weight-bold ls mt-3 mt-md-5 text-uppercase" data-zanim-xs='{"delay":0.4}'>
	                      <h6 class="mb-lg-0">Follow Us:</h6>
	                      <div class="overflow-hidden"><a class="mr-1 d-inline-block" href="#"><span class="fab fa-facebook text-dark mr-2 ml-3 fs-0"></span></a><a class="mr-1 d-inline-block" href="#"><span class="fab fa-twitter text-dark mr-2 fs-0"></span></a><a class="mr-1 d-inline-block" href="#"><span class="fab fa-google-plus-g text-dark fs-0"></span></a></div>
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section class="bg-white py-6 py-md-8 inner" id="default-why-us">
	        <div class="container">
	          <div class="row align-items-center justify-content-center">
	            <div class="col-12 mb-2 mb-lg-5 text-center">
	              <h2 class="fs-3 fs-sm-4"><span class="text-underline">why sparrow?</span></h2>
	            </div>
	          </div>
	          <div class="row align-items-center justify-content-center">
	            <div class="col-sm-8 col-lg-4 text-lg-right mt-5 mt-lg-0 pr-lg-3 pr-xl-4">
	              <div class="overflow-hidden">
	                <p class="font-italic lead" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">A robust set of layouts, built-in elements, colors, typography, and css helpers &mdash; rigorously tested and optimized, gives you the perfect starting point for landing pages<br class="d-none d-xl-block" />and stylish business websites.</p>
	              </div>
	            </div>
	            <div class="col-sm-8 col-lg-4 mt-4 mt-lg-0 px-lg-4"><img class="w-100 rounded" src="/assets/img/detail/creative.jpg" alt="" data-zanim-xs='{"animation":"zoom-out","delay":0.1}' data-zanim-trigger="scroll" /></div>
	            <div class="col-sm-8 col-lg-4 mt-5 mt-lg-0 pl-lg-3 pl-xl-4">
	              <div class="overflow-hidden">
	                <h4 class="mb-3" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">bootstrap 4 + much more</h4>
	              </div>
	              <div class="overflow-hidden">
	                <p data-zanim-xs='{"delay":0.3}' data-zanim-trigger="scroll">Full coverage of Bootstrap's core components plus a suite of additional time-saving elements makes sparrow highly customizable in a powerful but simple way.</p>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	 <section class="py-0 inner" id="default-cta-1">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay rounded" style="background-image:url(/assets/img/detail/headers/header-16.jpg);" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	            <!--/.bg-holder-->
	          </div>
	          <div class="row justify-content-center text-center py-7">
	            <div class="col-lg-9 px-4">
	              <h3 class="fs-2 fs-sm-3 text-white">have a website to build?</h3>
	              <p class="lead font-italic text-400 px-lg-7">Sparrow is always ready to have your project done</p><a class="btn btn-outline-light mt-4 btn-sm border-2x" href="#">Purchase Sparrow</a>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	            <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section id="default-services">
        <div class="container">
          <div class="row justify-content-center inner" style="padding-bottom: 7.5rem;">
            <div class="col-12 mb-5 mb-md-7 text-center" style="margin-top: 7rem;">
              <h2 class="fs-3 fs-sm-4"><span class="text-underline">powerful inside.</span></h2>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>bootstrap 4.x</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Build responsive, mobile-first projects on the web with the world's most popular front-end component library.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-target.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>responsive CSS helper classes</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Toggle styles on any element, across any breakpoint according to Bootstrap grid system, using Sparrow's CSS helper classes.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/favorites-button.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>32 sets of elements</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Elegantly redesigned popular plugins including touch sliders, typed text, parallax, video background and more.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-line-chart.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>buttery smooth animation</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Crazy fast, responsive, efficient and freakishly robust GSAP; giving you the new standard for HTML5 and javascript animation.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4 mb-lg-0">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/multi-purpose.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>modular &amp; multipurpose</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Create rich UI and style with sparrow's array of ready-made modular sections - carefully designed for wide range of purposes.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-coding.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>familiar markup</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Based on the Bootstrap 4 code base, sparrow's code is instantly familiar, easy to understand and a straightforward to extend.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->
	
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section class="border-top border-300" id="default-process">
	        <div class="container">
	          <div class="row justify-content-center text-center mb-6">
	            <div class="col-lg-6" style="margin-top: 7rem;">
	              <h2 class="fs-3 fs-sm-4 text-underline mb-3">our process</h2>
	              <p class="text-500 font-italic">Our process is a flexible framework that adapts, evolves and responds to your needs. It is the streamlined result of two decades of website design and marketing for hundreds of clients.</p>
	              <hr class="hr-short mt-5 border-300" />
	            </div>
	          </div>
	          <div class="row inner">
	            <div class="col-12 pl-lg-7" style="padding-bottom: 7.5rem;">
	              <div class="row align-items-end">
	                <div class="col-lg-6 order-lg-2 text-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-01.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 pb-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">01</span>
	                    <h3>plan</h3>
	                    <p>We set priorities, organize content, and understand the buyer’s journey that your audience takes as they navigate your website. At the end of strategy, you will have a Blueprint for your website project, a comprehensive strategic plan for your website design, content, and functionality.</p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-8">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">02</span>
	                    <h3>design</h3>
	                    <p>Once the Blueprint is approved, we create wireframes and a design comp for your review. This process involves various reviews, approvals, and close communication between you and our creative team. We begin with the Homepage to set style, image and branding standards, then move toward interior layouts.</p><a class="btn btn-outline-dark btn-sm mt-3" href="#">View Methods</a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">03</span>
	                    <h3>develop</h3>
	                    <p>With the blueprint &amp; design comps as our guide, the development team begins to create your website with the state of the earth tools. Our entire team works to add content, final design elements, review, &amp; test your website for quality.</p>
	                  </div>
	                </div>
	              </div>
	              <div class="row overflow-hidden pb-1">
	                <div class="col-lg-6 border-lg-right border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">04</span>
	                    <h3>deploy</h3>
	                    <p>After testing and review, we present your new website. Upon your approval, your website will be launched, promoted and optimized for search engines such as Google &amp; Bing.</p><a class="btn btn-outline-dark btn-sm mt-3" href="page-portfolio.html">See portfolio</a>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section class="text-center inner" id="default-progressbar" style="padding-top:7.5rem;padding-bottom:7.5rem;">
	        <div class="container">
	          <div class="row justify-content-center">
	            <div class="col-md-6">
	              <h2 class="fs-3 fs-sm-4 text-underline mb-3">performance?</h2>
	              <p class="text-500 font-italic">Be surprised seeing the final outcome of your creation with sparrow and want more, no matter the task.</p>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section class="overflow-hidden py-0" id="default-cta-2">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay overlay-2 rounded" style="background-image:url(/assets/img/detail/headers/header-47.jpg);" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	            <!--/.bg-holder-->
	          </div>
	          <div class="row align-items-center justify-content-center text-center py-8">
	            <div class="col-lg">
	              <h1 class="mb-0 text-white">2 million</h1>
	              <h6 class="text-300 fs-0">happy customers &amp; counting</h6><a class="btn btn-outline-light btn-sm mt-4 border-2x" href="#">read user stories</a>
	            </div>
	            <div class="col-lg-7 px-lg-8 mt-6 mt-lg-0">
	              <div class="owl-carousel owl-theme owl-nav-outer" data-options='{"dots":false,"nav":true,"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true}'>
	                <div class="item">
	                  <h4 class="text-serif font-weight-light text-white font-italic fs-1 fs-sm-2 mb-4">"Sparrow ensures that I sleep like a little baby every single night"</h4>
	                  <h6 class="fs-0 mb-0 text-white font-weight-black">Mane Dumas</h6>
	                  <h6 class="fs-0 mb-0 font-weight-normal text-400">web designer</h6>
	                </div>
	                <div class="item">
	                  <h4 class="text-serif font-weight-light text-white font-italic fs-1 fs-sm-2 mb-4">"With no writing of any CSS code &mdash; customize almost everything"</h4>
	                  <h6 class="fs-0 mb-0 text-white font-weight-black">Jane Dumas</h6>
	                  <h6 class="fs-0 mb-0 font-weight-normal text-400">developer</h6>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section class="text-center pb-4 inner" id="default-gallery" style="padding-top:7.5rem;padding-bottom:7.5rem !important;">
	        <div class="container">
	          <div class="row">
	            <div class="col-12 mb-5 mb-lg-7">
	              <h2 class="fs-3 fs-sm-4"><span class="text-underline">life@sparrow</span></h2>
	            </div>
	            <div class="col-6 col-lg-4 pb-4"><a href="/assets/img/detail/gallery/13-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/13.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4"><a href="/assets/img/detail/gallery/14-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/14.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4"><a href="/assets/img/detail/gallery/15-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/15.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4"><a href="/assets/img/detail/gallery/16-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/16.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4"><a href="/assets/img/detail/gallery/17-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/17.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4"><a href="/assets/img/detail/gallery/18-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/18.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4 pb-lg-0"><a href="/assets/img/detail/gallery/19-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/19.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4 pb-4 pb-sm-0"><a href="/assets/img/detail/gallery/20-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/20.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	            <div class="col-6 col-lg-4"><a href="/assets/img/detail/gallery/21-f.jpg" data-lightbox="image" data-title="your caption"><img class="rounded img-fluid" src="/assets/img/detail/gallery/21.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" /></a></div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section id="default-cta-3">
	        <div class="container">
	          <div class="row justify-content-center text-center">
	            <div class="col-lg-8">
	              <h2>start your career with us</h2>
	              <p class="px-lg-6 px-md-5">Join the highly talented group of artists, engineers, and imagineers.</p><a class="btn btn-outline-dark rounded-capsule mt-4" href="#">See Openings</a>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	    
	    <!--    End of Main Content-->
	    <!-- ===============================================-->
	
	
	    <!-- Cookie Notice-->
	    <div class="toast bg-dark text-white shadow-none notice" id="cookie-notice" role="alert" data-options='{"autoShow":false,"autoShowDelay":5000,"showOnce":true,"cookieExpireTime":7200000}' data-autohide="false" aria-live="assertive" aria-atomic="true">
	      <div class="toast-body p-4"><button class="close text-white text-shadow-none position-absolute t-0 r-0 p-2 mr-1 fs-1" type="button" data-dismiss="toast" aria-label="Close"><span aria-hidden="true">×</span></button>
	        <div class="media"><img class="mr-3" src="/assets/img/detail/icons/cookie-notice.png" width="50" alt="" />
	          <div class="media-body">
	            <p class="fs-0 ls text-sans-serif">Our site uses cookies. By continuing to use our site, you agree to our <a class="text-white text-underline" href="components/sparrow/cookie-notice.html">Cookie Policy.</a></p><button class="btn btn-outline-light btn-sm text-uppercase border-700" type="button" data-dismiss="toast" aria-label="Close">Ok, I understand</button>
	          </div>
	        </div>
	      </div>
	    </div>
	
	    <!--===============================================-->
	    <!--    Modal for language selection-->
	    <!--===============================================-->
	    <!-- Modal-->
	    <div class="modal fade fade-in" id="languageModal" tabindex="-1" role="dialog" aria-hidden="true">
	      <div class="modal-dialog modal-dialog-centered modal-xs mx-auto" role="document">
	        <div class="modal-content bg-black">
	          <div class="modal-body text-center p-0"><button class="close text-white position-absolute t-0 r-0 times-icon mt-2 mr-2 p-2" type="button" data-dismiss="modal" aria-label="Close"></button>
	            <ul class="list-unstyled pl-0 my-0 py-4 text-sans-serif">
	              <li><a class="text-white font-weight-bold pt-1 d-block" href="home-default.html">English</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Français</a></li>
	              <li><a class="text-500 pt-1 d-block" href="page-rtl.html">عربى</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Deutsche</a></li>
	            </ul>
	          </div>
	        </div>
	      </div>
	    </div>

            <footer class="page-footer">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/starter.jpg);background-position: 0 25%; transform: scale(1.1);">
              </div>
              <!--/.bg-holder-->

              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <!-- <div class="col-lg-6 text-lg-left">
                      <p class="fs--1 text-uppercase ls font-weight-bold mb-0">
                        Copyright &copy; 2018 Boots4&trade; inc.</p>
                    </div> -->
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0">
                      <!-- <p class="fs--1 text-uppercase ls font-weight-bold mb-0">Made with<span class="fas fa-heart mx-1"></span>by
                        <a class="text-light" href="https://themewagon.com/">Themewagon</a>
                      </p> -->
                    </div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/starter.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">Starter</h1>
            </div>
          </div>
        </div>
      </div>

      <!-- Docs  -->    
     <div class="page position-absolute t-0 w-100" id="locationAS">
        <div class="row no-gutters minh-100vh ">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-6 pt-lg-0">

			  <!-- 문의하기  -->
		      <!-- <section> begin ============================-->
	      <section class="py-0">
	        <div class="container-fluid">
	          <div class="row h-full border-bottom border-300">
	            <div class="col-lg-6 px-0 order-lg-2" data-zanim-lg='{"animation":"slide-left","delay":0.4}' data-zanim-trigger="scroll">
	              <div class="owl-carousel owl-theme owl-dots-inner owl-theme-white h-100" data-options='{"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true,"animateOut":"fadeOut","nav":true}' data-zanim-lg='{"animation":"zoom-out","delay":0}' data-zanim-trigger="scroll">
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/golden-header.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	              </div>
	            </div>
	            <div class="col-lg-6 bg-white py-7 py-md-8">
	              <div class="row align-items-center justify-content-center h-100">
	                <div class="col-lg-10 text-black text-center text-lg-left" data-zanim-timeline="{}" data-zanim-trigger="scroll">
	                  <div class="overflow-hidden">
	                    <h4 class="text-uppercase font-weight-normal ls text-white bg-dark p-1 rounded d-inline-block" data-zanim-xs='{"delay":0.1}'>THE &nbsp;COOLINIC</h4>
	                  </div>
	                  <div class="overflow-hidden">
	                    <h1 class="display-3 fs-5 fs-sm-6" data-zanim-xs='{"delay":0.2}'><span>제대로 된</span><br /><span class="font-weight-light">A/S 시스템</span></h1>
	                  </div>
	                  <div class="overflow-hidden">
	                    <p class="text-900 fs-0 mt-3 mt-md-5" data-zanim-xs='{"delay":0.3}'>
	                    #위치기반의 A/S 시스템<br/>
						#수리 비용 기준표<br/>
						#믿을수 있는 기술력
	                    </p>
	                  </div>
	                  <!-- <div class="overflow-hidden">
	                    <div class="d-lg-flex align-items-center font-weight-bold ls mt-3 mt-md-5 text-uppercase" data-zanim-xs='{"delay":0.4}'>
	                      <h6 class="mb-lg-0">Follow Us:</h6>
	                      <div class="overflow-hidden"><a class="mr-1 d-inline-block" href="#"><span class="fab fa-facebook text-dark mr-2 ml-3 fs-0"></span></a><a class="mr-1 d-inline-block" href="#"><span class="fab fa-twitter text-dark mr-2 fs-0"></span></a><a class="mr-1 d-inline-block" href="#"><span class="fab fa-google-plus-g text-dark fs-0"></span></a></div>
	                    </div>
	                  </div> -->
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <!-- <section class="bg-white py-6 py-md-8 inner" id="default-why-us">
	        <div class="container">
	          <div class="row align-items-center justify-content-center">
	            <div class="col-12 mb-2 mb-lg-5 text-center">
	              <h2 class="fs-3 fs-sm-4"><span>우리가 아니어도 괜찮아요.</span></h2>
	            </div>
	          </div>
	          <div class="row align-items-center justify-content-center">
	            <div class="col-sm-8 col-lg-4 text-lg-right mt-5 mt-lg-0 pr-lg-3 pr-xl-4">
	              <div class="overflow-hidden">
	                <h4 class="mb-3" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">전문분야의 파트너와 연결</h4>
	              </div>
	              <div class="overflow-hidden">
	                <p data-zanim-xs='{"delay":0.3}' data-zanim-trigger="scroll" style="font-size:0.9rem;">
	                파트너의 전문분야는 14가지로 분류되어 있고 검증을 거친 파트너와 A/S 연결됩니다.
	                </p>
	              </div>
	            </div>
	            <div class="col-sm-8 col-lg-4 mt-4 mt-lg-0 px-lg-4"><img class="w-100 rounded" src="/assets/img/detail/creative.jpg" alt="" data-zanim-xs='{"animation":"zoom-out","delay":0.1}' data-zanim-trigger="scroll" /></div>
	            <div class="col-sm-8 col-lg-4 mt-5 mt-lg-0 pl-lg-3 pl-xl-4">
	              <div class="overflow-hidden">
	                <h4 class="mb-3" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">시공 기록과 추적</h4>
	              </div>
	              <div class="overflow-hidden">
		              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll" style="margin-bottom:10%;">
		                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
		                <div class="media-body">
		                  <div class="overflow-hidden">
		                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>
		                    하지만, 어째서 수천만원 수억원의 가치가 보관되어 있는 콜드룸에는 긴급한 A/S 센터가 없을까요?
		                    </h4>
		                  </div>
		                  <div class="overflow-hidden">
		                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
		                    10년을 훌쩍 사용하는 콜드룸을 왜, 안심하고 사용할 수 없을까요?
		                    </p>
		                  </div>
		                </div>
		              </div>
		              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll" style="margin-bottom:10%;">
		                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
		                <div class="media-body">
		                  <div class="overflow-hidden">
		                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>
		                    우리는 모바일로 목마름을 채우는 시대에 살고 있습니다.
							</h4>
		                  </div>
		                  <div class="overflow-hidden">
		                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
		                    고장이 날 때마다, 매번 수리 업체를 찾아 전화를 반복하는 건 힘들죠.
		                    </p>
		                  </div>
		                </div>
		              </div>
		              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
		                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
		                <div class="media-body">
		                  <div class="overflow-hidden">
		                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>
		                    제품이 상하고 있는데 기다리라는 말은 왜이렇게 야속한거죠.
							</h4>
		                  </div>
		                  <div class="overflow-hidden">
		                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
							제대로 된 A/S 시스템이 필요합니다.
		                    </p>
		                  </div>
		                </div>
		              </div>
	                <p data-zanim-xs='{"delay":0.3}' data-zanim-trigger="scroll" style="font-size:0.9rem;">
	                앱내 시공 기록을 통하여 A/S발생 시 빠른 대응과 대처가 가능하도록 A/S를 연결합니다.
					</p>
	              </div>
	            </div>
	          </div>
	        </div>
	      </section> -->

	
      <!-- <section> begin ============================-->
      <section id="default-services">
        <div class="container">
          <div class="row justify-content-center inner" style="padding-bottom: 7.5rem;">
            <div class="col-12 mb-5 mb-md-7 text-center" style="margin-top: 7rem;">
              <h2 class="fs-3 fs-sm-4"><span>우리가 아니어도 괜찮아요.</span></h2>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>수천수억원의 가치가 있는 콜드룸이지만..</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    어째서 수천만원, 수억원의 가치가 보관되어 있는 콜드룸에는 긴급한 AS 센터가 없을까요.
					10년을 훌쩍 사용하는 콜드룸을 왜, 안심하고 사용할 수 없을까요.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-target.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>매번 수리 업체를 찾지만..</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    우리는 모바일로 목마름을 채우는 시대에 살고 있습니다.
					고장이 날 때마다, 매번 수리 업체를 찾아 전화를 반복하는 건 힘들죠.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/favorites-button.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>속은 타들어가고 있지만..</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    제품이 상하고 있는데 기다리라는 말은 왜이렇게 야속한거죠.
					제대로 된 A/S 시스템이 필요합니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"></div>
                <div class="media-body">
                </div>
              </div>
            </div>
            
          </div>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->
	
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section class="border-top border-300" id="default-process">
	        <div class="container">
	           <div class="row justify-content-center text-center mb-6">
	            <div class="col-lg-6" style="margin-top: 7rem;">
	              <h2 class="fs-3 fs-sm-4 mb-3">쿨리닉 울타리 안에서<br/>안심하세요.</h2>
<!-- 	              <p class="text-500 font-italic"></p> -->
	              <hr class="hr-short mt-5 border-300" />
	            </div>
	          </div>
	          <div class="row inner">
	            <div class="col-12 pl-lg-7">
	              <div class="row align-items-end">
	                <div class="col-lg-6 order-lg-2 text-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-01.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 pb-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">01</span>
	                    <h3>상품의 가치를 지키는 A/S 로켓 매칭</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    고장으로 인해 보관 제품이 상하는 일은 상상하고 싶지 않습니다.
	                    <br/><br/>
	                    <h4>쿨리닉의 A/S 시스템</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						요청 즉시 고객과 가까운 전문가를 연결하고,
						반경 50km 내의 전문가(파트너)를 모바일 APP으로 호출합니다.
						<br/>
						<br/>
	                    긴급 건은 통상 2시간 이내, 평균 도착시간은 1시간 29분이고,
	                   	일정 조율 건은 통상 익일, 또는 조율이 가능합니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-8">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">02</span>
	                    <h3>약은 약사에게, 14가지의 전문분야 파트너</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    내과와 외과가 다르듯 전문분야는 명확합니다.<br/>
	                    치료가 가능하나 미숙할 수 밖에요.
	                    <br/><br/>
	                    <h4>14가지의 전문분야</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						파트너는 14가지의 전문분야로 나뉘며, 콜드룸, 냉각기, 공조기 등 전문분야에 맞는 엔지니어만을 호출합니다.
						<br/><br/>
						소위 “척”하지 않는 진짜 전문가 쿨리닉 파트너 입니다.
	                    </a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">03</span>
	                    <h3>흔들리지 않는 편안함, 수리의 기준 CPL</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    기준 없이 즉흥적으로 책정되는 수리비용은 없습니다.
	                    <br/><br/>
	                    <h4>수리 단가표 CPL(Coolinic Price List)</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						CPL에 따라서 비용을 책정하고 2만여개의 부품과 수리 유형, 공임으로 수리 비용이 산정되어 있습니다.
						<br/><br/>
						모든 수리비용은 CPL을 기준으로 청구되며, 카드결제 등 모든 결제 방식을 지원합니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8" style="margin-bottom: 7.5rem !important;">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">04</span>
	                    <h3>쿨리닉이 고객을 보호하는 방법</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    수리에 관한 보고서는 본사 기술팀에서 모니터링 됩니다. 
	                    <br/><br/>
	                    수리절차와 과정, 수리결과에 대한 <b>모범이 되는 파트너는 대표파트너로 상향</b>됩니다.
	                    <br/><br/> 
	                    하지만 보고서 불량, 오수리, 과잉수리, 과잉청구 등으로 판단되는 파트너는 
	                    조정 위원회를 통해 <b>3회의 누적 경고 이후 파트너 자격이 박탈됩니다.</b>
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">05</span>
	                    <h3>6인의 콜드매니저</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    쿨리닉의 내 6인 콜드매니저는 콜드룸 시공 감리, 전담기업 유지보수, 
	                    난이도 높은 고장 수리, 파트너의 지원요청 등 의 일을 합니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row" style="margin-bottom:7.5rem;">
	                <div class="col-lg-6 border-lg-right border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8" style="margin-bottom: 7.5rem !important;">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">06</span>
	                    <h3>파트너, 어떻게 선정 되나요?</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    <h4>첫째. 증빙서류 제출</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    사업자 등록증과 기술력을 증빙할 수 있는 서류들과 함께 
	                    냉동 공조 전문가는 쿨리닉 파트너로 승인 요청을 합니다.
	                    <br/><br/>
	                    <h4>둘째. 전문분야 등록</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						전문분야와 자격증 유무, 지역, 활동 시간 등 절차를 거쳐 파트너 승인 요청을 합니다.
						<br/><br/>
	                    <h4>셋째. 승인 후 파트너 활동</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						14가지로 분류되어 있고, 활동이 가능한 시간 등 조금은 까다로운 가입 절차를 거쳐
						승인팀의 승인 후 파트너 활동이 가능합니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->

	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <!-- <section class="text-center inner" id="default-progressbar" style="padding-top:7.5rem;padding-bottom:7.5rem;">
	        <div class="container">
	          <div class="row justify-content-center">
	            <div class="col-md-6">
	              <h2 class="fs-3 fs-sm-4 text-underline mb-3">Checkmate</h2>
	              <p>
	              쿨리닉은 냉동공조 산업의 시스템을 만들어 갑니다.
	              </p>
	            </div>
	          </div>
	        </div>
	      </section> -->
	      
	    <!--===============================================-->
	    <!--    Modal for language selection-->
	    <!--===============================================-->
	    <!-- Modal-->
	    <div class="modal fade fade-in" id="languageModal" tabindex="-1" role="dialog" aria-hidden="true">
	      <div class="modal-dialog modal-dialog-centered modal-xs mx-auto" role="document">
	        <div class="modal-content bg-black">
	          <div class="modal-body text-center p-0"><button class="close text-white position-absolute t-0 r-0 times-icon mt-2 mr-2 p-2" type="button" data-dismiss="modal" aria-label="Close"></button>
	            <ul class="list-unstyled pl-0 my-0 py-4 text-sans-serif">
	              <li><a class="text-white font-weight-bold pt-1 d-block" href="home-default.html">English</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Français</a></li>
	              <li><a class="text-500 pt-1 d-block" href="page-rtl.html">عربى</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Deutsche</a></li>
	            </ul>
	          </div>
	        </div>
	      </div>
	    </div>

            <footer class="page-footer" style="z-index:9998;">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/docs.jpg);background-position: 0 19%; transform: scale(1.1);"></div>
              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <!-- <div class="col-lg-6 text-lg-left">
                      <p class="fs--1 text-uppercase ls font-weight-bold mb-0">
                        Copyright &copy; 2018 Boots4&trade; inc.</p>
                    </div>
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0">
                      <p class="fs--1 text-uppercase ls font-weight-bold mb-0">Made with<span class="fas fa-heart mx-1"></span>by
                        <a class="text-light" href="https://themewagon.com/">Themewagon</a>
                      </p>
                    </div> -->
                  </div>
                </div>
              </div>
            </footer>
          </div>
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/docs.jpg);">
              </div>
              <h1 class="page-title">위치기반 A/S</h1>
            </div>
          </div>
        </div>
      </div>
      
      <div id="loading" style="margin-left: 0px;">
	    <img src="/assets/img/lodding.gif">
	    <p style="color:#fff;">견적서 산출 중 입니다. 잠시 기다려주세요.</p>
	  </div>
    </main>

	<script>
		$('#loading').hide();
	</script>
	<script src="/assets/js/detail/jquery.min.js"></script>
    <script src="/assets/js/bootstrap.js"></script>
    <script src="/assets/js/plugins.js"></script>
    <script src="/assets/lib/loaders.css/loaders.css.js"></script>
    <script src="/assets/js/stickyfill.min.js"></script>
    <script src="/assets/lib/detail/is_js/is.min.js"></script>
    <script src="/assets/lib/jtap/jquery.tap.js"></script>
    <script src="/assets/js/detail/rellax.min.js"></script>
    <script src="/assets/lib/fancybox/jquery.fancybox.min.js"></script>
    <script src="/assets/lib/owl.carousel/owl.carousel.js"></script>
    <script src="/assets/lib/lightbox2/js/lightbox.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.6.15/browser-polyfill.min.js"></script>
    <script src="/assets/js/detail/progressbar.min.js"></script>
    <script src="/assets/js/detail/comm_detail.js"></script>
    <script src="/assets/js/theme.js"></script>
	<script src="/assets/js/main/slides.min.js"></script>
	<script src="/assets/js/slides.js"></script>
	<script src="/assets/js/main/swiper.min.js"></script>
  </body>
  <iframe name='blankifr' style='display:none;'></iframe>

</html>