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
    <style>
    * {
    	font-family: 'MaplestoryOTFLight' !important;
    }
	@font-face {
	    font-family: 'MaplestoryOTFLight';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFLight.woff') format('woff');
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
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="warranty">
                <div class="bg-holder" id="bg-holder-3years">
                </div>
              </div>
              <!-- <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="as">
                <div class="bg-holder" id="bg-holder-as">
                </div>
              </div> -->
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="goldenTimeAS">
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
      <section class="border-top border-bottom border-300 bg-light" id="digital-about">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-7"><img class="img-fluid" src="/assets/img/detail/illustration/golden.jpg" alt="" /></div>
            <div class="col-md-4 ml-auto">
              <h3 class="mb-3"><span class="font-weight-extra-bold">쿨리닉은!</span></h3>
              <p class="text-sans-serif">냉동공조 산업영역에 <span class="font-weight-extra-bold">시스템을</span> 더합니다<br/>일반적인 시공에 <span class="font-weight-extra-bold">차별화 된 사후관리를</span> 더합니다<br/>보수적인 불변의 시장에 <span class="font-weight-extra-bold">혁신의 스마트함을</span> 더합니다</p>
              <!-- <div class="row mt-4">
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
              </div><a class="btn btn-outline-danger mt-6" href="#">&xrarr; learn more about us</a> -->
            </div>
          </div>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->



      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="text-center text-sans-serif" id="digital-features-1" style="padding-top:7.5rem;pdding-bottom:7.5rem;">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-9">
              <h2 style="font-size:1.9rem;">쿨리닉만의 독보적인 시스템</h2>
              <p class="lead mb-0">시스템을 개발하고 독보적인 서비스를 제공합니다</p>
            </div>
          </div>
          <div class="row mt-6 justify-content-center">
            <div class="col-sm-6 col-lg-2 mb-4">
              <div class="h-100 border border-300 justify-content-between d-flex flex-column rounded"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-02.svg" alt="" data-zanim-xs='{"delay":0.1,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h5 class="py-3 mb-0 bg-light">A.I. 자동견적 시스템</h5><br/>
                <p style="font-size:12px;">
				원하는 조건들을 체크하세요.<br/>즉시 콜드스토리지의 견적을<br/>확인할 수 있습니다.</p>
              </div>
            </div>
            <div class="col-sm-6 col-lg-2 mb-4">
              <div class="h-100 border border-300 justify-content-between d-flex flex-column rounded"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-03.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h5 class="py-3 mb-0 bg-light">냉동기 주민번호 RMS</h5><br/>
                <p style="font-size:12px;">
				RMS는 냉동기의 정보, 시공이력,<br/> 점검 수리 이력 등 모든 정보를<br/>추적하고 관리합니다.</p>
              </div>
            </div>
            <div class="col-sm-6 col-lg-2 mb-4">
              <div class="h-100 border border-300 justify-content-between d-flex flex-column rounded"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-04.svg" alt="" data-zanim-xs='{"delay":0.3,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h5 class="py-3 mb-0 bg-light">위치기반 A/S 쿨리닉</h5><br/>
                <p style="font-size:12px;">
				119와 같이 빠른 대응을 위해<br/>위치기반으로 가까운 엔지니어가<br/>빠르게 대응합니다.</p>
              </div>
            </div>
            <div class="col-sm-6 col-lg-2 mb-4">
              <div class="h-100 border border-300 justify-content-between d-flex flex-column rounded"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-05.svg" alt="" data-zanim-xs='{"delay":0.4,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h5 class="py-3 mb-0 bg-light">A/S 기준 단가표</h5>
                <br/>
                <p style="font-size:12px;">
				쿨리닉은 고장수리 기준표<br/> “AS 시트” 를 제공합니다.<br/>이제 덤터기에 대해 안심하세요.</p>
              </div>
            </div>
            <div class="col-sm-6 col-lg-2 mb-4">
              <div class="h-100 border border-300 justify-content-between d-flex flex-column rounded"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-05.svg" alt="" data-zanim-xs='{"delay":0.4,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h5 class="py-3 mb-0 bg-light">유형별 사후관리 시스템</h5>
                <br/>
                <p style="font-size:12px;">
				쿨리닉케어는 철저하게<br/>관리 시스템 안에서 냉동기를<br/>체계적으로 관리합니다.</p>
              </div>
            </div>
          </div>
          <!-- <div class="row mt-7 text-left inner">
            <div class="col-sm-6 col-lg-4 pr-sm-5" data-zanim-timeline='{"delay":0}' data-zanim-trigger="scroll">
              <div class="media text-sans-serif"><span class="mr-3 fs-3 far fa-share-square" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'></span>
                <div class="media-body overflow-hidden">
                  <h6 class="ls text-uppercase" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Local Search Strategy</h6>
                  <p data-zanim-xs='{"delay":0.3,"animation":"slide-right"}'>Maximize your presence on search engine results pages on a local scale.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 pr-sm-5 mt-4 mt-sm-0" data-zanim-timeline='{"delay":0.1}' data-zanim-trigger="scroll">
              <div class="media text-sans-serif"><span class="mr-3 fs-3 far fa-map" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'></span>
                <div class="media-body overflow-hidden">
                  <h6 class="ls text-uppercase" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Maps Listing Optimization</h6>
                  <p data-zanim-xs='{"delay":0.3,"animation":"slide-right"}'>Google Maps Optimization is the centerpiece of an effective local marketing strategy.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 pr-sm-5 mt-4 mt-lg-0" data-zanim-timeline='{"delay":0.2}' data-zanim-trigger="scroll">
              <div class="media text-sans-serif"><span class="mr-3 fs-3 far fa-check-square" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'></span>
                <div class="media-body overflow-hidden">
                  <h6 class="ls text-uppercase" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Link Building &amp; Content</h6>
                  <p data-zanim-xs='{"delay":0.3,"animation":"slide-right"}'>Link building is and will continue to be a tremendously important component of Search Engine Optimization (SEO).</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 pr-sm-5 mt-4" data-zanim-timeline='{"delay":0.3}' data-zanim-trigger="scroll">
              <div class="media text-sans-serif"><span class="mr-3 fs-3 far fa-chart-bar" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'></span>
                <div class="media-body overflow-hidden">
                  <h6 class="ls text-uppercase" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Paid Search Advertising</h6>
                  <p data-zanim-xs='{"delay":0.3,"animation":"slide-right"}'>Paid listings on Google AdWords and Bing Ads can help you reach new customers and grow your business.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 pr-sm-5 mt-4" data-zanim-timeline='{"delay":0.4}' data-zanim-trigger="scroll">
              <div class="media text-sans-serif"><span class="mr-3 fs-3 far fa-object-ungroup" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'></span>
                <div class="media-body overflow-hidden">
                  <h6 class="ls text-uppercase" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Custom Website Design</h6>
                  <p data-zanim-xs='{"delay":0.3,"animation":"slide-right"}'>Our team specializes in affordable web design and e-commerce solutions.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 pr-sm-5 mt-4" data-zanim-timeline='{"delay":0.5}' data-zanim-trigger="scroll">
              <div class="media text-sans-serif"><span class="mr-3 fs-3 far fa-envelope-open" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'></span>
                <div class="media-body overflow-hidden">
                  <h6 class="ls text-uppercase" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Creative Email Newsletters</h6>
                  <p data-zanim-xs='{"delay":0.3,"animation":"slide-right"}'>Email templates designed and written specifically for your customers' needs and interests.</p>
                </div>
              </div>
            </div>
            <div class="col-12 text-center mt-6"><a class="btn btn-danger" href="#"><span class="fas fa-paper-plane mr-3" data-fa-transform="grow-8"></span>Request a free quote</a></div>
          </div> -->
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->



      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="py-0 overflow-hidden" id="digital-we-do">
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
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->

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
              <p>#콜드룸 전문 브랜드<br/>#콜드체인 솔루션</p>
            </div>
            <div class="col-md-6 col-lg-4 pr-lg-6 ml-lg-auto mt-6 mt-lg-0">
              <h4 class="mb-3">Find us</h4>
              <address>Sparrow Interactive Pte. Ltd.<br />50 Ubi Avenue 3, #04-05 Frontier ePark@Ubi<br />Singapore 408866</address>
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
      
      <div class="page position-absolute t-0 w-100" id="warranty">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-6 pt-lg-0" style="padding-bottom:0;padding-top: 0 !important;">

		      <!-- 3년의 워런티 -->
		      <!-- <section> begin ============================-->
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
		                      <h1 class="text-underline fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll">
		                      3가지 point.
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
		                  <div><!-- class="mb-5" -->
		                    <div class="overflow-hidden">
		                      <blockquote class="blockquote text-center my-6 border p-5 px-xl-7 border-300 rounded" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">
			                    <p class="blockquote-content" style="font-size:1.9rem;">
			                    A/S 스트레스 없는 안전한 콜드룸
			                    </p>
			                  </blockquote>
		                    </div>
		                  </div>
		                  <p class="dropcap" data-zanim-xs='{"delay":0.5}' data-zanim-trigger="scroll">
		                  <h4 class="fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll" style="font-size:1.5rem;">
		                      오랜 사용을 목적으로<br/>A/S에 용의한 콜드룸을 만듭니다.
		                  </h4><br/>
		                  
		                  왜냐하면 콜드룸은 10년 이상을 사용하는 위한 자산이거든요. 
						  그래서 저희 콜드룸 설계팀은 지속적이고 안정적인 사용성에 최우선 순위를 두고 
						  고장이 났을때 잘 대응할 수 있는 즉, 사후관리에 최적화된 콜드룸을 만들고 있습니다.
		                  </p>
		                  <div class="row mt-5">
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/about-02.jpg" alt="" data-zanim-xs='{"delay":0.6,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/about-01.jpg" alt="" data-zanim-xs='{"delay":0.7,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                  </div>
		                  
		                  <!-- 이력추적으로 관리된다 -->
		                  <div><!-- class="mb-5" -->
		                    <div class="overflow-hidden">
		                      <blockquote class="blockquote text-center my-6 border p-5 px-xl-7 border-300 rounded" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">
			                    <p class="blockquote-content" style="font-size:1.9rem;">
			                    기억력 좋은 똑똑한 콜드룸
			                    </p>
			                  </blockquote>
		                    </div>
		                  </div>
		                  <p class="dropcap" data-zanim-xs='{"delay":0.5}' data-zanim-trigger="scroll">
		                  <h4 class="fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll" style="font-size:1.5rem;">
		                      언제가 될지 모르는 한번을 위해 모두를 기록합니다.
		                  </h4><br/>
		                  
		                    병원에서 우리의 병력을 기록하고 관리하듯 RMS는 냉동기의 모든 이력을 기록하고 보관합니다.
							기약없는 냉동기 고장의 빠른 대응을 위해 RMS는 콜드룸의 모든 이력을 기록하고 보관합니다.
							콜드룸의 모든 정보를 파악하는데 필요한 시간은, 단 1분 입니다.
							현장에서 확인할수 밖에 없었던 콜드룸의 정보는 어디서든 단 1분이면 확인할 수 있습니다.
		                  </p>
		                  <div class="row mt-5">
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/about-02.jpg" alt="" data-zanim-xs='{"delay":0.6,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/about-01.jpg" alt="" data-zanim-xs='{"delay":0.7,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                  </div>
		                  
		                  <!-- 2배의 보증기간 -->
		                  <div><!-- class="mb-5" -->
		                    <div class="overflow-hidden">
		                      <blockquote class="blockquote text-center my-6 border p-5 px-xl-7 border-300 rounded" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">
			                    <p class="blockquote-content" style="font-size:1.9rem;">
			                    더 안심할수 있도록,<br/>1년 보다는 2년
			                    </p>
			                  </blockquote>
		                    </div>
		                  </div>
		                  <p class="dropcap" data-zanim-xs='{"delay":0.5}' data-zanim-trigger="scroll">
		                  <h4 class="fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll" style="font-size:1.5rem;">
		                      책임감은 자신감으로부터, 국내 최대 워런티를 보장합니다
		                  </h4><br/>
		                  
		                  새것은 고장나지 않아요. 냉동기 고장은 데미지의 누적이고 새 제품은 생각보다 데미지를 잘 견딥니다.
					      쿨리닉의 콜드룸은 대한민국 유일하게 2년의 워런티를 보장합니다. 
						  불가능을 가능하게 한 관리 솔루션, 위치기반의 AS 시스템과 같은 대체불가능한 기술력에 대한 자신감 입니다.
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
	              <h2 class="fs-3 fs-sm-4"><span class="text-underline">RMS</span></h2>
	            </div>
	          </div>
	          <div class="row align-items-center justify-content-center">
	            <div class="col-sm-8 col-lg-4 text-lg-right mt-5 mt-lg-0 pr-lg-3 pr-xl-4">
	              <div class="overflow-hidden">
	                <h4 class="mb-3" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">모든 이력기록</h4>
	              </div>
	              <div class="overflow-hidden">
	                <p data-zanim-xs='{"delay":0.3}' data-zanim-trigger="scroll">
	                RMS는 냉동기와 콜드룸에 부여되는 주민번호와 같은 고유번호 시스템 입니다.
					병원에 가면 병력을 기록하고 관리하듯, 냉동기의 모든 이력을 추적하고 관리합니다.
	                </p>
	              </div>
	            </div>
	            <div class="col-sm-8 col-lg-4 mt-4 mt-lg-0 px-lg-4"><img class="w-100 rounded" src="/assets/img/detail/creative.jpg" alt="" data-zanim-xs='{"animation":"zoom-out","delay":0.1}' data-zanim-trigger="scroll" /></div>
	            <div class="col-sm-8 col-lg-4 mt-5 mt-lg-0 pl-lg-3 pl-xl-4">
	              <div class="overflow-hidden">
	                <h4 class="mb-3" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">걱정없는 사후관리</h4>
	              </div>
	              <div class="overflow-hidden">
	                <p data-zanim-xs='{"delay":0.3}' data-zanim-trigger="scroll">
	                이력 정보는 관리를 쉽게하고, 문제 발생 시 빠른 대응을 가능하게 합니다.
					다수의 냉동기를 운용하는 기업의 냉동기 관리를 위한 시스템입니다.
	                </p>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	 <section class="py-0 inner" id="default-cta-1">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay rounded" style="" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	            <!--/.bg-holder--><!-- background-image:url(/assets/img/detail/headers/header-16.jpg); -->
	          </div>
	          <div class="row justify-content-center text-center py-7">
	            <div class="col-lg-9 px-4">
	            
	            
	        <div class="col-12 mb-5 mb-md-7 text-center">
              <h2 class="fs-3 fs-sm-4"><span class="text-underline">이렇게 사용해요.</span></h2>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>스캔 & 선택</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>RMS를 스캔하거나, PC에서 콜드룸을 선택해서 A/S를 요청할 수 있습니다.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-target.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>점검 내역 & 수리 이력 활용</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>점검 내역, 수리 이력 등 냉동기와 콜드룸의 정보를 관리에 활용할 수 있습니다.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/favorites-button.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>옵션 & 통합 솔루션</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>온도 모니터링 / 인공지능 제상 시스템 옵션을 통해 통합 솔루션을 이용할 수도 있습니다</p>
                  </div>
                </div>
              </div>
            </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	
      <!-- <section> begin ============================-->
      <section id="default-services">
        <div class="container">
          <div class="row justify-content-center inner" style="padding-bottom: 7.5rem;">
            <div class="col-12 mb-5 mb-md-7 text-center" style="margin-top: 7rem;">
              <h2 class="fs-3 fs-sm-4"><span class="text-underline">콜드룸의 관리.</span></h2>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>주문사양, 기억하기 어려워요</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    냉동기와 콜드룸은 주문생산으로 이루어 지기 때문에 외형은 비슷해도 옵션은 모두 다릅니다. 
                    판매자도 구매자도 주문제작된 사양을 기억하지 못합니다.
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
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>기존 수리이력, 잘 모르겠어요</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    고장과 수리를 반복하는 특성상 초기의 옵션이 그대로 유지되는 경우도 없습니다.
					지속적으로 바뀌고, 수정됩니다. 관리자도 바뀌고, 공무팀도 바뀝니다.
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
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>노후 된 냉동기의 관리는?</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    10년 이상을 사용하는 냉동기가 수십대라면, 과연 관리가 가능할까요?
					공무팀과 관리자가, 냉동기를 관리할 수 있을까요?
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-line-chart.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>RMS가 데이터화 &amp; 깔끔하게 보관해요</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    RMS는 냉동기가 어떤 부품으로 구성되고 어떤 옵션으로 제작 되었는지의 세부정보, 
                    또 콜드룸의 사이즈, 사용온도 등의 정보들까지 데이터화 하여 보관합니다. 
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4 mb-lg-0">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/multi-purpose.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>RMS 스캔으로 변경사항을 지속 업데이트 해요</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    점검 또는 고장 시 수리내용, 옵션의 변화 등은 냉동기에 부착된 RMS를 스캔하여 수리기사가 지속적으로 업데이트 합니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-coding.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>냉동기의 모든 관리는, RMS로 부터</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    아무런 정보가 없는 냉동기의 수리를 요청하는 일.
					모든 이력 정보가 보관 된 냉동기 수리를 요청하는 일.
					과연 어떤 경우에 시간과 비용이 절감될까요.
					체계적인 냉동기의 관리가 이제는 가능합니다.
                    </p>
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
	              <h2 class="fs-3 fs-sm-4 text-underline mb-3">RMS 개발 배경</h2>
	              <p class="px-lg-6 px-md-5">
	                기업의 경우 대부분의 냉동기와 콜드룸은 멀리 떨어져 있습니다.<br/>
					어떤 냉동기와 어떤 콜드룸이 짝인지도 모르는 현장이 대부분 입니다.<br/>
					A/S에는 어쩔수 없이 소비되는 시간이 있습니다.<br/>
	              </p>
	              <hr class="hr-short mt-5 border-300" />
	            </div>
	          </div>
	          <div class="row inner">
	            <div class="col-12 pl-lg-7" style="padding-bottom: 7.5rem;">
	              <div class="row align-items-end">
	                <div class="col-lg-6 order-lg-2 text-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-01.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 pb-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">01</span>
	                    <h3>미리 정보 확인 불가 & 도착 후 파악 시간 소요</h3>
	                    <p>
	                    아무런 정보가 없어, 현장에 도착해서나 파악할수 있는 냉동기의 정보를 파악하는 시간.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-8">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">02</span>
	                    <h3>지난 고장 이력 확인 시간 소요</h3>
	                    <p>
	                    냉동기의 지난 고장 이력에 대해 관리자의 기억에 의존해 확인하는 시간.
	                    </a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">03</span>
	                    <h3>부속가게 확인 등 수배시간 소요</h3>
	                    <p>
	                    수리를 위한 부품을 확인하고 근처의 부속가게가 있는지 확인과 없는 경우 A/S가 딜레이 되는 시간.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row overflow-hidden pb-1">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">04</span>
	                    <h3>하루 두번 이동 시간 소요</h3>
	                    <p>
	                    부품 수배후 현장에 재 방문하는 시간.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-300 border-lg-bottom py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">05</span>
	                    <h3>소요시간을 데이터화</h3>
	                    <p>
	                    수리를 위해 정보를 취득해야 하는 시간은 꼭 필요하지만 이 시간은 짧지 않고 모두를 힘들게 합니다.
	                    <br><br>
	                    현장에 가지 않고 제품의 모든 정보를 파악할 수 있다면.
						냉동기의 히스토리를 오염없이 확인할 수 있다면.
						사용된 부품과 구성을 미리 알수 있다면.
						버려지는 시간을 아낄 수 있다고 생각했습니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row overflow-hidden pb-1">
	                <div class="col-lg-6 border-lg-right border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">06</span>
	                    <h3>RMS 개발</h3>
	                    <p>
	                    그렇게 개발 되었고, 재 방문 횟수는 42%, 수리시간은 39% 절감되었습니다.
	                    </p>
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
	      <section class="overflow-hidden py-0" id="default-cta-2">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay overlay-2 rounded" style="background-image:url(/assets/img/detail/headers/header-47.jpg);" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	            <!--/.bg-holder-->
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
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
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
     <div class="page position-absolute t-0 w-100" id="goldenTimeAS">
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
	              <h2 class="fs-3 fs-sm-4"><span class="text-underline">A/S를 잇-다</span></h2>
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
	                <p data-zanim-xs='{"delay":0.3}' data-zanim-trigger="scroll" style="font-size:0.9rem;">
	                앱내 시공 기록을 통하여 A/S발생 시 빠른 대응과 대처가 가능하도록 A/S를 연결합니다.
					</p>
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
	              <h3 class="fs-2 fs-sm-3 text-white">FAST & CHECK</h3>
	              <p class="lead text-400 px-lg-7">
	              빠른 매칭과 미리 정보를 확인해 A/S 시간을 2배 단축시킵니다.
	              </p>
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
              <h2 class="fs-3 fs-sm-4"><span class="text-underline">냉동기 A/S, 왜 불편할까?</span></h2>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>첫째, 브랜드가 없습니다</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    대부분 사람들이 삼성이나 LG에서 제품을
					구매하면서 고장에 대한 걱정을 하지는 않습니다.
					워런티의 보증 기간과, 무상이냐 유상이냐의
					차이만 있을 뿐이죠. 이것이 브랜드의 힘입니다.
					하지만 콜드룸 설비에는 전문 브랜드가 없습니다.
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
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>둘째, 현실적으로 불가능 합니다</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    그 어떤 대기업도 A/S를 모두 직접 처리할 수 없습니다.
					심지어 콜드룸 설비업체는 1~2인의 소규모 업체가 95% 입니다.
					현실적으로 A/S 전담 부서를 운용하기에는 무리가 있습니다.
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
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>셋째, A/S는 소위 돈이 되지 않습니다</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    대부분의 콜드룸 설비업체는 신규설비에
					집중합니다. 워런티는 신규설비에 따라붙는
					꼬리표와 같아서 책임의 의무가 있으나 워런티
					기간이 지나면 책임과 의무가 사라집니다.
					책임과 의무가 사라진 고장 수리는 고객을
					만족시킬 만큼 빠르지 못합니다.
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
	              <h2 class="fs-3 fs-sm-4 text-underline mb-3">A/S Q&A</h2>
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
	                    <h3>어떻게 위치기반 A/S가 가능한가요?</h3>
	                    <p>
	                    대한민국에는 기술력이 뛰어난 훌륭한 냉동기 엔지니어가 많이 있습니다.<br>
						쿨리닉은 좋은 엔지니어들(쿨리닉 파트너)과 함께 합니다. 
						콜센터 / 챗봇 / 모바일 앱 쿨리닉을 통해 접수 된 A/S는<br/>
						위치기반으로 A/S가 발생 된 위치에서 가깝고,<br/>
						전문분야가 일치하는 파트너에게 알림을 보냅니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-8">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">02</span>
	                    <h3>시간은 얼마나 걸리나요?</h3>
	                    <p>
	                    접수단계에서 AS의 형태는 긴급의 건과, 일정 조율의 건으로 나누어 집니다.<br/>
						긴급의 건은 즉시 출동 가능한 파트너들이 매칭이 되며, <br/>
						평균 2시간 이내 현장에 도착합니다.<br/>
						일정 조율건은 통상 익일 AS가 이루어지며, 매칭된 파트너와 일정을 조율할 수 있습니다.
	                    </a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">03</span>
	                    <h3>수리비용은 어떻게 산정되나요?</h3>
	                    <p>
	                    쿨리닉은 2만여개의 부품과 파트너 인건비용이 산정되어
						있습니다. 수리 환경의 악조건, 위험성의 요인들로 인한<br/>
						수리비용 증액 또는 많은 양의 수리로 인한 소위 
						대량 할인 등이 고려되기도 합니다. 이는 모두 파트너 앱과,
						고객의 앱에서 카드결제, 또는 쿨리닉 본사와의 직접 결제를 통해 이루어 집니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8" style="margin-bottom: 7.5rem !important;">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">04</span>
	                    <h3>파트너는 어떻게 선정되나요?</h3>
	                    <p>
	                    파트너를 희망하는 냉동기 엔지니어들은 쿨리닉 파트너로 사업자 등록증과 기술력을 증빙할 수 있는 서류들과 함께승인 요청을 합니다.<br/>
						파트너의 전문분야는 14가지로 분류되어 있고 활동이 가능한 시간 등의 조금은 까다로운 가입 절차를 거칩니다.
						<br/><br/>
						
						이후 쿨리닉의 비대면 교육 이수 후 파트너로 승인 됩니다.
						수리에 관한 보고서는 본사 기술팀에서 모니터링 됩니다. 수리절차와 과정, 수리결과에 대한 모범이 되는 파트너는
						대표파트너로 상향되고, 보고서 불량, 오수리, 과잉수리, 과잉청구 등으로
						판단되는 파트너는 조정위원회를 통해 3회의 누적 경고 이후 파트너 자격이 박탈됩니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row" style="margin-bottom:7.5rem;">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">05</span>
	                    <h3>쿨리닉에 소속된 엔지니어는 없나요?</h3>
	                    <p>
	                    쿨리닉 내부에는 총 6인 콜드매니저가 있습니다.<br/>
	                    콜드룸 시공 감리, 전담기업 유지보수, 난이도 높은 고장 수리, 파트너의 지원요청 등의 일을 합니다.
	                    </p>
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