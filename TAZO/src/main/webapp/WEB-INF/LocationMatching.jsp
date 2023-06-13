<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>매칭추천</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

 
<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/css/animate.min.css"
   rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/owl.carousel.min.css"
   rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
   rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/css/style.css"
   rel="stylesheet">
<!-- Favicon -->
<link href="${pageContext.request.contextPath}/img/favicon.ico"
   rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
   rel="stylesheet">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
   rel="stylesheet">


</head>

<body>
 
     
       
      <!-- Navbar & Hero Start -->
      <div class="container-xxl position-relative p-0">
         <nav
            class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
            <a href="index.html" class="navbar-brand p-0">
               <h1 class="m-0">TAZO</h1> <!-- <img src="img/logo.png" alt="Logo"> -->
            </a>
            <button class="navbar-toggler" type="button"
               data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
               <span class="fa fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
               <div class="navbar-nav ms-auto py-0">
                  <a class="nav-item nav-link active" href="<c:url value='/driver'>  </c:url>">Home</a> 
                  <a href=" <c:url value='/customer/locationMatching/Info'/>" class="nav-item nav-link">내 카플</a> <a
                     href="<c:url value='/customer/reservation/Info'/>"
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


            <div class="container-xxl bg-primary page-header">
                <div class="container text-center">
                    <h1 class="text-white animated zoomIn mb-3">추천매칭</h1>
                    <nav aria-label="breadcrumb">
                       
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->

 <!-- Service Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <div class="d-inline-block border rounded-pill text-primary px-4 mb-3"><a href="<c:url value='/driver/register/board/form'>
						   </c:url>">고리를 통해 예약할 수 있습니다</a></div>
                    <h2 class="mb-5">매칭 추천</h2>
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
                    
                    <div class="row g-4">
                  <c:forEach var="board" items="${BoardList}" varStatus="status">
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
                    
                    
                

		
         
         
         
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>