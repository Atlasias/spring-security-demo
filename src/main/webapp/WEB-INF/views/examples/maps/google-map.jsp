<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>
	
	<script type="text/javascript">
    $(document).ready(function () {
      'use strict';

      //===== Google Map =====//
      function initialize() {
        var myLatlng = new google.maps.LatLng(51.5015588, -0.1276913);
        var mapOptions = {
          zoom: 14,
          disableDefaultUI: true,
          scrollwheel: false,
          center: myLatlng
        }
        var map = new google.maps.Map(document.getElementById('g-mp'), mapOptions);

        // var image = 'images/icon.png';
        var myLatLng = new google.maps.LatLng(51.5015588, -0.1276913);
        var beachMarker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          // icon: image
        });

      }
      google.maps.event.addDomListener(window, 'load', initialize);
    });
  </script>
	
  <div class="pg-tp">
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
      <h4>Google Map</h4>
      <span>Some of extra awesome Google map.</span>
    </div>
  </div>
  <!-- Page Top -->

  <div class="panel-content">
    <div class="widget pad50-65">
      <div id="g-mp" class="g-mp"></div>
    </div>
  </div>
  <!-- Panel Content -->