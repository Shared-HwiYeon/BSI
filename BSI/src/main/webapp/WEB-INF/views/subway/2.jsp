<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BSI</title>

   <jsp:include page="/WEB-INF/views/modules/css.jsp" />

</head>

<body id="page-top">


    <!-- Page Wrapper -->
    <div id="wrapper">

		<jsp:include page="/WEB-INF/views/modules/sidebar.jsp" />
		
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

				<jsp:include page="/WEB-INF/views/modules/topbar.jsp"/>
				
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Board</h1>
                    </div>

					<form action="2" method="post" id="2">
					<table border="1" style="margin: 0 auto" class="table-secondary">
						<tr>
							<th>역명</th>
							<th>최대/최소</th>
							<td rowspan="2" style="height: 30px"><button id="submit">조회</button></td>
						</tr>
						<tr>
							<td>
								<select name="station">
									<c:forEach var="sname" items="${ subway }">
									<option value="${ sname }"${sname eq requestScope.station ? "selected" : "" }>${ sname }</option>
									</c:forEach>
								</select>
							</td>
							<td>
								<select name="MaxMin" id="MaxMin">
									<option value="Max" ${MaxMin == 'Max' ? 'selected':'' }>최대</option>
									<option value="Min" ${MaxMin == 'Min' ? 'selected':'' }>최소</option>
								</select>
							</td>
						</tr>
					</table>
					</form>
                     <hr>
                     <table style="margin: 0 auto; text-align:center; width: 800px" class="table">
                     	<tr class="thead-light">
                     		<th>역명</th>
                     		<th>날짜</th>
                     		<th>시간</th>
                     		<th>승차</th>
                     		<th>이용객(${ MaxMin })</th>
                     		<th>하루이용객(승하차 합)</th>
                     	</tr>
                     	<c:forEach var="vo" items="${ vo }" varStatus="status">
                     	<tr>
                     		<td>${ vo.sname }</td>
                     		<td>${ vo.date }</td>
                     		<td>${ vo.hour }</td>
                     		<td>${ vo.division }</td>
                     		<td>${ vo.unumber }</td>
                     		<td>${ sum.sum }</td>
                     	</tr>
                     	</c:forEach>
                     </table>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

           <jsp:include page="/WEB-INF/views/modules/footer.jsp" />

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/views/modules/js.jsp"/>

    <!-- Page level plugins -->
    <script src="/bsi2/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/bsi2/resources/js/demo/chart-area-demo.js"></script>
    <script type="text/javascript" src="/bsi2/resources/js/demo/chart-pie-demo2.js"></script>
	<script type="text/javascript">
	$(function() {
		$('#submit').on('click',function(event){
			$('#2').submit();
		})
	})
	</script>
</body>
</html>