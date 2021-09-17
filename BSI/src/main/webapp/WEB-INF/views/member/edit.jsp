<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>

<style type="text/css">
.in {
	background-color: white;
}
</style>
<script type="text/javascript">
function fnSubmit() {
	if(confirm("정말 수정하시겠습니까?")) {
		return true;
	}
	return false;
}

function fnReset() {
	if(confirm("정말 초기화하시겠습니까?")) {
		return true;
	}
	return false;
}
</script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>My Page</title>

   <jsp:include page="/WEB-INF/views/modules/css.jsp" />

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

		<jsp:include page="/WEB-INF/views/modules/sidebar2.jsp" />
		
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

				<jsp:include page="/WEB-INF/views/modules/topbar.jsp"/>
				
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">My Information</h1>
                    </div>
                    </div>
<div align="center">
	<form action="memberUpdate.jsp" method="post" onsubmit="return fnSubmit()" onreset="return fnReset()">
		<input type="hidden" name="id" value="${dto.id }" />
		<table border="1">
			<tr>
				<th>First Name</th>
				<td><input type="text" name="irum" value="${dto.irum }" class="in" required="required" /></td>
			</tr>
			<tr>
				<th>Last Name</th>
				<td><input type="text" name="irum" value="${dto.irum }" class="in" required="required" /></td>
			</tr>
			<tr>
				<th>E-mail Address</th>
				<td><input type="text" name="addr" value="${dto.addr }" class="in" required="required"/></td>
			</tr>
			<tr>
				<th>Password</th>
				<td><input type="password" name="pw" value="${dto.pw }" class="in" required="required" /></td>
			</tr>
			<tr>
				<th>Repeat Password</th>
				<td><input type="password" name="pw" value="${dto.pw }" class="in" required="required" /></td>
			</tr>
			
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="수정하기" />
					<input type="reset" value="초기화하기" />
									
				</td>
			</tr>
		</table>
	</form>
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
    <script src="/project4/resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/project4/resources/js/demo/chart-area-demo.js"></script>
    <script src="/project4/resources/js/demo/chart-pie-demo.js"></script>

</body>

</html>
