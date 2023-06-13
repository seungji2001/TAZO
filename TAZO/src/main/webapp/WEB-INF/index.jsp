<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
.carousel-inner>.carousel-item>div {
   min-width: 50%;
   min-height: 400px;
   background-color: #00B98E;
}
#ex1 {
  background-color : #EFFBF2;
  border-radius: 30px;
}
</style>


<script>
function LocationMatching() {

   if (form.arrival.value == "") {
      alert("arrival");
      form.arrival.focus();
      return false;
   } 
   if (form.depature.value == "") {
      alert("depature");
      form.depature.focus();
      return false;
   }   
   form.submit();
}
const swiper = new Swiper('.swiper', {
     // Optional parameters
     direction: 'vertical',
     loop: true,

     // If we need pagination
     pagination: {
       el: '.swiper-pagination',
     },

     // Navigation arrows
     navigation: {
       nextEl: '.swiper-button-next',
       prevEl: '.swiper-button-prev',
     },

     // And if we need scrollbar
     scrollbar: {
       el: '.swiper-scrollbar',
     },
   });

	
function register(targetUri){	
  window.location.href = targetUri;
}
</script>
    <meta charset="utf-8">
    
    <title>BizConsult - Consulting HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${pageContext.request.contextPath }/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar & Hero Start -->
        <div class="container-xxl position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="index.html" class="navbar-brand p-0">
                    <h1 class="m-0">TAZO</h1>
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <<div class="collapse navbar-collapse" id="navbarCollapse">
               <div class="navbar-nav ms-auto py-0">
                  <a href="index.html" class="nav-item nav-link active">Home</a> <a
                     href="<c:url value='/customer/basicMatching/Info'/>" class="nav-item nav-link">내 카플</a> 
                     <a href="<c:url value='/customer/reservation/Info'/>"
                     class="nav-item nav-link">예약 정보</a>
                  <div class="nav-item dropdown">
                     <a href="#" class="nav-link dropdown-toggle"
                        data-bs-toggle="dropdown">Pages</a>
                     <div class="dropdown-menu m-0">
                        <a href="feature.html" class="dropdown-item">내 채팅</a> <a
                           href="quote.html" class="dropdown-item">마이페이지</a> <a
                           href="team.html" class="dropdown-item">Our Team</a> <a
                           href="testimonial.html" class="dropdown-item">Testimonial</a> <a
                           href="404.html" class="dropdown-item">404 Page</a>
                     </div>
                  </div>

                        <a href="<c:url value='/driver/myBoards'>
						      <c:param name='driverId' value='10'/>
						   </c:url>" class="nav-item nav-link">내 차량</a>
                    </div>
                     <% if (session.getAttribute("userId") == null) {%>
                       <a href=" <c:url value='/customer/login/form'/>" class="btn btn-light rounded-pill text-primary py-2 px-4 ms-lg-5">로그인</a>
                   	 <%} else if (session.getAttribute("userId") != null) {%>
                   	<a href=" <c:url value='/customer/logout'/>" class="btn btn-light rounded-pill text-primary py-2 px-4 ms-lg-5">로그아웃</a>
                   	<%};
                   	%>
                </div>
            </nav>
            
        
            
     <!--    	<div class="container-xxl bg-primary my-6 wow fadeInUp" data-wow-delay="0.1s">
            	<div class="container px-lg-5">
                	<div class="row align-items-center" style="height: 250px;">
                    	<div class="col-12 col-md-6">
                       	 <h3 class="text-white">�대��濡� 媛�源���?</h3>
                        	<small class="text-white">媛�怨��띠�� 異�諛�吏�,紐⑹��吏�瑜� ���댁＜�몄��~</small>
                       	 <div class="parent">
                          	  	<input class="form-control border-0 rounded-pill w-100 ps-4 pe-5" type="text" placeholder="異�諛�吏�" style="height: 55px;">
           						&nbsp;
           						&nbsp;
                           		<input class="form-control border-0 rounded-pill w-100 ps-4 pe-5" type="text" placeholder="紐⑹��吏�" style="height: 55px;">
                           	 	&nbsp;
                            	<a href="" class="btn btn-outline-light rounded-pill border-2 py-2 px-1 animated slideInRight">location</a>
                        	</div>
                    	</div>
                	</div>
            	</div>
        	</div>
       -->
         <form name="form" method="POST" action="<c:url value='/customer/LocationMatching'/>">
            <div class="container-xxl bg-primary page-header">
               <div class="container text-center">
                  <h1 class="text-white animated zoomIn mb-3">어디로 갈까 ?</h1>
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb justify-content-center">
                        <div class="col-md-6 col-lg-3">
                           <input type="text" name="arrival" id="arrival" class="form-control border-0 py-3"
                              placeholder="arrival">
                        </div>

                        <div class="col-md-6 col-lg-3">
                           <input type="text" name="depature" id="depature" class="form-control border-0 py-3"
                              placeholder="depature">
                        </div>

                        <div class="col-md-2">
                           <input type="button" class="btn btn-dark border-0 w-100 py-3" value="Search" onClick="LocationMatching()">
                        </div>
                     </ol>
                  </nav>
               </div>
            </div>
         </form>
      </div>
       


 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
        <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
      integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
      crossorigin="anonymous"></script>
        <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"></script>
        <script>
          $('.carousel').carousel({
            interval: 2000 //기본 5초
          })
        </script>
        
        
      <div class="container-xxl py-6 bg-white">
         <div class="container bg-white">
            <h2>타조 추천</h2>
         </div>
         
         <div id='ex1' class="carousel slide" data-bs-ride="carousel" > 
            <div class="carousel-inner">
               <div class="carousel-item active">
                     <h5 class="mb-3">${board.departure }-> ${board.arrival}</h5>
                    <span>출발시간 : ${board.departureTime}</span>
                    <span>도착시간 : ${board.arrivalTime}</span>
                    <span>탐승 가능 인원 수 : ${board.headCount }</span>
               </div>
               <div class="carousel-item">
                       <h5 class="mb-3">${board.departure }-> ${board.arrival}</h5>
                    <span>출발시간 : ${board.departureTime}</span>
                    <span>도착시간 : ${board.arrivalTime}</span>
                    <span>탐승 가능 인원 수 : ${board.headCount }</span>
                </div>
                <div class="carousel-item">
                       <h5 class="mb-3">${board.departure }-> ${board.arrival}</h5>
                    <span>출발시간 : ${board.departureTime}</span>
                    <span>도착시간 : ${board.arrivalTime}</span>
                    <span>탐승 가능 인원 수 : ${board.headCount }</span>
                </div>
                <div class="carousel-item">
                       <h5 class="mb-3">${board.departure }-> ${board.arrival}</h5>
                    <span>출발시간 : ${board.departureTime}</span>
                    <span>도착시간 : ${board.arrivalTime}</span>
                    <span>탐승 가능 인원 수 : ${board.headCount }</span>
                </div>
                <div class="carousel-item">
                       <h5 class="mb-3">${board.departure }-> ${board.arrival}</h5>
                    <span>출발시간 : ${board.departureTime}</span>
                    <span>도착시간 : ${board.arrivalTime}</span>
                    <span>탐승 가능 인원 수 : ${board.headCount }</span>
                </div>
                <div class="carousel-item">
                       <h5 class="mb-3">${board.departure }-> ${board.arrival}</h5>
                    <span>출발시간 : ${board.departureTime}</span>
                    <span>도착시간 : ${board.arrivalTime}</span>
                    <span>탐승 가능 인원 수 : ${board.headCount }</span>
                </div>
            </div> 
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                   <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                   <span class="visually-hidden">Previous</span>
                 </button>
                 <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                   <span class="carousel-control-next-icon" aria-hidden="true"></span>
                   <span class="visually-hidden">Next</span>
                 </button>
         </div>
      </div>
        



       


        <!-- Service Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <div class="d-inline-block border rounded-pill text-primary px-4 mb-3"><a href="<c:url value='/driver/register/board/form'>
						   </c:url>">차량 등록하기</a></div>
                    <h2 class="mb-5">차량 예약하기</h2>
                </div>
                <div class="row g-4">
                  <c:forEach var="board" items="${boardList}" varStatus="status">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                   
                        <div class="service-item rounded h-100" onClick="register('<c:url value='/reservation/view/init'>
						      <c:param name='boardId' value='${board.boardId}'/>
						   </c:url>')">
                            <div class="d-flex justify-content-between">
                                <div class="service-icon">
                                    <i class="fa fa-user-tie fa-2x"></i>
                                </div>
                                <a class="service-btn" href="<c:url value='/driver/register/board/form' />">
                                    <i class="fa fa-link fa-2x"></i>
                                </a>
                            </div>
                            <div class="p-5">
                                <h5 class="mb-3">${board.departure } -> ${board.arrival } </h5>
                                <span>출발시간 : ${board.departureTime}</span>
                                <p><span>도착시간 : ${board.arrivalTime}</span>
                                <p><span>탐승 가능 인원 수 : ${board.headCount }</span>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                 
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->


     
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath }/lib/wow/wow.min.js"></script>
    <script src="${pageContext.request.contextPath }/lib/easing/easing.min.js"></script>
    <script src="${pageContext.request.contextPath }/lib/waypoints/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath }/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath }/js/main.js"></script>
</body>

</html>