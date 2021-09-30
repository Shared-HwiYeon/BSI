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
                
                <h1 class="h3 mb-0 text-gray-800" 
                        	style="font-weight: bold; margin-left:20px">
                        	호선별 승하차 인원
                </h1>
                
                

                     <!-- Donut Chart -->
                        <div class="col-xl-12 col-lg-12" style="margin-top: 30px; height: 500px">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3" style="height:70px">
                                    <h6 class="m-0 font-weight-bold text-primary" style="display:inline-block">하루 평균 이용 객수</h6>
                                    <div class="dropdown mb-4 show" style="float:right">
                    
                </div><!-- 승하차버튼 dropdown mb-4 show -->
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-pie pt-7">
                                        <canvas id="myPieChart"></canvas>
                                    </div>
                                    <hr>
                                    
                                    <div class="mt-6 text-center large">
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-danger"></i> 1호선
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-success"></i> 2호선
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-warning"></i> 3호선
                                        </span>
                                        <span class="mr-2">
                                            <i class="fas fa-circle text-primary"></i> 4호선
                                        </span>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <!-- /.container-fluid -->
                
                <div class="like">
                
                	<select name="s_line">
						<c:forEach var="i" begin="1" end="4">
							<option value="${ i }" ${ i eq requestScope.s_line ? "selected" : "" }>${ i }호선</option>
						</c:forEach>
					</select>
					&nbsp;  &nbsp;
					<select name="sname">
						<c:forEach var="line1" items="${ line1 }">
							<option value="${ line1 }" ${ i eq requestScope.line1 ? "selected" : "" }>${ line1 }역</option>
						</c:forEach>
					</select>
                
                </div><!-- like -->

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
    <script src="/bsi/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/bsi/resources/js/demo/chart-area-demo.js"></script>
    <script type="text/javascript">
 // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Pie Chart Example
    var ctx = document.getElementById("myPieChart");
    var myPieChart = new Chart(ctx, {
      type: 'horizontalBar',
      data: {
        labels: ["1호선 승차", "1호선 하차", "2호선 승차", "2호선 하차", "3호선 승차", "3호선 하차", "4호선 승차", "4호선 하차"],
        datasets: [{
          data: [ ${lines.get(0).getAvgNumber()},${lines.get(1).getAvgNumber()},${lines.get(2).getAvgNumber()},${lines.get(3).getAvgNumber()},${lines.get(4).getAvgNumber()},${lines.get(5).getAvgNumber()},${lines.get(6).getAvgNumber()},${lines.get(7).getAvgNumber()}],
          backgroundColor: ['#e74a3b', '#e74a3b', '#1cc88a', '#1cc88a', '#f6c23e', '#f6c23e', '#4e73df', '#4e73df'],
          hoverBackgroundColor: ['#e74a3b', '#e74a3b', '#1cc88a', '#1cc88a', '#f6c23e', '#f6c23e', '#4e73df', '#4e73df'],
          hoverBorderColor: "rgba(234, 236, 244, 1)",
        }],
      },
      options: {
        maintainAspectRatio: false,
        tooltips: {
          backgroundColor: "rgb(1,1,1)",
          bodyFontColor: "#858796",
          borderColor: '#dddfeb',
          borderWidth: 1,
          xPadding: 15,
          yPadding: 15,
          displayColors: true,
          caretPadding: 10,
        },
        legend: {
          	display: false
        },
        title: {
	        display: true,
	        text: 'Busan Subway'
	      },
      },
    });
    
    </script>

</body>

</html>