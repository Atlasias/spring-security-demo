<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>
    
	<script type="text/javascript">
    $(document).ready(function () {
      'use strict';

      //===== Display Image Script =====//
      function readURL(input) {
        if (input.files && input.files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
            $('#rslt-img').attr('src', e.target.result);
          }

          reader.readAsDataURL(input.files[0]);
        }
      }

      $("#upld-file").change(function () {
        readURL(this);
      });
    });
  </script>
	
  <div class="pg-tp">
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
      <h4>Profile Edit Page</h4>
      <span>You can easily style a Profile Page.</span>
    </div>
  </div>
  <!-- Page Top -->

  <div class="panel-content">
    <div class="widget pad50-65">
      <div class="profile-wrp">
        <div class="row">
          <div class="col-md-4 col-sm-12 col-lg-4">
            <div class="profile-info-wrp edit-prf">
              <div class="insta-wrp">
                <span>
                  <img id="rslt-img" class="brd-rd50" src="images/resource/insta-dp.jpg" alt="" />
                  <span class="sts online"></span>
                  <label class="fileContainer brd-rd50">
                    <i class="fa fa-camera"></i>
                    <input id="upld-file" type="file" />
                  </label>
                </span>
                <div class="insta-inf">
                  <h2>
                    <a href="#" title="">John Smith</a>
                    <i class="fa fa-pencil edit-btn"></i>
                  </h2>
                  <span class="desg">Product Manager
                    <a class="blue-clr" href="#" title="">@GraphicXspace</a>
                  </span>
                  <div class="grn-inf-lst">
                    <i class="fa fa-user"></i> Name:
                    <input type="text" class="brd-rd5" placeholder="" />
                  </div>
                  <div class="grn-inf-lst">
                    <i class="fa fa-user"></i> Designation:
                    <input type="text" class="brd-rd5" placeholder="" />
                  </div>
                </div>
              </div>
              <div class="opt-btn-lst">
                <div class="opt-btn">
                  <span>
                    <i class="fa fa-envelope"></i> Message:</span>
                  <label class="switch-light switch-candy" onclick="">
                    <input type="checkbox" />
                    <span>
                      <span>Off</span>
                      <span>On</span>
                      <a></a>
                    </span>
                  </label>
                </div>
                <div class="opt-btn">
                  <span>
                    <i class="fa fa-weixin"></i> Chat:</span>
                  <label class="switch-light switch-candy" onclick="">
                    <input type="checkbox" />
                    <span>
                      <span>Off</span>
                      <span>On</span>
                      <a></a>
                    </span>
                  </label>
                </div>
                <div class="opt-btn">
                  <span>
                    <i class="fa fa-phone"></i> Call:</span>
                  <label class="switch-light switch-candy" onclick="">
                    <input type="checkbox" />
                    <span>
                      <span>Off</span>
                      <span>On</span>
                      <a></a>
                    </span>
                  </label>
                </div>
              </div>
              <div class="usr-abut">
                <h5 class="prf-edit-tl">About Me
                  <i class="fa fa-pencil edit-btn"></i>
                </h5>
                <textarea class="brd-rd5" placeholder="Write about yourself..."></textarea>
              </div>
              <div class="usr-gnrl-inf">
                <h5 class="prf-edit-tl">General Info
                  <i class="fa fa-pencil edit-btn"></i>
                </h5>
                <div class="grn-inf-lst">
                  <i class="fa fa-home"></i> Company Name:
                  <input type="text" class="brd-rd5" placeholder="" />
                </div>
                <div class="grn-inf-lst">
                  <i class="fa fa-graduation-cap"></i> Position:
                  <input type="text" class="brd-rd5" placeholder="" />
                </div>
              </div>
              <div class="usr-cnt-inf">
                <h5 class="prf-edit-tl">Contact Information
                  <i class="fa fa-pencil edit-btn"></i>
                </h5>
                <ul class="usr-cnt-inf-lst">
                  <li>
                    <i class="fa fa-home"></i>
                    <strong>Address:</strong>
                    <input type="text" class="brd-rd5" placeholder="" />
                  </li>
                  <li>
                    <i class="fa fa-phone"></i>
                    <strong>Phone:</strong>
                    <input type="text" class="brd-rd5" placeholder="" />
                  </li>
                  <li>
                    <i class="fa fa-fax"></i>
                    <strong>Fax:</strong>
                    <input type="text" class="brd-rd5" placeholder="" />
                  </li>
                  <li>
                    <i class="fa fa-envelope"></i>
                    <strong>Email ID:</strong>
                    <input type="email" class="brd-rd5" placeholder="" />
                  </li>
                  <li>
                    <i class="fa fa-facebook-square"></i>
                    <strong>Add Facebook URL:</strong>
                    <input type="text" class="brd-rd5" placeholder="" />
                  </li>
                  <li>
                    <i class="fa fa-twitter"></i>
                    <strong>Add Twitter URL:</strong>
                    <input type="text" class="brd-rd5" placeholder="" />
                  </li>
                  <li>
                    <i class="fa fa-google-plus"></i>
                    <strong>Add Google URL:</strong>
                    <input type="text" class="brd-rd5" placeholder="" />
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-md-8 col-sm-12 col-lg-8">
            <div class="usr-actvty-wrp widget pad50-40">
              <h4 class="widget-title">Activity
                <span class="green-bg badge">05 Messages</span>
              </h4>
              <div class="slct-bx">
                <i>Added:</i>
                <span>
                  <select>
                    <option>Any Date</option>
                    <option>15-9-2017</option>
                    <option>12-8-2017</option>
                    <option>08-7-2017</option>
                    <option>10-6-2017</option>
                  </select>
                </span>
              </div>
              <form class="cntnt-frm brd-rd5">
                <textarea placeholder="What's in your mind"></textarea>
                <div class="cnt-opt">
                  <div class="cnt-opt-lst">
                    <span>
                      <label class="fileContainer">
                        <i class="fa fa-picture-o"></i>
                        <input type="file" />
                      </label>
                    </span>
                    <span>
                      <label class="fileContainer">
                        <i class="fa fa-microphone"></i>
                        <input type="file" />
                      </label>
                    </span>
                    <span>
                      <label class="fileContainer">
                        <i class="ion-upload"></i>
                        <input type="file" />
                      </label>
                    </span>
                    <span>
                      <i class="fa fa-paper-plane"></i>
                    </span>
                  </div>
                  <button class="brd-rd5 green-bg" type="submit">Post</button>
                </div>
              </form>
              <div class="act-pst-lst">
                <div class="act-pst">
                  <img class="brd-rd50" src="images/resource/acti-thmb1.jpg" alt="" />
                  <div class="act-pst-inf">
                    <div class="act-pst-inr">
                      <h5>
                        <a href="#" title="">Sadi Orlaf</a>
                      </h5> posted in
                      <a href="#" title="">Material</a>
                    </div>
                    <span class="spnd-tm">5 Min Ago</span>
                    <div class="act-pst-dta">
                      <p>That's awesome!</p>
                    </div>
                    <span class="pst-tm">
                      <a href="#" title="">
                        <i class="fa fa-trash-o"></i> Remove</a>
                    </span>
                    <div class="act-pst-lk-stm">
                      <a class="brd-rd5 green-bg-hover" href="#" title="">
                        <i class="ion-heart"></i> Love</a>
                      <a class="brd-rd5 blue-bg-hover" href="#" title="">
                        <i class="ion-thumbsup"></i> Like</a>
                    </div>
                  </div>
                </div>
                <div class="act-pst">
                  <img class="brd-rd50" src="images/resource/acti-thmb2.jpg" alt="" />
                  <div class="act-pst-inf">
                    <div class="act-pst-inr">
                      <h5>
                        <a href="#" title="">Overtunk</a>
                      </h5> posted in
                      <a href="#" title="">New Blog</a>
                    </div>
                    <span class="spnd-tm">37 Min Ago</span>
                    <div class="act-pst-dta">
                      <p>That's awesome!</p>
                    </div>
                    <span class="pst-tm">
                      <a href="#" title="">
                        <i class="fa fa-trash-o"></i> Remove</a>
                    </span>
                    <div class="act-pst-lk-stm">
                      <a class="brd-rd5 green-bg-hover" href="#" title="">
                        <i class="ion-heart"></i> Love</a>
                      <a class="brd-rd5 blue-bg-hover" href="#" title="">
                        <i class="ion-thumbsup"></i> Like</a>
                    </div>
                  </div>
                </div>
                <div class="act-pst">
                  <img class="brd-rd50" src="images/resource/acti-thmb3.jpg" alt="" />
                  <div class="act-pst-inf">
                    <div class="act-pst-inr">
                      <h5>
                        <a href="#" title="">Kim Smith</a>
                      </h5> add
                      <a href="#" title="">1 photo</a>
                    </div>
                    <span class="spnd-tm">50 Min Ago</span>
                    <div class="act-pst-dta">
                      <img src="images/resource/act-pst-img1.jpg" alt="" />
                    </div>
                    <span class="pst-tm">
                      <a href="#" title="">
                        <i class="fa fa-trash-o"></i> Remove</a>
                    </span>
                    <div class="act-pst-lk-stm">
                      <a class="brd-rd5 green-bg-hover" href="#" title="">
                        <i class="ion-heart"></i> Love</a>
                      <a class="brd-rd5 blue-bg-hover" href="#" title="">
                        <i class="ion-thumbsup"></i> Like</a>
                    </div>
                  </div>
                </div>
                <div class="act-pst">
                  <img class="brd-rd50" src="images/resource/acti-thmb4.jpg" alt="" />
                  <div class="act-pst-inf">
                    <div class="act-pst-inr">
                      <h5>
                        <a href="#" title="">Chris Johnathan</a>
                      </h5> started following
                      <h6>
                        <a href="#" title="">Monica Smith</a>
                      </h6> site.</div>
                    <span class="spnd-tm">1 Hour Ago</span>
                    <div class="act-pst-dta">
                    </div>
                    <span class="pst-tm">
                      <a href="#" title="">
                        <i class="fa fa-trash-o"></i> Remove</a>
                    </span>
                    <div class="act-pst-lk-stm">
                      <a class="brd-rd5 green-bg-hover" href="#" title="">
                        <i class="ion-heart"></i> Love</a>
                      <a class="brd-rd5 blue-bg-hover" href="#" title="">
                        <i class="ion-thumbsup"></i> Like</a>
                    </div>
                  </div>
                </div>
                <div class="act-pst">
                  <img class="brd-rd50" src="images/resource/acti-thmb2.jpg" alt="" />
                  <div class="act-pst-inf">
                    <div class="act-pst-inr">
                      <h5>
                        <a href="#" title="">Overtunk</a>
                      </h5> posted in
                      <a href="#" title="">New Blog</a>
                    </div>
                    <span class="spnd-tm">37 Min Ago</span>
                    <div class="act-pst-dta">
                      <p>That's awesome!</p>
                    </div>
                    <span class="pst-tm">
                      <a href="#" title="">
                        <i class="fa fa-trash-o"></i> Remove</a>
                    </span>
                    <div class="act-pst-lk-stm">
                      <a class="brd-rd5 green-bg-hover" href="#" title="">
                        <i class="ion-heart"></i> Love</a>
                      <a class="brd-rd5 blue-bg-hover" href="#" title="">
                        <i class="ion-thumbsup"></i> Like</a>
                    </div>
                  </div>
                </div>
                <div class="act-pst">
                  <img class="brd-rd50" src="images/resource/acti-thmb3.jpg" alt="" />
                  <div class="act-pst-inf">
                    <div class="act-pst-inr">
                      <h5>
                        <a href="#" title="">Kim Smith</a>
                      </h5> add
                      <a href="#" title="">2 photos</a>
                    </div>
                    <span class="spnd-tm">50 Min Ago</span>
                    <div class="act-pst-dta">
                      <img src="images/resource/act-pst-img1.jpg" alt="" />
                      <img src="images/resource/act-pst-img2.jpg" alt="" />
                    </div>
                    <span class="pst-tm">
                      <a href="#" title="">
                        <i class="fa fa-trash-o"></i> Remove</a>
                    </span>
                    <div class="act-pst-lk-stm">
                      <a class="brd-rd5 green-bg-hover" href="#" title="">
                        <i class="ion-heart"></i> Love</a>
                      <a class="brd-rd5 blue-bg-hover" href="#" title="">
                        <i class="ion-thumbsup"></i> Like</a>
                    </div>
                  </div>
                </div>
                <div class="act-pst">
                  <img class="brd-rd50" src="images/resource/acti-thmb4.jpg" alt="" />
                  <div class="act-pst-inf">
                    <div class="act-pst-inr">
                      <h5>
                        <a href="#" title="">Chris Johnathan</a>
                      </h5> started following
                      <h6>
                        <a href="#" title="">Monica Smith</a>
                      </h6> site.</div>
                    <span class="spnd-tm">1 Hour Ago</span>
                    <div class="act-pst-dta">
                    </div>
                    <span class="pst-tm">
                      <a href="#" title="">
                        <i class="fa fa-trash-o"></i> Remove</a>
                    </span>
                    <div class="act-pst-lk-stm">
                      <a class="brd-rd5 green-bg-hover" href="#" title="">
                        <i class="ion-heart"></i> Love</a>
                      <a class="brd-rd5 blue-bg-hover" href="#" title="">
                        <i class="ion-thumbsup"></i> Like</a>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Activity Post List -->
              <div class="vw-mr-act">
                <a href="#" title="">View More Activity</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Panel Content -->