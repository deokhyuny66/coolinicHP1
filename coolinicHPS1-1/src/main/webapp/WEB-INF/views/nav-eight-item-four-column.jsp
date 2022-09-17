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
	@font-face {
	    font-family: 'OTWelcomeBA';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeBA.woff2') format('woff2');
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
				alert("b");
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
                <h1 class="text-white fs-2 fs-sm-4 fs-xl-5 display-4" style="font-family: 'OTWelcomeBA';src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeBA.woff2') format('woff2');sfont-weight: 700; font-style: normal;line-height: 1.2;">저온 설비가 필요할 땐<br/>AI 자동 견적.</h1>
                <h5 class="fs-0 fs-sm-1 mt-3 mt-md-5 text-white"></h5>
              </div>
            </div>
          </div>
          <div class="position-relative w-lg-50 position-lg-fixed undefined" id="gridNav">
            <div class="row h-lg-100vh">
              <div class="col-6 col-sm-3 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="about">
                <div class="bg-holder" id="bg-holder-about">
                </div><!-- 회사소개 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-3 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="service">
                <div class="bg-holder" id="bg-holder-ai">	
                </div><!-- AI 자동견적 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-3 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="portfolio">
                <div class="bg-holder" id="bg-holder-3years">
                </div><!-- 3년의 워런티 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-3 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="gallery">
                <div class="bg-holder" id="bg-holder-as">
                </div><!-- A/S요청 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-3 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="docs">
                <div class="bg-holder" id="bg-holder-contact"">
                </div><!-- 문의하기 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-3 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="faq">
                <div class="bg-holder" id="bg-holder-rms">
                </div><!-- RMS 이력추적 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-3 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="contact">
                <div class="bg-holder" id="bg-holder-ads">
                </div><!-- ADS  -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-3 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="starter">
                <div class="bg-holder" id="bg-holder-integration">
                </div><!-- 통합관리솔루션 -->
                <!--/.bg-holder-->
              </div>
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
        <div class="bg-holder overlay digital-header overlay-1" style="background-image:url(/assets/img/detail/headers/header-digital.jpg);" data-zanim-xs='{"delay":0,"animation":"zoom-out"}' data-zanim-trigger="scroll"></div>
        <!--/.bg-holder-->
        <div class="container">
          <div class="row min-vh-100 align-items-center py-8 justify-content-center text-center">
            <div class="col-lg-8 col-xl-7" data-zanim-timeline="{}" data-zanim-trigger="scroll">
              <h1 class="fs-3 fs-sm-4 fs-md-5 text-white parallax display-4" data-rellax-speed="4"><span class="overflow-hidden d-block"><span class="d-inline-block font-weight-black" data-zanim-xs='{"delay":0.1}'>we have built</span></span><span class="overflow-hidden d-block"><span class="d-inline-block text-uppercase d-block py-1" data-zanim-xs='{"delay":0.2}'>3250+ websites</span></span><span class="overflow-hidden d-block"><span class="d-inline-block font-weight-black text-underline mb-1" data-zanim-xs='{"delay":0.3}'>that get results</span></span></h1>
              <div class="overflow-hidden parallax" data-rellax-speed="3">
                <h3 class="mt-3 mt-sm-4 mt-md-5 mb-4 text-300 font-weight-normal" data-zanim-xs='{"delay":0.4}'>award-winning digital marketing<br class="d-none d-sm-block" />agency in Singapore</h3>
              </div>
            </div>
          </div><a class="indicator indicator-down" data-zanim-timeline='{"delay":1}' data-zanim-trigger="scroll" href="#target-down" data-fancyscroll="data-fancyscroll" data-offset="60"><span class="indicator-arrow indicator-arrow-one" data-zanim-xs='{"from":{"opacity":0,"y":15},"to":{"opacity":1,"y":-5,"scale":1},"ease":"Back.easeOut","duration":0.4,"delay":0.25}'></span><span class="indicator-arrow indicator-arrow-two" data-zanim-xs='{"from":{"opacity":0,"y":15},"to":{"opacity":1,"y":-5,"scale":1},"ease":"Back.easeOut","duration":0.4,"delay":0.5}'></span></a>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->

      <div id="target-down"></div>

      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="py-0" id="digital-features">
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
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->



      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="border-top border-bottom border-300 bg-light" id="digital-about">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-4"><img class="img-fluid" src="/assets/img/detail/illustration/digital-01.svg" alt="" /></div>
            <div class="col-md-7 ml-auto">
              <h3 class="mb-3">appear on the first page of google!</h3>
              <p class="text-sans-serif">We offer professional SEO services that help websites rise in rank on Google and other search engines — even when it comes to<span class="font-weight-extra-bold"> highly competitive keywords.</span> A sound search engine marketing plan that includes SEO is essential to increasing your website’s visibility.</p>
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
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->



      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="text-center text-sans-serif" id="digital-features-1" style="padding-top:7.5rem;pdding-bottom:7.5rem;">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-9">
              <h2>complete digital marketing solution</h2>
              <p class="lead mb-0">Search engine optimization (SEO) and social media marketing (SMM) experts</p>
            </div>
          </div>
          <div class="row mt-6 inner">
            <div class="col-sm-6 col-lg-3 mb-4">
              <div class="h-100 border border-300 justify-content-between d-flex flex-column rounded"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-02.svg" alt="" data-zanim-xs='{"delay":0.1,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h5 class="py-3 mb-0 bg-light">Social media marketing</h5>
              </div>
            </div>
            <div class="col-sm-6 col-lg-3 mb-4">
              <div class="h-100 border border-300 justify-content-between d-flex flex-column rounded"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-03.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h5 class="py-3 mb-0 bg-light">Organic Long-Term SEO</h5>
              </div>
            </div>
            <div class="col-sm-6 col-lg-3 mb-4">
              <div class="h-100 border border-300 justify-content-between d-flex flex-column rounded"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-04.svg" alt="" data-zanim-xs='{"delay":0.3,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h5 class="py-3 mb-0 bg-light">Advanced Web Analytics</h5>
              </div>
            </div>
            <div class="col-sm-6 col-lg-3 mb-4">
              <div class="h-100 border border-300 justify-content-between d-flex flex-column rounded"><img class="my-4 img-fluid" src="/assets/img/detail/illustration/digital-05.svg" alt="" data-zanim-xs='{"delay":0.4,"animation":"zoom-in"}' data-zanim-trigger="scroll" />
                <h5 class="py-3 mb-0 bg-light">Pay Per Click Management</h5>
              </div>
            </div>
          </div>
          <div class="row mt-7 text-left inner">
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
          </div>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->



      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="py-0 overflow-hidden" id="digital-we-do">
        <div class="container-fluid px-lg-0" style="padding-top:7.5rem;padding-bottom:7.5rem;">
          <div class="row align-items-center">
            <div class="col-lg-6 align-self-stretch py-11">
              <div class="bg-holder" style="background-image:url(/assets/img/detail/digital-strategy.jpg);"></div>
              <!--/.bg-holder-->
            </div>
            <div class="col-lg-6 px-sm-6 px-md-8 px-lg-6 px-xl-8 py-6 py-md-8 align-self-stretch bg-light">
              <div class="owl-carousel owl-theme owl-nav-outer owl-theme-white px-4" data-options='{"items":1,"autoplay":true,"dots":false,"loop":true,"nav":true,"mouseDrag":true,"autoplayHoverPause":true}'>
                <div class="text-sans-serif">
                  <div class="border text-danger border-danger font-weight-bold px-1 fs--1 rounded d-inline-block mb-2">NEW</div>
                  <h3 class="mb-2 font-weight-normal">Web <span class='font-weight-black'>Craft</span></h3>
                  <h6 class="ls text-uppercase font-weight-bold mb-4">Stories that get your brand the love it deserves</h6>
                  <p class="mb-0">A surefire way to your target audience’s hearts is through compelling and engaging storytelling. Adding our personal touch of awe-inspiration, we aim to make them fall in love with your brand. These elements come together to form the basis for our multi-platform websites and applications that also work well on, yes, Internet Explorer.</p>
                </div>
                <div class="text-sans-serif">
                  <h3 class="mb-2 font-weight-normal">We <span class='font-weight-black'>Strategise</span></h3>
                  <h6 class="ls text-uppercase font-weight-bold mb-4">Campaigns that exceed your KPIs</h6>
                  <p class="mb-0">Let’s face it — nobody wants to head into the battlefield unprepared. That’s where we come in. With Sparrow, you are on one big team. We tailor-cut to your needs by crafting strategies that will engage your audience and build a loyal following. Expand your digital empire with us.</p><a class="btn btn-link text-danger font-weight-bold pl-0 mt-4" href="#">Learn more &xrarr;</a>
                </div>
                <div class="text-sans-serif">
                  <h3 class="mb-2 font-weight-normal">Web <span class='font-weight-black'>Build</span></h3>
                  <h6 class="ls text-uppercase font-weight-bold mb-4">Multi-platform and responsive websites</h6>
                  <p class="mb-0">Sparrow firmly believes in doing things 'User First', and the key to that is keeping responsive web design in mind. We also acknowledge that your target audience’s User Experience is King in the Realm of the Web and ought to be treated like royalty.</p><a class="btn btn-link text-danger font-weight-bold pl-0 mt-4" href="#">Hire us &xrarr;</a>
                </div>
              </div>
            </div>
          </div>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->



      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="text-center text-sans-serif" id="digital-partners">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-7">
              <h3 class="mb-2">proud to be working with</h3>
              <p>Since 2009, we have forged close relationships with over 100 brands allowing us to gain a wide experience marketing vastly different product types and services from various industries, locally, regionally and globally.</p>
            </div>
          </div>
          <div class="row justify-content-center mt-6 inner">
            <div class="col-6 col-md-4 col-lg-3 d-flex justify-content-center align-items-center">
              <div class="bg-light p-4 p-sm-6 h-100 rounded"><img class="logo-grid" src="/assets/img/detail/logo/23.png" alt="" data-zanim-xs='{"delay":0.1,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
            </div>
            <div class="col-6 col-md-4 col-lg-3 d-flex justify-content-center align-items-center">
              <div class="bg-light p-4 p-sm-6 h-100 rounded"><img class="logo-grid" src="/assets/img/detail/logo/22.png" alt="" data-zanim-xs='{"delay":0.2,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
            </div>
            <div class="col-6 col-md-4 col-lg-3 d-flex justify-content-center align-items-center mt-4 mt-md-0">
              <div class="bg-light p-4 p-sm-6 h-100 rounded"><img class="logo-grid" src="/assets/img/detail/logo/24.png" alt="" data-zanim-xs='{"delay":0.3,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
            </div>
            <div class="col-6 col-md-4 col-lg-3 d-flex justify-content-center align-items-center mt-4 mt-lg-0">
              <div class="bg-light p-4 p-sm-6 h-100 rounded"><img class="logo-grid" src="/assets/img/detail/logo/26.png" alt="" data-zanim-xs='{"delay":0.4,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
            </div>
            <div class="col-6 col-md-4 col-lg-3 d-flex justify-content-center align-items-center mt-4">
              <div class="bg-light p-4 p-sm-6 h-100 rounded"><img class="logo-grid" src="/assets/img/detail/logo/13.png" alt="" data-zanim-xs='{"delay":0.5,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
            </div>
            <div class="col-6 col-md-4 col-lg-3 d-flex justify-content-center align-items-center mt-4">
              <div class="bg-light p-4 p-sm-6 h-100 rounded"><img class="logo-grid" src="/assets/img/detail/logo/04.png" alt="" data-zanim-xs='{"delay":0.6,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
            </div>
            <div class="col-6 col-md-4 col-lg-3 d-flex justify-content-center align-items-center mt-4">
              <div class="bg-light p-4 p-sm-6 h-100 rounded"><img class="logo-grid" src="/assets/img/detail/logo/27.png" alt="" data-zanim-xs='{"delay":0.7,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
            </div>
            <div class="col-6 col-md-4 col-lg-3 d-flex justify-content-center align-items-center mt-4">
              <div class="bg-light p-4 p-sm-6 h-100 rounded"><img class="logo-grid" src="/assets/img/detail/logo/14.png" alt="" data-zanim-xs='{"delay":0.8,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
            </div>
          </div>
          <div class="row mt-6 text-center">
            <div class="col"><a class="btn btn-danger" href="#">Let's work</a></div>
          </div>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->



      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="text-center bg-black text-sans-serif inner" id="digital-contact" style="padding-top:7.5rem;pdding-bottom:7.5rem;margin-top:7.5rem;">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-7">
              <h2 class="text-white">speak to us!</h2>
              <p class="text-500">The digital landscape is constantly evolving; just when you think you’ve gotten the hang of it, you realise that things are a-changing once again. And we are here to help.</p>
            </div>
          </div>
          <form class="zform text-left mt-6">
            <div class="row justify-content-center" style="padding-bottom:7.5rem;">
              <div class="col-lg-5"><input type="hidden" name="to" value="username@domain.extension" />
                <div class="form-group mb-4"><label class="text-400 font-weight-bold ls fs--1">Your Name</label><input class="fs-0 form-control border-800 bg-transparent" type="text" required="required" /></div>
                <div class="form-group mb-4"><label class="text-400 font-weight-bold ls fs--1">Your Email</label><input class="fs-0 form-control border-800 bg-transparent" type="email" required="required" /></div>
                <div class="form-group mb-4"><label class="text-400 font-weight-bold ls fs--1">Your Phone</label><input class="fs-0 form-control border-800 bg-transparent" type="text" required="required" /></div>
                <div class="form-group mb-4"><label class="text-400 font-weight-bold ls fs--1">How did you find us?</label><select class="fs-0 custom-select border-800 bg-transparent">
                    <option selected="">Select one</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select></div>
              </div>
              <div class="col-lg-5">
                <div class="form-group mb-4"><label class="text-400 font-weight-bold ls fs--1">Your Organisation</label><input class="fs-0 form-control border-800 bg-transparent" type="text" required="required" /></div>
                <div class="form-group mb-4"><label class="text-400 font-weight-bold ls fs--1">Your Message</label><textarea class="fs-0 form-control border-800 bg-transparent" rows="11" required="required"></textarea></div>
              </div>
              <div class="col-lg-10 text-center">
                <div class="zform-feedback my-2"></div><input class="btn btn-danger" type="submit" value="send" />
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
              <h3 class="mb-3">we are sparrow</h3>
              <p>A digital agency that delivers awe-inspiring experiences. Our passion is all about making your brand shine.</p>
            </div>
            <div class="col-md-6 col-lg-4 pr-lg-6 ml-lg-auto mt-6 mt-lg-0">
              <h4 class="mb-3">Clogs</h4>
              <p class="mb-0">Design Inspiration for Summer. Describe the moment you discovered you could be creative. Transform your Ideas from Good to Great</p>
              <h4 class="mb-3 mt-4">Socials</h4><a class="btn btn-dark btn-sm mr-2" href="#"><span class="fab fa-twitter"></span></a><a class="btn btn-dark btn-sm mr-2" href="#"><span class="fab fa-facebook-f"></span></a><a class="btn btn-dark btn-sm mr-2" href="#"><span class="fab fa-google-plus-g"></span></a><a class="btn btn-dark btn-sm" href="#"><span class="fab fa-linkedin-in"></span></a>
            </div>
            <div class="col-md-6 col-lg-4 mt-6 mt-lg-0">
              <h4 class="mb-3">Get in touch</h4>
              <p class="mb-0"><span class="text-black">Tel:</span><a class="text-700" href="tel:+6562934373">+65 6293 4373</a></p>
              <p class="mb-0"><span class="text-black">Drop us an email at:</span><a class="text-700" href="mailto:info@sparrow.com">info@sparrow.com</a></p>
              <h4 class="mb-3 mt-4">Find us</h4>
              <address>Sparrow Interactive Pte. Ltd.<br />50 Ubi Avenue 3, #04-05 Frontier ePark@Ubi<br />Singapore 408866</address>
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
      <div class="page position-absolute t-0 w-100" id="service">
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
   			<form action="/calc" name="rentalForm" id="rentalForm" method="post" onsubmit="return submitCheck();">
   			
   			<!-- container_content -->
   			<div class="container_content">
     			<div class="row_flex">
       				<!-- product_info -->
       				<div class="product_info">
         				<!-- product_size -->
	         				<div class="product_size product_info_item">
	      					<h3>저온창고 사이즈</h3>
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
	           				<table id="20ftMasterList" style="margin-top:20px;">
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
	           				</table>
         				</div>
         				
       				</div>
       				
       				<div class="addition">
         				<!-- product_size -->
         				<div class="product_size product_info_item product_info_item_mobile">
       					<h3>저온창고 사이즈</h3>
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
       						<table id="20ftMasterList_M" style="margin-top:20px;">
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
         					</table>
         				</div>

         				<div class="cont_box tab_common_cont">
              					<h3>정보입력</h3>
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
								      <option value="msize02">900 x 2100 x 100 (오버랩)</option>
								      <option value="msize03">1000 x 2100 x 100 (오버랩)</option>
								      <option value="msize04">1200 x 2400 x 100 (슬라이드 / 편개)</option>
								      <option value="msize05">1400 x 2600 x 100 (슬라이드 / 편개)</option>
								      <option value="msize06">2400 x 2600 x 100 (슬라이드 / 양개)</option>
								      <option value="msize07">2600 x 2800 x 100 (슬라이드 / 양개)</option>
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
              				<p>다음 금액은 부가세를 포함한 금액이며, 설치현장 환경에 따라 추가 비용(크레인, 지게차 등)이 발생할 수 있습니다.</p>
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
      
      <div class="page position-absolute t-0 w-100" id="portfolio">
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
		                      <h1 class="text-underline fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll">our story</h1>
		                    </div>
		                  </div>
		                  <p class="dropcap" data-zanim-xs='{"delay":0.5}' data-zanim-trigger="scroll">Sparrow is a web, IT, and marketing agency based in San Diego, California with deep roots in the action sports and lifestyle industries. Our specialty is to combine strategy with execution to deliver clearly measured results, spanning from the areas of web and content to media and beyond. We help leading global and local clients to solve problems, find efficiencies, and drive savings and sales. For nearly a decade, our results have earned us a client retention rate that far exceeds industry standards and our customer-centric approach permeates every level of our work. Infusing experience and passion into the brands we serve while delivering objective results is what we do best.</p>
		                  <div class="row mt-5">
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/about-02.jpg" alt="" data-zanim-xs='{"delay":0.6,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/about-01.jpg" alt="" data-zanim-xs='{"delay":0.7,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                  </div>

		                  <div class="mb-5 mb-lg-7 overflow-hidden" style="padding-top:7.5rem;">
		                    <h1 class="text-underline fs-4 fs-md-5" data-zanim-xs="{&quot;delay&quot;:0}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">we do.</h1>
		                  </div>
		                  <div class="media mb-5 card-service" data-zanim-timeline="{}">
		                    <div class="overflow-hidden"><img class="mr-3 mr-sm-4" src="/assets/img/detail/icons/icon-target.svg" alt="" width="50" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);"></div>
		                    <div class="media-body">
		                      <div class="overflow-hidden">
		                        <h4 class="mb-2" data-zanim-xs="{&quot;delay&quot;:0.1,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">element based design</h4>
		                      </div>
		                      <div class="overflow-hidden">
		                        <p class="mb-0" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">Components and options for laying out your project, including powerful grid system, and responsive utility classes.</p>
		                      </div>
		                    </div>
		                  </div>
		                  <div class="media mb-5 card-service" data-zanim-timeline="{}">
		                    <div class="overflow-hidden"><img class="mr-3 mr-sm-4" src="/assets/img/detail/icons/icon-line-chart.svg" alt="" width="50" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);"></div>
		                    <div class="media-body">
		                      <div class="overflow-hidden">
		                        <h4 class="mb-2" data-zanim-xs="{&quot;delay&quot;:0.1,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">buttery smooth animation</h4>
		                      </div>
		                      <div class="overflow-hidden">
		                        <p class="mb-0" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">Crazy fast, responsive, efficient and freakishly robust GSAP; giving you the new standard for HTML5 and javascript animation.</p>
		                      </div>
		                    </div>
		                  </div>
		                  <div class="media mb-5 card-service" data-zanim-timeline="{}">
		                    <div class="overflow-hidden"><img class="mr-3 mr-sm-4" src="/assets/img/detail/icons/icon-coding.svg" alt="" width="50" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);"></div>
		                    <div class="media-body">
		                      <div class="overflow-hidden">
		                        <h4 class="mb-2" data-zanim-xs="{&quot;delay&quot;:0.1,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">familiar markup</h4>
		                      </div>
		                      <div class="overflow-hidden">
		                        <p class="mb-0" data-zanim-xs="{&quot;delay&quot;:0.2,&quot;animation&quot;:&quot;slide-right&quot;}" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">Based on the Bootstrap 4 code base, sparrow's code is instantly familiar, easy to understand and a straightforward to extend.</p>
		                      </div>
		                    </div>
		                  </div>
              
		                  <blockquote class="blockquote text-center my-6 border p-5 px-xl-7 border-300 rounded" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">
		                    <p class="blockquote-content">I've been using sparrow for a long time. It outperforms all other templates. It is flexible , support is great &amp; this is the only template you will need to create awesome &amp; fast websites.</p>
		                    <footer class="blockquote-footer"><span class="text-900">Rich Piana,</span> Themewagon Inc.</footer>
		                  </blockquote>
		                </div>
		                <div class="col-xl-4 text-center" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll" >
		                  <h2 class="fs-3 fs-sm-4 mb-1" style="font-size: 3rem;">6 million</h2>
		                  <p class="font-italic text-500">Total Lines of Code</p>
		                </div>
		                <div class="col-xl-4 text-center mt-4 mt-xl-0" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">
		                  <h2 class="fs-3 fs-sm-4 mb-1 text-danger" style="font-size: 3rem;">1024</h2>
		                  <p class="font-italic text-500">Cups of Coffee</p>
		                </div>
		                <div class="col-lg-10 mt-6"><img class="rounded img-fluid" src="/assets/img/detail/about-03.jpg" alt="" data-zanim-xs='{"animation":"zoom-in","delay":0.1}' data-zanim-trigger="scroll" />
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
		                </div>
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
      <div class="page position-absolute t-0 w-100" id="gallery">
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
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/gallery.jpg);background-position: 0 8%; transform: scale(1.1);">
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
      <div class="page position-absolute t-0 w-100" id="faq">
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
      
      
      <div class="page position-absolute t-0 w-100" id="contact">
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
      
      
      
      <div class="page position-absolute t-0 w-100" id="starter">
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
     <div class="page position-absolute t-0 w-100" id="docs">
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
              <h1 class="page-title">Docs</h1>
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
	  /* $(document).ready(function() { 
	    
	    $('#btnloading #btnSave').click(function(){
			$('#loading').show();
			return true;
        });
   });  */
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