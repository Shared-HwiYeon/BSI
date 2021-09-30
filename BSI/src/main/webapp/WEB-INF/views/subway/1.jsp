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
                        <h1 class="h3 mb-0 text-gray-800">역별 시간별 이용객수 </h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
                    </div>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                          	<div style="padding-top:25px;text-align:center">
			<form action="stats-by-section.action" method="post">
			<table border="1" style="width:800px;margin:0 auto">
				<tr style="height:30px">
					<th style="width:20%">역명</th>
					<td style="text-align:center;width:30%">
						<select name="range">
							<option value="95" selected>다대포해수욕장</option>
							<option value="96" >다대포항</option>
							<option value="97" >낫개</option>
							<option value="98" >신장림</option>
							<option value="99" >장림</option>
							<option value="100" >동매</option>
							<option value="101" >신평</option>
							<option value="102" >하단</option>
							<option value="103" >당리</option>
							<option value="104" >사하</option>
							<option value="105" >괴정</option>
							<option value="106" >대티</option>
							<option value="107" >서대신</option>
							<option value="108" >동대신</option>
							<option value="109" >토성</option>
							<option value="110" >자갈치</optionq>
							<option value="111" >남포</option>
							<option value="112" >중앙</option>
							<option value="113" >부산역</option>
							<option value="114" >초량</option>
							<option value="115" >부산진</option>
							<option value="116" >좌천</option>
							<option value="117" >범일</option>
							<option value="118" >범내골</option>
							<option value="119" >서면(1호선)</option>
							<option value="120" >부전</option>
							<option value="121" >양정</option>
							<option value="122" >시청</option>
							<option value="123" >연산</option>
							<option value="124" >교대</option>
							<option value="125" >동래</option>
							<option value="126" >명륜</option>
							<option value="127" >온천장</option>
							<option value="128" >부산대</option>
							<option value="129" >장전</option>
							<option value="130" >구서</option>
							<option value="131" >두실</option>
							<option value="132" >남산</option>
							<option value="133" >범어사</option>
							<option value="134" >노포</option>
						</select>						
					</td>
					
					<th style="width:20%">시간</th>
					<td style="text-align:center;width:30%">
						<select name="weeks">
						<c:forEach begin="1" end="24" var='idx'>
							<option value='${ idx }시'>${ idx }시</option>
						</c:forEach>	
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
											
					</td>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>역명</th>
                                            <th>날짜</th>
                                            <th>시간</th>
                                            <th>승차</th>
                                            <th>하차</th>
                                            <th>하루 평균 이용객</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

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
    <script src="/bsi/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/bsi/resources/js/demo/chart-area-demo.js"></script>
    <script src="/bsi/resources/js/demo/chart-pie-demo.js"></script>

</body>

</html>