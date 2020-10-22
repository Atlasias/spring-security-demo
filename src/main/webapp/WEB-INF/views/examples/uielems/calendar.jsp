<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>
    
  <script>
    $(document).ready(function () {
      'use strict';

      //===== Full Calendar =====//
      if ($.isFunction($.fn.fullCalendar)) {
        $('#calendar').fullCalendar({
          header: {
            left: 'prev',
            center: 'title',
            right: 'next'
          },
          height: 530,
          defaultDate: '2017-09-12',
          editable: true,
          eventLimit: true,
          events: [{
              title: 'Long Event...',
              start: '2017-09-04'
            },
            {
              title: 'Repeating Event',
              start: '2017-09-09',
              end: '2017-09-10'
            },
            {
              title: 'Word Show...',
              start: '2017-09-21'
            }
          ]
        });
      }
    });
  </script>
  
  
  <div class="pg-tp">
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
      <h4>Order Received</h4>
      <span>Some of extra awesome Order Received.</span>
    </div>
  </div>
  <!-- Page Top -->
  
  <div class="panel-content">
    <div class="widget calndr-wdgt pad50-40">
      <h4 class="widget-title">Calendar</h4>
      <div class="calndr-wrp">
        <a class="blue-bg brd-rd5" href="#" title="">Add Event</a>
        <span class="slct-bx">
          <i class="ion-android-funnel"></i>
          <span>
            <select>
              <option>Monthly</option>
              <option>Yearly</option>
              <option>Weekly</option>
            </select>
          </span>
        </span>
        <div id="calendar"></div>
      </div>
    </div>
  </div>
  <!-- Panel Content -->
