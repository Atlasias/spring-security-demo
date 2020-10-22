<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>
	
	<script type="text/javascript">
    $(document).ready(function () {
      'use strict';

      //===== Vector Map =====//
      if ($.isFunction($.fn.vectorMap)) {
        $('#g-mp').vectorMap({
          map: 'world_en',
          backgroundColor: '#ffffff',
          hoverColor: '#7fc4e5',
          selectedColor: '#7fc4e5',
          color: '#d8d8d8',
          borderColor: '#bcbcbc',
          enableZoom: true,
          showTooltip: true,
          multiSelectRegion: true,
          selectedRegions: ['AK', 'WA']
        });
      }
    });
  </script>
	
  <div class="pg-tp">
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
      <h4>Vector Map</h4>
      <span>Some of extra awesome Vector map.</span>
    </div>
  </div>
  <!-- Page Top -->

  <div class="panel-content">
    <div class="widget pad50-65">
      <div id="g-mp" class="g-mp"></div>
    </div>
  </div>
  <!-- Panel Content -->