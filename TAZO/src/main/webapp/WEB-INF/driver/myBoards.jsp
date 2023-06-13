<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
 <meta name="description" content="" />
 <meta name="author" content="" />
 <title>Blog Post - Start Bootstrap Template</title>
 <!-- Favicon-->
 <!-- Core theme CSS (includes Bootstrap)-->
 <link href="${pageContext.request.contextPath }/cssForComment/styles.css" rel="stylesheet" />
</head>

<body>
<script>
function sendComment(targetUri){	
	 document.frm.action = targetUri;
	  document.frm.method = "post";
	  document.frm.submit();
	}
function allow(targetUri){	
	alert(target);
	
	}
function deleteBoard(targetUri){
	alert("삭제하시겠습니까?");
	 window.location.href = targetUri;
}
</script>
    <%request.setCharacterEncoding("EUC-KR");
    System.out.println(session.getAttribute("boadList"));
    System.out.println(session.getAttribute("boardId"));
    %>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#!">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">Blog</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page content-->
        <div class="container mt-5">
            <div class="row">
                <div class="col-lg-8">
                    <!-- Post content-->
                    <!-- Comments section-->
                    <section class="mb-5">
                        <div class="card bg-light">
                            <div class="card-body">
                                <!-- Comment form-->
                              <h1>내가 등록한 차량</h1>
                              <p>아이콘 클릭시 삭제 - 예약 중인 사용자가 있다면 삭제 할 수 없습니다</p>
                              <p>
                         		<input type="hidden" name="boardId" value="${board.boardId }">
                                <c:forEach var="board" items="${boardList}" varStatus="status">
                                <div class="d-flex">
                                	<p>
                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." onClick="deleteBoard('<c:url value='/board/delete'>
          						      <c:param name='boardId' value='${board.boardId }'/>
          								   </c:url>')"/></div>
                                    <div class="ms-3">
                                        <div class="fw-bold">board Id : ${board.boardId }</div>
                                        <p>
                                        <span>${board.departure } -> ${board.arrival }</span>
                                  		<a href="<c:url value='/board/update'>
										      <c:param name='boardId' value='${board.boardId }'/>
										</c:url>" class="nav-link">수정</a>
                                       </div>
                                </div>
                                </c:forEach>
                            </div>
                        </div>
                    </section>
                </div>
                <!-- Side widgets-->
                <div class="col-lg-4">
                    <!-- Search widget-->
                    <div class="card mb-4">
                        <div class="card-header">${board.departure} -> ${board.arrival }</div>
                        <div class="card-body">
                            <div class="input-group">
                                <input class="form-control" type="text" placeholder="Enter search term..." aria-label="Enter search term..." aria-describedby="button-search" />
                                <button class="btn btn-primary" id="button-search" type="button">Go!</button>
                            </div>
                        </div>
                    </div>
                                
                    <!-- Side widget-->
                      
                    <div class="card mb-4">
                 
                     <c:forEach var="r" items="${requestList}" varStatus="status">
                   
                         <div class="card-header">${r.customerStrId }님이 탑승하고 싶어합니다!
                        <a href="<c:url value='/board/allow'>
						      <c:param name='customerStrId' value='${r.customerStrId }'/>
						       <c:param name='reservationId' value='${r.reservationId }'/>
						   </c:url>" class="nav-link">수락</a>
              
                         </div>
                       
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <ul class="list-unstyled mb-0">
                                        <li>state : ${r.state }</li>
                                        <li>reservation number : ${r.reservationId }</li>
                              
                                    </ul>
                                </div>
                           	 </div>
                           	 
                        </div>
                       </c:forEach>
                    </div>
                        <div class="card-body">You can put anything you want inside of these side widgets. They are easy to use, and feature the Bootstrap 5 card component!</div>
			 </div>
                </div>
            </div>
  
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath }/js/main.js"></script>
    </body>
</html>
