<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>
    
  <script type="text/javascript">
    $(document).ready(function () {
      'use strict';

      //===== ToolTip =====//
      if ($.isFunction($.fn.tooltip)) {
        $('[data-toggle="tooltip"]').tooltip();
      }
    });
  </script>
  
  <div class="pg-tp">
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
      <h4>Tooltips</h4>
      <span>Some of extra awesome Tooltips style.</span>
    </div>
  </div>
  <!-- Page Top -->
  
  <div class="panel-content">
    <div class="widget pad50-65">
      <div class="widget-title2">
        <h4>Static Tooltips</h4>
      </div>
      <div class="tooltips static">
        <div class="tooltip tooltip-top">
          <div class="tooltip-inner">Tooltip on the top</div>
        </div>
        <div class="tooltip tooltip-right">
          <div class="tooltip-inner">Tooltip on the right</div>
        </div>
        <div class="tooltip tooltip-bottom">
          <div class="tooltip-inner">Tooltip on the bottom</div>
        </div>
        <div class="tooltip tooltip-left">
          <div class="tooltip-inner">Tooltip on the left</div>
        </div>
      </div>
    </div>
    <div class="widget pad50-65">
      <div class="widget-title2">
        <h4>Interactive Tooltips</h4>
      </div>
      <div class="tooltips">
        <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">Tooltip on top</button>
        <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>
        <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">Tooltip on bottom</button>
        <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="left" title="Tooltip on left">Tooltip on left</button>
      </div>
    </div>
    <div class="widget pad50-65">
      <div class="widget-title2">
        <h4>Tooltips</h4>
      </div>
      <div class="tooltips">
        <p>Tight pants next level keffiyeh
          <a class="green-clr" href="#" data-toggle="tooltip" title="Default tooltip">you probably</a> haven't heard of them. Photo booth beard raw denim letterpress vegan messenger bag stumptown.
          Farm-to-table seitan, mcsweeney's fixie sustainable quinoa 8-bit american apparel
          <a class="green-clr" href="#" data-toggle="tooltip" title="" data-original-title="Another tooltip">have a</a> terry richardson vinyl chambray. Beard stumptown, cardigans banh mi lomo thundercats. Tofu biodiesel
          williamsburg marfa, four loko mcsweeney's cleanse vegan chambray. A really ironic artisan
          <a class="green-clr" href="#" data-toggle="tooltip" title="" data-original-title="Another one here too">whatever keytar</a>, scenester farm-to-table banksy Austin
          <a class="green-clr" href="#" data-toggle="tooltip" title="The last tip!">twitter handle</a> freegan cred raw denim single-origin coffee viral.</p>
      </div>
    </div>
  </div>
  <!-- Panel Content -->