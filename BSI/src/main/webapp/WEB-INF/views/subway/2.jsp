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
                        <h1 class="h3 mb-0 text-gray-800">역별 승하차 인원</h1>
                        
                    </div>
                    

               <!-- Content Column -->
                       	<div style="padding-top:25px;text-align:center">
			<form action="stats-by-section.action" method="post">
			<table border="1" style="width:800px;margin:0 auto">
				<tr style="height:30px">
					<th style="width:20%">역명</th>
					<td style="text-align:center">
						<select name="range">
							<option value="5" selected>5번대</option>
							<option value="10" >10번대</option>
						</select>						
					</td>
					
					<th>시간</th>
					<td style="text-align:center">
						<select name="weeks">
							<option value="5" >최근 5주</option>
							<option value="10" >최근 10주</option>
							<option value="15" selected>최근 15주</option>
						</select>
					</td>
				
				<tr>					
					<td colspan="4" style="text-align: center;height:50px">
						<input type="submit" value="조회"><!-- type=submit : 포함된 form을 서버로 submit -->
					</td>
				</tr>
			</table>
			</form>
			<br><br>
					</div>
                                    </div>
                                    
                                </div>
                            </div>

				</div>
                <!-- /.container-fluid -->
        	</div>
        	<!-- End of Main Content -->

			
  <!-- Footer -->
         
            <!-- End of Footer -->

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

      <!-- Bootstrap core JavaScript-->
    <script src="/BSI/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/BSI/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/BSI/resources/vendor/jquery-easing/jquery.easing.min.js"></script>



</body>

</html>
