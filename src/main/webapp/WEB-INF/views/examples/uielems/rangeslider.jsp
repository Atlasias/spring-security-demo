<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>
    
  <script type="text/javascript">
    $(document).ready(function () {
      'use strict';

      $("#range_1").ionRangeSlider({
        min: 0,
        max: 5000,
        from: 1000,
        to: 4000,
        type: 'double',
        step: 1,
        prefix: "$",
        prettify: true,
        hasGrid: true
      });

      $("#range_2").ionRangeSlider();

      $("#range_5").ionRangeSlider({
        min: 0,
        max: 10,
        type: 'single',
        step: 0.1,
        postfix: " mm",
        prettify: false,
        hasGrid: true
      });
      $("#range_6").ionRangeSlider({
        min: -50,
        max: 50,
        from: 0,
        type: 'single',
        step: 1,
        postfix: "°",
        prettify: false,
        hasGrid: true
      });

      $("#range_4").ionRangeSlider({
        type: "single",
        step: 100,
        postfix: " light years",
        from: 55000,
        hideMinMax: true,
        hideFromTo: false
      });
      $("#range_3").ionRangeSlider({
        type: "double",
        postfix: " miles",
        step: 10000,
        from: 25000000,
        to: 35000000,
        onChange: function (obj) {
          var t = "";
          for (var prop in obj) {
            t += prop + ": " + obj[prop] + "\r\n";
          }
          $("#result").html(t);
        },
        onLoad: function (obj) {
          //
        }
      });
    });
  </script>
  
  <div class="pg-tp">
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
      <h4>Range Slider</h4>
      <span>Some of extra awesome Range Slider.</span>
    </div>
  </div>
  <!-- Page Top -->
  
  
  <div class="panel-content">
    <div class="widget pad50-65">
      <div class="range-slider">
        <div class="demo demo_left">
          <input id="range_1" type="text" name="range_2" value="" />
          <!-- Range 1 -->
        </div>
        <input type="text" id="range_2" />
        <!-- Range 2 -->
        <input type="text" id="range_3" />
        <!-- Range 3  -->
        <input type="text" id="range_5" />
        <!-- Range 5 -->
        <input type="text" id="range_6" />
        <!-- Range 6 -->
      </div>
    </div>
  </div>
  <!-- Panel Content -->