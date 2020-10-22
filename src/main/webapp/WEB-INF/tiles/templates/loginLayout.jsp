<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>base</title>
    <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Vendor: Bootstrap 4 Stylesheets  -->
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">

    <!-- Our Website CSS Styles -->
    <link rel="stylesheet" href="/css/icons.min.css" type="text/css">
    <link rel="stylesheet" href="/css/main.css" type="text/css">
    <link rel="stylesheet" href="/css/responsive.css" type="text/css">

    <!-- Color Scheme -->
    <link rel="stylesheet" href="/css/color-schemes/color.css" type="text/css" title="color3">
    <link rel="alternate stylesheet" href="/css/color-schemes/color1.css" title="color1">
    <link rel="alternate stylesheet" href="/css/color-schemes/color2.css" title="color2">
    <link rel="alternate stylesheet" href="/css/color-schemes/color4.css" title="color4">
    <link rel="alternate stylesheet" href="/css/color-schemes/color5.css" title="color5">
    
    <!-- Vendor: Javascripts -->
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <!-- Vendor: Followed by our custom Javascripts -->
    <script src="/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/js/select2.min.js" type="text/javascript"></script>
    <script src="/js/slick.min.js" type="text/javascript"></script>

    <!-- Our Website Javascripts -->
    <script src="/js/isotope.min.js" type="text/javascript"></script>
    <script src="/js/isotope-int.js" type="text/javascript"></script>
    <script src="/js/jquery.counterup.js" type="text/javascript"></script>
    <script src="/js/waypoints.min.js" type="text/javascript"></script>
    <script src="/js/highcharts.js" type="text/javascript"></script>
    <script src="/js/exporting.js" type="text/javascript"></script>
    <script src="/js/highcharts-more.js" type="text/javascript"></script>
    <script src="/js/moment.min.js" type="text/javascript"></script>
    <script src="/js/jquery.circliful.min.js" type="text/javascript"></script>
    <script src="/js/fullcalendar.min.js" type="text/javascript"></script>
    <script src="/js/jquery.downCount.js" type="text/javascript"></script>
    <script src="/js/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
    <script src="/js/jquery.formtowizard.js" type="text/javascript"></script>
    <script src="/js/form-validator.min.js" type="text/javascript"></script>
    <script src="/js/form-validator-lang-en.min.js" type="text/javascript"></script>
    <script src="/js/cropbox-min.js" type="text/javascript"></script>
    <script src="/js/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="/js/ion.rangeSlider.min.js" type="text/javascript"></script>
    <script src="/js/jquery.poptrox.min.js" type="text/javascript"></script>
    <script src="/js/styleswitcher.js" type="text/javascript"></script>
    <script src="/js/main.js" type="text/javascript"></script>
    <script type="text/javascript">
    
        $(document).ready(function () {
            'use strict';
            
            //===== ToolTip =====//
            if ($.isFunction($.fn.tooltip)) {
                $('[data-toggle="tooltip"]').tooltip();
            }
        });
    </script>
  </head>
   <body class="expand-data panel-data">
    <section class="content">
      <%-- <tiles:insertAttribute name="top"/> --%> <!--  top -->
      <%-- <tiles:insertAttribute name="header"/> --%><!--  header -->
      <%-- <tiles:insertAttribute name="option"/> --%> <!-- option -->
      <tiles:insertAttribute name="body"/> <!-- body -->
      <%-- <tiles:insertAttribute name="footer"/> --%> <!-- footer -->
    </section>
  </body>
</html>