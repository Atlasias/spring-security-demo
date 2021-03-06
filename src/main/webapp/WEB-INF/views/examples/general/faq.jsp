<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>

<script>
    $(document).ready(function () {
      'use strict';

      //===== Accordion =====//
      $('#acordn .acrdn-cnt').hide();
      $('#acordn h4:first').addClass('active').next().slideDown(500).parent().addClass("activate");
      $('#acordn h4').on("click", function () {
        if ($(this).next().is(':hidden')) {
          $('#acordn h4').removeClass('active').next().slideUp(500).parent().removeClass("activate");
          $(this).toggleClass('active').next().slideDown(500).parent().toggleClass("activate");
        }
      });
    });
  </script>

  <div class="pg-tp">
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
      <h4>FAQ's</h4>
      <span>Very detailed &amp; featured admin.</span>
    </div>
  </div>
  <!-- Page Top -->

  <div class="panel-content">
    <div class="widget pad50-65">
      <div id="acordn" class="acordn-styl1">
        <div class="acordn-itm brd-rd5">
          <h4>
            <span>Q1.</span> There are several types of invoice Templates available?</h4>
          <div class="acrdn-cnt">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. Ipsum is simply dummy text of
              the printing and typesetting industry. This one is yet another “Simple Invoice Template” specifically designed
              and developed for Microsoft Word (MS Word). There is nothing fancy in this “Simple Invoice Template” and it
              is pretty straight forward to understand what to fill in there.</p>
          </div>
        </div>
        <div class="acordn-itm brd-rd5">
          <h4>
            <span>Q2.</span> Invoice Templates and best suited for people who delivers packages locally?</h4>
          <div class="acrdn-cnt">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. Ipsum is simply dummy text of
              the printing and typesetting industry. This one is yet another “Simple Invoice Template” specifically designed
              and developed for Microsoft Word (MS Word). There is nothing fancy in this “Simple Invoice Template” and it
              is pretty straight forward to understand what to fill in there.</p>
          </div>
        </div>
        <div class="acordn-itm brd-rd5">
          <h4>
            <span>Q3.</span> This "Simple Invoice Template" does not give an option of adding shipping?</h4>
          <div class="acrdn-cnt">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. Ipsum is simply dummy text of
              the printing and typesetting industry. This one is yet another “Simple Invoice Template” specifically designed
              and developed for Microsoft Word (MS Word). There is nothing fancy in this “Simple Invoice Template” and it
              is pretty straight forward to understand what to fill in there.</p>
          </div>
        </div>
        <div class="acordn-itm brd-rd5">
          <h4>
            <span>Q4.</span> Rest everything in this "Simple Invoice Template"?</h4>
          <div class="acrdn-cnt">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. Ipsum is simply dummy text of
              the printing and typesetting industry. This one is yet another “Simple Invoice Template” specifically designed
              and developed for Microsoft Word (MS Word). There is nothing fancy in this “Simple Invoice Template” and it
              is pretty straight forward to understand what to fill in there.</p>
          </div>
        </div>
        <div class="acordn-itm brd-rd5">
          <h4>
            <span>Q5.</span> Further below, you can also add the sales tax along with shipping?</h4>
          <div class="acrdn-cnt">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. Ipsum is simply dummy text of
              the printing and typesetting industry. This one is yet another “Simple Invoice Template” specifically designed
              and developed for Microsoft Word (MS Word). There is nothing fancy in this “Simple Invoice Template” and it
              is pretty straight forward to understand what to fill in there.</p>
          </div>
        </div>
        <div class="acordn-itm brd-rd5">
          <h4>
            <span>Q6.</span> This invoice template would be best suited for merchants?</h4>
          <div class="acrdn-cnt">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. Ipsum is simply dummy text of
              the printing and typesetting industry. This one is yet another “Simple Invoice Template” specifically designed
              and developed for Microsoft Word (MS Word). There is nothing fancy in this “Simple Invoice Template” and it
              is pretty straight forward to understand what to fill in there.</p>
          </div>
        </div>
      </div>
      <!-- Accordions  -->
    </div>
  </div>
  <!-- Panel Content -->