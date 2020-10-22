<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>
	
	<script type="text/javascript">
    $(document).ready(function () {
      'use strict';

      $('.product-sizes-list > a').on('click', function () {
        $('.product-sizes-list a').removeClass('active');
        $(this).addClass('active');
        return false;
      });

      if ($.isFunction($.fn.slick)) {
        //===== Product Image Carousel =====//
        $('.product-img-car').slick({
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows: false,
          slide: 'li',
          fade: true,
          asNavFor: '.product-thumb-car'
        });
        $('.product-thumb-car').slick({
          slidesToShow: 3,
          slidesToScroll: 1,
          asNavFor: '.product-img-car',
          dots: false,
          arrows: false,
          slide: 'li',
          centerPadding: '0px',
          focusOnSelect: true,
          responsive: [{
              breakpoint: 1200,
              settings: {
                slidesToShow: 3,
                slidesToScroll: 1,
                infinite: true
              }
            },
            {
              breakpoint: 770,
              settings: {
                slidesToShow: 3,
                slidesToScroll: 1
              }
            },
            {
              breakpoint: 500,
              settings: {
                slidesToShow: 3,
                slidesToScroll: 1
              }
            }
          ]
        });
      }

      if ($.isFunction($.fn.TouchSpin)) {
        $('.qnty > input').TouchSpin({});
      }
    });
  </script>
	
  <div class="pg-tp">
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
      <h4>Product Details</h4>
      <span>Management of products</span>
    </div>
  </div>
  <!-- Page Top -->

  <div class="panel-content">
    <div class="widget pad50-65">
      <div class="product-details-wrap">
        <div class="product-details-inf">
          <div class="row">
            <div class="col-md-5 col-sm-12 col-lg-5">
              <div class="product-img">
                <ul class="product-img-car">
                  <li>
                    <img class="brd-rd5" src="images/resource/prd-dtl-img1.jpg" alt="" />
                  </li>
                  <li>
                    <img class="brd-rd5" src="images/resource/prd-dtl-img2.jpg" alt="" />
                  </li>
                  <li>
                    <img class="brd-rd5" src="images/resource/prd-dtl-img3.jpg" alt="" />
                  </li>
                  <li>
                    <img class="brd-rd5" src="images/resource/prd-dtl-img4.jpg" alt="" />
                  </li>
                </ul>
                <ul class="product-thumb-car">
                  <li>
                    <div class="prod-thmb brd-rd5">
                      <img src="images/resource/prd-dtl-thmb1.jpg" alt="" />
                    </div>
                  </li>
                  <li>
                    <div class="prod-thmb brd-rd5">
                      <img src="images/resource/prd-dtl-thmb2.jpg" alt="" />
                    </div>
                  </li>
                  <li>
                    <div class="prod-thmb brd-rd5">
                      <img src="images/resource/prd-dtl-thmb3.jpg" alt="" />
                    </div>
                  </li>
                  <li>
                    <div class="prod-thmb brd-rd5">
                      <img src="images/resource/prd-dtl-thmb4.jpg" alt="" />
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-md-7 col-sm-12 col-lg-7">
              <div class="product-details-inf-inr">
                <div class="product-details-hd">
                  <span class="cate">
                    <a href="#" title="">Home</a> /
                    <a href="#" title="">Fashion Trend</a>
                  </span>
                  <span class="stock in brd-rd30 blue-bg">Instock</span>
                  <div class="scl-shr">
                    <i class="fa fa-share-alt brd-rd50"></i>
                    <span class="scl-icns">
                      <a class="brd-rd50" href="#" title="">
                        <i class="fa fa-facebook"></i>
                      </a>
                      <a class="brd-rd50" href="#" title="">
                        <i class="fa fa-twitter"></i>
                      </a>
                      <a class="brd-rd50" href="#" title="">
                        <i class="fa fa-google-plus"></i>
                      </a>
                      <a class="brd-rd50" href="#" title="">
                        <i class="fa fa-linkedin"></i>
                      </a>
                    </span>
                  </div>
                </div>
                <h1>Bonfire Shorts in Castaway</h1>
                <span class="price">
                  <ins class="green-clr">$19.00</ins>
                  <del>$26.00</del>
                </span>
                <div class="product-rvw">
                  <span class="ratings">
                    <i class="fa fa-star-o on"></i>
                    <i class="fa fa-star-o on"></i>
                    <i class="fa fa-star-o on"></i>
                    <i class="fa fa-star-o on"></i>
                    <i class="fa fa-star-o on"></i>
                  </span>
                  <i>Not Rated Yet</i>
                  <a href="#" title="" class="review-btn">
                    <i class="fa fa-pencil green-clr"></i> Write A Review</a>
                </div>
                <span class="product-cd-brd">
                  <span>Product Code:
                    <i class="green-clr">EDM-0078F4</i>
                  </span>
                  <span>Brand:
                    <i class="green-clr">Fabirex</i>
                  </span>
                </span>
                <div class="product-sizes">
                  <span>Size:</span>
                  <span class="product-sizes-list">
                    <a class="brd-rd5" href="#" title="">M</a>
                    <a class="brd-rd5" href="#" title="">L</a>
                    <a class="brd-rd5" href="#" title="">XL</a>
                  </span>
                </div>
                <div class="qnty-add-crt">
                  <div class="qnty brd-rd5">
                    <input type="text" value="2" />
                  </div>
                  <a class="blue-bg brd-rd5" href="#" title="">Add To Cart</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="product-detail-tabs brd-rd5 pad50">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <a class="nav-link active" data-toggle="tab" href="#prd-desc">Description</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#ad-inf">Additional Information</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#prd-revw">Reviews (01)</a>
            </li>
          </ul>

          <div class="tab-content">
            <div class="tab-pane active" id="prd-desc">
              <h3>Description</h3>
              <p>Sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut lab ore et dolore magna aliquyam erat, sed diam
                Demo Label. Avero eos et accusam et justo duo dolores. At vero eos et accusam et justo duodolores et ea rebum.
                Lorem ipsum dolor sit amet conse ctuere colorado secrets Resorts & Spas offer adults. Fusce ornare mi vel
                risus porttitor dignissim. Nunc eget risus at ipsum blandit ornare vel sed velit. Proin gravida arcu nisl,
                a dignissim mauris placerat id. Etiam vulputate ac tortor ac gravida. Proin accumsan placerat rutrum. Praesent
                ut eros ac nisi ultrices rhoncus et.</p>
              <ul>
                <li>Odio malorum invidunt meiea adhuc indoctum.</li>
                <li>Tantas possim complectitur ea vim.</li>
              </ul>
            </div>
            <div class="tab-pane" id="ad-inf">...</div>
            <div class="tab-pane" id="prd-revw">...</div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Panel Content -->