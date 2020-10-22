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
        var map = new google.maps.Map(document.getElementById('lct-mp'), mapOptions);

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
      <h4>Contact Us</h4>
      <span>Some of extra awesome Contact Us page.</span>
    </div>
  </div>
  <!-- Page Top -->

  <div class="panel-content">
    <div class="widget pad50-65">
      <div class="widget-title2">
        <h4>Get In Touch</h4>
        <span>Please fill out the form below to ask a question.</span>
      </div>
      <form class="contact-form">
        <div class="row mrg20">
          <div class="col-md-6 col-sm-12 col-lg-6">
            <input class="brd-rd5" type="text" placeholder="Name" />
          </div>
          <div class="col-md-6 col-sm-12 col-lg-6">
            <input class="brd-rd5" type="email" placeholder="Email Address" />
          </div>
          <div class="col-md-12 col-sm-12 col-lg-12">
            <span class="slct-bx">
              <span>
                <select>
                  <option>Select Your Subject</option>
                  <option>WordPress</option>
                  <option>HTML</option>
                  <option>Adminpanel</option>
                </select>
              </span>
            </span>
          </div>
          <div class="col-md-12 col-sm-12 col-lg-12">
            <textarea class="brd-rd5" placeholder="Enter your keyword"></textarea>
          </div>
          <div class="col-md-12 col-sm-12 col-lg-12">
            <button class="green-bg brd-rd5" type="submit">Contact Now</button>
          </div>
        </div>
      </form>
      <div class="cntct-dta">
        <div class="row">
          <div class="col-md-4 col-sm-6 col-lg-4">
            <div class="cntct-inf">
              <h4>Contact Information</h4>
              <ul class="cnt-inf-lst">
                <li>
                  <i class="fa fa-home"></i>
                  <div class="cnt-inf-int">
                    <h6>Address:</h6>
                    <span>121 King Street, Melbourne Victoria 3000 Australia</span>
                  </div>
                </li>
                <li>
                  <i class="fa fa-phone"></i>
                  <div class="cnt-inf-int">
                    <h6>Phone:</h6>
                    <span>+461 25 6115 45</span>
                  </div>
                </li>
                <li>
                  <i class="fa fa-home"></i>
                  <div class="cnt-inf-int">
                    <h6>Fax:</h6>
                    <span>1234 5678 90</span>
                  </div>
                </li>
                <li>
                  <i class="fa fa-envelope"></i>
                  <div class="cnt-inf-int">
                    <h6>Email ID:</h6>
                    <span>themextic@gmail.com</span>
                  </div>
                </li>
              </ul>
              <div class="social-btns">
                <a class="facebook brd-rd5" href="#" title="">
                  <i class="fa fa-facebook"></i>
                </a>
                <a class="twitter brd-rd5" href="#" title="">
                  <i class="fa fa-twitter"></i>
                </a>
                <a class="google brd-rd5" href="#" title="">
                  <i class="fa fa-google-plus"></i>
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-8 col-sm-6 col-lg-8">
            <div class="lct-mp brd-rd5" id="lct-mp"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Panel Content -->