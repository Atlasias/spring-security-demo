<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>
    
  <script type="text/javascript">
    $(document).ready(function () {
      'use strict';

      //===== Popover =====//
      if ($.isFunction($.fn.popover)) {
        $('[data-toggle="popover"]').popover();
      }
    });
  </script>
  
  
  <div class="pg-tp">
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
      <h4>Popovers</h4>
      <span>Some of extra awesome Popovers style.</span>
    </div>
  </div>
  <!-- Page Top -->
  
  
  <div class="panel-content">
    <div class="widget pad50-65">
      <div class="widget-title2">
        <h4>Static Popovers</h4>
      </div>
      <div class="popovers static">
        <div class="popover popover-top">
          <h3 class="popover-title">Popover top</h3>
          <div class="popover-content">
            <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
          </div>
        </div>

        <div class="popover popover-right">
          <h3 class="popover-title">Popover right</h3>
          <div class="popover-content">
            <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
          </div>
        </div>

        <div class="popover popover-bottom">
          <h3 class="popover-title">Popover bottom</h3>

          <div class="popover-content">
            <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
          </div>
        </div>

        <div class="popover popover-left">
          <h3 class="popover-title">Popover left</h3>
          <div class="popover-content">
            <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="widget pad50-65">
      <div class="widget-title2">
        <h4>Interactive Popovers</h4>
      </div>
      <div class="popovers">
        <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Popover on top</button>
        <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Popover on right</button>
        <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus
            sagittis lacus vel augue laoreet rutrum faucibus.">Popover on bottom</button>
        <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Popover on left</button>
      </div>
    </div>
  </div>
  <!-- Panel Content -->