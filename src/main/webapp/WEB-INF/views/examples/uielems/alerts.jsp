<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>
<div class="option-panel">
    <span class="panel-btn">
      <i class="fa ion-android-settings fa-spin"></i>
    </span>
    <div class="color-panel">
      <h4>Text Color</h4>
      <span class="color1" onclick="setActiveStyleSheet('color1'); return false;">
        <i></i>
      </span>
      <span class="color2" onclick="setActiveStyleSheet('color2'); return false;">
        <i></i>
      </span>
      <span class="color3" onclick="setActiveStyleSheet('color'); return false;">
        <i></i>
      </span>
      <span class="color4" onclick="setActiveStyleSheet('color4'); return false;">
        <i></i>
      </span>
      <span class="color5" onclick="setActiveStyleSheet('color5'); return false;">
        <i></i>
      </span>
    </div>
  </div>
  <!-- Options Panel -->
  <div class="pg-tp">
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
      <h4>Alerts</h4>
      <span>Some of extra awesome Alerts style.</span>
    </div>
  </div>
  <!-- Page Top -->

  <div class="panel-content">
    <div class="widget pad50-65">
      <div class="widget-title2">
        <h4>Alerts</h4>
      </div>
      <div class="alerts">
        <div class="alert alert-success">
          <strong>Well done!</strong> You successfully read this important alert message.</div>
        <div class="alert alert-info">
          <strong>Heads up!</strong> This alert needs your attention, but it's not super important.</div>
        <div class="alert alert-warning">
          <strong>Warning!</strong> Better check yourself, you're not looking too good.</div>
        <div class="alert alert-danger">
          <strong>Oh snap!</strong> Change a few things up and try submitting again.</div>
      </div>
    </div>
    <div class="widget pad50-65">
      <div class="widget-title2">
        <h4>Alerts With Link Color</h4>
      </div>
      <div class="alerts">
        <div class="alert alert-success">
          <strong>Well done!</strong> You successfully read
          <a href="#" class="alert-link">this important alert message</a>.</div>
        <div class="alert alert-info">
          <strong>Heads up!</strong> This
          <a href="#" class="alert-link">alert needs your attention</a>, but it's not super important.</div>
        <div class="alert alert-warning">
          <strong>Warning!</strong> Better check yourself, you're
          <a href="#" class="alert-link">not looking too good</a>.</div>
        <div class="alert alert-danger">
          <strong>Oh snap!</strong>
          <a href="#" class="alert-link">Change a few things up</a> and try submitting again.</div>
      </div>
    </div>
    <div class="widget pad50-65">
      <div class="widget-title2">
        <h4>Alerts With Dismissing</h4>
      </div>
      <div class="alerts">
        <div class="alert alert-success">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>Well done!</strong> You successfully read this important alert message.</div>
        <div class="alert alert-info">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>Heads up!</strong> This alert needs your attention, but it's not super important.</div>
        <div class="alert alert-warning">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>Warning!</strong> Better check yourself, you're not looking too good.</div>
        <div class="alert alert-danger">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>Oh snap!</strong> Change a few things up and try submitting again.</div>
      </div>
    </div>
  </div>
  <!-- Panel Content -->