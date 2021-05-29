<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>

    <title><dec:title default="Trang chủ"/></title>
    <link rel="stylesheet" href="<c:url value='/template/admin/css/validate-customer.css' />"/>
    <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/bootstrap.min.css' />"/>
    <link rel="stylesheet" href="<c:url value='/template/admin/font-awesome/4.5.0/css/font-awesome.min.css' />"/>
    <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/ace.min.css' />" class="ace-main-stylesheet"
<%--          id="main-ace-style"/>--%>
    <script src="<c:url value='/template/admin/assets/js/ace-extra.min.js' />"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type='text/javascript' src='<c:url value="/template/admin/js/jquery-2.2.3.min.js" />'></script>
<%--    <script src="<c:url value='/template/admin/assets/js/jquery.2.1.1.min.js' />"></script>--%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <!-- sweetalert -->
    <script src="<c:url value='/template/admin/sweetalert/sweetalert2.min.js' />"></script>
    <link rel="stylesheet" href="<c:url value='/template/admin/sweetalert/sweetalert2.min.css' />"/>

    <!-- ckfinder -->
    <script src="<c:url value="/template/admin/ckeditor/ckeditor.js" />"></script>


    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/template/admin/css/bootstrap.min.css' />" rel="stylesheet">
    <!--external css-->
    <link href="<c:url value='/template/admin/css/font-awesome.css' />"  rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="<c:url value='/template/admin/css/style.css' />" rel="stylesheet">
    <link href="<c:url value='/template/admin/css/style-responsive.css' />"  rel="stylesheet">

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="<c:url value='/template/admin/js/jquery.min.js' />"></script>
    <!--common script for all pages-->
    <script src="<c:url value='/template/admin/js/common-scripts.js' />"></script>
    <!--script for this page-->

</head>
<body>
<!-- header -->
<%@ include file="/common/admin/header.jsp" %>
<!-- header -->

<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>
    <!-- header -->
    <%@ include file="/common/admin/menu.jsp" %>
    <!-- header -->

    <dec:body/>

    <!-- footer -->
    <%@ include file="/common/admin/footer.jsp" %>
    <!-- footer -->

</div>

</body>
</html>
<script>
$('.fa-bars').click(function() {
if ($('#sidebar > ul').is(":visible") === true) {
$('#main-content').css({
'margin-left': '0px'
});
$('#sidebar').css({
'margin-left': '-210px'
});
$('#sidebar > ul').hide();
$("#container").addClass("sidebar-closed");
} else {
    $("#container").removeClass("sidebar-closed");
$('#main-content').css({
'margin-left': '210px'
});
$('#sidebar > ul').show();
$('#sidebar').css({
'margin-left': '0'
});
}
});
</script>