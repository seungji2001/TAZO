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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
 <link href="${pageContext.request.contextPath }/cssForComment/styles.css" rel="stylesheet" />
</head>

<body>
<script src="${pageContext.request.contextPath }/js/focus-trap.js" defer></script>
<script>
function sendComment(targetUri){	
	alert(targetUri);
	 document.frm.action = targetUri;
	  document.frm.method = "post";
	  document.frm.submit();
	}
</script>
    <%request.setCharacterEncoding("EUC-KR");
    	
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
                                <form class="mb-4" name="frm">
                         		<input type="hidden" name="boardId" value="${boardId }">
                                <textarea class="form-control" rows="3" placeholder="Join the discussion and leave a comment!" id="comment" name="comment"></textarea></form>
                               	<button onClick="sendComment('<c:url value='/board/comment'></c:url>')">��ư</button>
                               	
                                <!-- Comment with nested comments-->
                                <!-- Single comment-->
                                <p>
                                <c:forEach var="comment" items="${commentList}" varStatus="status">
                                <div class="d-flex">
                                	<p>
                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                    <div class="ms-3">
                                        <div class="fw-bold">${comment.customer.name }</div>
                                        <p>
                                        ${comment.details } 
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
                    <!-- Categories widget-->
                    <div class="card mb-4">
                        <div class="card-header">���� ����</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <ul class="list-unstyled mb-0">
                                        <li>��� �ð� : ${board.departureTime }</li>
                                        <li>���� �ð� : ${board.arrivalTime }</li>
         
                                        <li>�ο� �� : ${board.headCount }</li>
                                        <li><a href="#!">������ ����</a></li>
                                        <li>${board.getDriver().getDriverName() }</li>
                                    
                                    </ul>
                                   <div>
                                    <!-- Button trigger modal -->
                                    
                           	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
					 		īǮ �̿��ϱ�
							</button>
							 
							<!-- class�� ���� ����� �����ϰ� ������ ������� ȿ��(fade)�� �ش�. ���⼭ ���� �߿��ѰŴ� id �Դϴ�. ���� Ÿ�ٰ� �����ؾ� �մϴ�. #�� ���̵� .�� Ŭ���� -->
							<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<!-- class�� �ָ��Ͻø�  ���� Ŭ������ modal-lg, modal-sm�� �Է��Ͻø� ���� ���, ���� ��޷� ������ ���� �մϴ�. -->
							<!-- ���� ���� �� : <div class="modal-dialog modal-sm" role="document"> -->
							  <div class="modal-dialog" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							       <!-- ��� �̸� -->
							        <h5 class="modal-title" id="exampleModalLabel">�̿� ������ �����Ű���?</h5>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      <div class="modal-body">
							         <li>���� id : ${board.boardId}</li>
							         <li>��� �ð� : ${board.departureTime}</li>
							         <li>���� �ð� : ${board.arrivalTime}</li>
							         <li>�ο� �� : ${board.headCount}</li>
							      </div>
							      <div class="modal-footer">
							        <!-- data-dismiss="modal"�� ���� ����� ������ �ִ�. -->
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">���</button>
							        
							        <button type="button" class="btn btn-primary" id="reservation"  onClick="location.href='/customer/reservation/submit'">��û�ϱ�</button>
							        
							      </div>
							    </div>
							  </div>
							</div>
				  <script>
				        $(document).ready(function() {
				            $("#modal_show").click(function() {
				                $("#exampleModal").modal("show");
				            });
				 
				            $("#close_modal").click(function() {
				                $("#exampleModal").modal("hide");
				            });
				            $("#reservation").click(function() {
				            	window.location = '/TAZO/customer/reservation/submit';
				            });
				        });
				    </script>
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
