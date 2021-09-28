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

				<jsp:include page="/WEB-INF/views/modules/topbar.jsp" />

				  <!-- Begin Page Content -->
                <div class="container-fluid">

         		<!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800" 
                        	style="font-weight: bold; margin-left:20px">
                        	호선별 승하차 인원
                        </h1>
                    </div>
                    
                    <div class="con" style="width:100%;">
                    
                    <div class="card shadow mb-4" style="float:right">
                                <!-- Card Header - Accordion -->
                                <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="collapseCardExample">
                                    <h6 class="m-0 font-weight-bold text-primary">부산 지하철 연혁</h6>
                                </a>
                                <!-- Card Content - Collapse -->
                                <div class="collapse show" id="collapseCardExample" style="right">
                                    <div class="card-body">
                                       1981.01.01 부산시 지하철건설본부 설치1981.06~1994.061호선을 4단계로 구분하여 건설<br>
                                       1981.06.23~1985.07.19 1단계구간 공사착공 및 개통(노포동~범내골 16.2㎞)<br>
                                       1983.07.28~1987.05.15 2단계구간 공사착공 및 개통(범내골~중앙동 5.4㎞)<br>
                                       1984.08.14~1990.02.28 3단계구간 공사착공 및 개통(중앙동~서대신동 4.5㎞)<br>
                                       1987.11.28 부산교통공단법 제정 공포<br><br>
                                       1988.07.01 부산교통공단 창단<br><br>
                                       1990.07.24~1994.06.23 4단계구간 공사착공 및 개통(서대신동~신평 6.4㎞)<br><br>
                                       1991.11.28 2호선 1단계구간 착공(양산 호포~서면 21.7㎞)<br><br>
                                       1994.10.27 2호선 2단계구간 착공(서면~장산 16.3㎞)<br><br>
                                       1996.02.16 3호선 건설·운영 기본계획 확정1997.11.253호선 대저~수영구간 착공(18.3km)<br><br>
                                       1999.06.30 2호선 1단계 구간 개통(양산 호포~서면 21.7㎞)<br><br>
                                       2001.08.08 2호선 2단계 서면~금련산구간 개통(서면~금련산 7.7㎞)<br>
                                       2001.12.21 2호선 연장구간 착공(양산 호포~중부 8㎞)<br><br>
                                       2002.01.16 2호선 광안역 개통2002.08.292호선 광안~장산 개통<br><br>
                                       2003.12.03 4호선 미남~안평구간 착공(12.7Km)<br><br>
                                       2005.07.13 부산교통공단법 폐지법률 공포<br>
                                       2005.11.28 3호선 수영~대저 구간 개통(18.1km)<br><br>
                                       2006.01.01 부산교통공사 창립<br><br>
                                       2008.01.10 2호선 연장구간(호포~양산) 개통(7.2Km)<br><br>
                                       2009.10.01 2호선 부산대양산캠퍼스역 개통<br><br>
                                       2011.03.30 4호선 미남~안평구간 개통<br><br>
                                       2013.09.02 도시철도 문화경영 선포<br>
                                       2013.11.18 인천국제공항 셔틀트레인 O&M용역<br><br>
                                       2015.03.20 페루 리마메트로 2호선 시공감리 용역<br>
                                       2015.07.16 新사훈 선포<br><br>
                                       2016.06.15 사상~하단선(6.9km) 기공식<br>
                                       2016.07.13 청렴 BI 선포<br><br>
                                       2017.04.20 1호선 연장 다대구간(7.4km) 개통<br>
                                       
                                                        
                                    </div>
                                </div>
                            </div>
                    
  					
					 <!-- Content Column -->
                        <div class="col-lg-6 mb-4">

                            <!-- Project Card Example -->
                            <div class="card shadow mb-4" style="width:100%">
                                <div class="card-header py-3" style="height:70px">
                                    <h6 class="m-0 font-weight-bold text-primary" style="display:inline-block">평균 이용객</h6>
                                    <div class="dropdown mb-4 show" style="float:right">
                                        <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                            구분
                                        </button>
                                        <div class="dropdown-menu animated--fade-in show" aria-labelledby="dropdownMenuButton" style="position: absolute; transform: translate3d(0px, 38px, 0px); top: 0px; left: 0px; will-change: transform;" x-placement="bottom-start">
                                              
                                            <a class="dropdown-item" href="/BSI/line-khw/line">승차</a>
                                            <a class="dropdown-item" href="/BSI/line-khw/line2">하차</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h4 class="small font-weight-bold">1호선 <span
                                            class="float-right">80%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-danger" role="progressbar" style="width: 80%"
                                            aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <h4 class="small font-weight-bold">2호선 <span
                                            class="float-right">20%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 20%"
                                            aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <h4 class="small font-weight-bold">3호선 <span
                                            class="float-right">60%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar" role="progressbar" style="width: 60%"
                                            aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <h4 class="small font-weight-bold">4호선 <span
                                            class="float-right">30%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 30%"
                                            aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    
                                </div>
                                
                                
                              
</div>

				</div>
                <!-- /.container-fluid -->
        	</div>
        	<!-- End of Main Content -->

			<%@ include file="/WEB-INF/views/modules/footer.jsp" %>

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

    <jsp:include page="/WEB-INF/views/modules/js.jsp" />



	<script>
		
		
	</script>

</body>

</html>
