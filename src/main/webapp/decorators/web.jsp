<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shop MTV</title>

    <link href="<c:url value="/templateWeb/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <!--theme style-->
    <link href="<c:url value="/templateWeb/css/style1.css"/>" rel="stylesheet" type="text/css" media="all"/>
    <script src="<c:url value="/templateWeb/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/templateWeb/js/simpleCart.min.js"/>"></script>
    <!-- start menu -->
    <link href="<c:url value="/templateWeb/css/memenu.css"/>" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="<c:url value="/templateWeb/js/memenu.js"/>"></script>
    <script>$(document).ready(function () {
        $(".memenu").memenu();
    });</script>
    <script src="<c:url value='/templateWeb/paging/jquery.twbsPagination.js' />"></script>
    <!-- /start menu -->
    <script src='<c:url value="/templateWeb/js/responsiveslides.min.js"></c:url>'></script>
    <script src="<c:url value="/templateWeb/js/bootstrap.js"></c:url>"></script>
    <script src="<c:url value='/templateWeb/paging/jquery.twbsPagination.js' />"></script>
    <script src="<c:url value='/template/admin/sweetalert/sweetalert2.min.js' />"></script>
    <link rel="stylesheet" href="<c:url value='/template/admin/sweetalert/sweetalert2.min.css' />"/>



<%--    Demo--%>
    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Elite Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--//tags -->
    <link href="<c:url value="/templateWeb/css1/bootstrap.css"/>" type="text/css" media="all" />
    <link href="<c:url value="/templateWeb/css1/team.css"/>" type="text/css" media="all" />
    <link href="<c:url value="/templateWeb/css1/style.css"/>"  rel="stylesheet" type="text/css" media="all" />
    <link href="<c:url value="/templateWeb/css1/font-awesome.css"/>" rel="stylesheet">
    <!-- //for bootstrap working -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>


    <!-- js -->
    <script type="text/javascript" src="<c:url value="/templateWeb/js1/jquery-2.1.4.min.js" />"></script>
    <!-- //js -->
    <!-- cart-js -->
    <script src="<c:url value="/templateWeb/js1/minicart.min.js" />"></script>
    <script>
        // Mini Cart
        paypal.minicart.render({
            action: '#'
        });

        if (~window.location.search.indexOf('reset=true')) {
            paypal.minicart.reset();
        }
    </script>

    <!-- //cart-js -->

    <!-- stats -->
    <script src="<c:url value="/templateWeb/js1/jquery.waypoints.min.js" />"></script>
    <script src="<c:url value="/templateWeb/js1/jquery.countup.js" />"></script>

    <!-- //stats -->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="<c:url value="/templateWeb/js1/move-top.js" />"></script>
    <script type="text/javascript" src="<c:url value="/templateWeb/js1/jquery.easing.min.js" />" ></script>

    <!-- //here ends scrolling icon -->

    <!-- for bootstrap working -->
    <script type="text/javascript" src="<c:url value="/templateWeb/js1/bootstrap.js" />"></script>

</head>
<body class="no-skin">

<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            nav: true,
            speed: 500,
            namespace: "callbacks",
            pager: false,
        });
    });
</script>

<!-- header -->
<%@ include file="/common/web/header.jsp" %>

<!-- header -->

<dec:body/>
<!-- footer -->
<%@ include file="/common/web/footer.jsp" %>
<!-- footer -->

</body>
</html>