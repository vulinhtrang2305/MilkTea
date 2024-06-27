<%-- 
    Document   : dashboard
    Created on : Jun 18, 2024, 4:23:19 PM
    Author     : chucken
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>USER MANAGER DASHBOARD</title>

        <!-- Custom fonts for this template-->
        <link href="${pageContext.request.contextPath}/vendor-admin/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" 
              integrity="sha512-+L4yy6FRcDGbXJ9mPG8MT/3UCDzwR9gPeyFNMCtInsol++5m3bk2bXWKdZjvybmohrAsn3Ua5x8gfLnbE1YkOg==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Page level plugin CSS-->
        <link href="${pageContext.request.contextPath}/vendor-admin/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">

        <link rel="stylesheet" href="css/colReorder-bootstrap4.css">

        <style>
            .error{
                color:red;
            }
        </style>

    </head>

    <body id="page-top">

        <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

            <a class="navbar-brand mr-1" href="index.html">USER MANAGER</a>

            <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
                <i class="fas fa-bars"></i>
            </button>

            <!-- Navbar Search -->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>

            <!-- Navbar -->
            <jsp:include page="../../common/user/navbar.jsp"></jsp:include>

            </nav>

            <div id="wrapper">

                <!-- Sidebar -->
            <jsp:include page="../../common/user/sidebar.jsp"></jsp:include>

                <div id="content-wrapper">

                    <div class="container-fluid">

                        <!-- Breadcrumbs-->
                    <jsp:include page="../../common/user/breadcrums.jsp"></jsp:include>

                        <!-- Icon Cards-->
                    <jsp:include page="../../common/user/iconCards.jsp"></jsp:include>

                        <!-- Area Chart Example-->
                        <!--                    <div class="card mb-3">
                                                <div class="card-header">
                                                    <i class="fas fa-chart-area"></i> Area Chart Example
                                                </div>
                                                <div class="card-body">
                                                    <canvas id="myAreaChart" width="100%" height="30"></canvas>
                                                </div>
                                                <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                                            </div>-->

                        <!-- DataTables Example -->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-table"></i> Data Table Example
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Amount</th>
                                                <th>Account ID</th>
                                                <th>Account ID</th>
                                                <th>Create At</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${sessionScope.listOrder}" var="c">
                                            <tr>
                                                <td>${c.id}</td>
                                                <td>${c.amount}</td>
                                                <td>${c.accountId}</td>
                                                <td>${c.createAt}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                    </div>

                </div>
                <!-- /.container-fluid -->

                <!-- Sticky Footer -->
                <jsp:include page="../../common/user/footer.jsp"></jsp:include>
                </div>
                <!-- /.content-wrapper -->

            </div>
            <!-- /#wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <!-- Logout Modal-->
        <jsp:include page="../../common/user/logoutModal.jsp"></jsp:include>

            <!-- Bootstrap core JavaScript-->
            <script src="${pageContext.request.contextPath}/vendor-admin/jquery/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/vendor-admin/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="${pageContext.request.contextPath}/vendor-admin/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="${pageContext.request.contextPath}/vendor-admin/chart.js/Chart.min.js"></script>
        <script src="${pageContext.request.contextPath}/vendor-admin/datatables/jquery.dataTables.js"></script>
        <script src="${pageContext.request.contextPath}/vendor-admin/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="${pageContext.request.contextPath}/js/sb-admin.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/colReorder-bootstrap4-min.js"></script>
        <script src="${pageContext.request.contextPath}/js/colReorder-dataTables-min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="${pageContext.request.contextPath}/js/admin/demo/demo/datatables-demo.js"></script>
        <script src="${pageContext.request.contextPath}/js/admin/demo/demo/chart-area-demo.js"></script>
        <script src="${pageContext.request.contextPath}/js/colReorder-dataTables-min.js"></script>
        <script src="${pageContext.request.contextPath}/js/colReorder-bootstrap4-min.js"></script>


    </body>

</html>