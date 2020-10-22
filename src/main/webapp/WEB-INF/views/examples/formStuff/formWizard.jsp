<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>

  <script type="text/javascript">
    $(document).ready(function () {
      'use strict';

      var $info_form = $('#info-form');
      $info_form.validationEngine();
      $info_form.formToWizard({
        submitButton: 'SaveAccount',
        showProgress: true,
        nextBtnName: 'Next',
        prevBtnName: 'Previous',
        showStepNo: false,
        validateBeforeNext: function () {
          return $info_form.validationEngine('validate');
        }
      });

      $('#txt_stepNo').change(function () {
        $info_form.formToWizard('GotoStep', $(this).val());
      });

      $('#btn_next').on('click', function () {
        $info_form.formToWizard('NextStep');
      });

      $('#btn_prev').on('click', function () {
        $info_form.formToWizard('PreviousStep');
      });

    });
  </script>
    
  <div class="pg-tp">
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
      <h4>Form Wizard</h4>
      <span>Some of extra awesome Form Wizard page.</span>
    </div>
  </div>
  <!-- Page Top -->

  <div class="panel-content">
    <div class="widget pad50-65">
      <form class="form-wrp" id="info-form">
        <fieldset>
          <legend class="blue-bg">Personal Information
            <span class="blue-bg brd-rd50">1.</span>
          </legend>
          <div class="row mrg20">
            <div class="col-md-6 col-sm-6 col-lg-6">
              <input class="brd-rd5 validate[required]" name="first-name" id="first-name" type="text" placeholder="First Name*" />
              <span class="error-box"></span>
            </div>
            <div class="col-md-6 col-sm-6 col-lg-6">
              <input class="brd-rd5 validate[required]" name="last-name" id="last-name" type="text" placeholder="Last Name*" />
              <span class="error-box"></span>
            </div>
            <div class="col-md-12 col-sm-12 col-lg-12">
              <input class="brd-rd5 validate[required]" name="company-name" id="company-name" type="text" placeholder="Company Name*" />
              <span class="error-box"></span>
            </div>
            <div class="col-md-6 col-sm-6 col-lg-6">
              <input class="brd-rd5 validate[required]" name="address" id="address" type="text" placeholder="Street Address*" />
              <span class="error-box"></span>
            </div>
            <div class="col-md-6 col-sm-6 col-lg-6">
              <input class="brd-rd5 validate[required]" name="address2" id="address2" type="text" placeholder="Street Address 2*" />
              <span class="error-box"></span>
            </div>
            <div class="col-md-6 col-sm-6 col-lg-6">
              <input class="brd-rd5 validate[required]" name="city" id="city" type="text" placeholder="Town/City*" />
              <span class="error-box"></span>
            </div>
            <div class="col-md-6 col-sm-6 col-lg-6">
              <div class="slct-bx">
                <span>
                  <select>
                    <option>State*</option>
                    <option>State 1</option>
                    <option>State 2</option>
                    <option>State 3</option>
                  </select>
                </span>
              </div>
            </div>
            <div class="col-md-6 col-sm-6 col-lg-6">
              <input class="brd-rd5 validate[required]" name="postal-code" id="postal-code" type="text" placeholder="Zip/Postal Code*"
              />
              <span class="error-box"></span>
            </div>
            <div class="col-md-6 col-sm-6 col-lg-6">
              <input class="brd-rd5 validate[email],required]" name="email" id="email" type="email" placeholder="Email Address*" />
              <span class="error-box"></span>
            </div>
          </div>
        </fieldset>
        <fieldset>
          <legend class="blue-bg">Account Information
            <span class="blue-bg brd-rd50">2.</span>
          </legend>
          <div class="row mrg20">
            <div class="col-md-6 col-sm-6 col-lg-6">
              <input class="brd-rd5 validate[required]" name="user-name" id="user-name" type="text" placeholder="User Name*" />
              <span class="error-box"></span>
            </div>
            <div class="col-md-6 col-sm-6 col-lg-6">
              <input class="brd-rd5 validate[email],required]" name="email" id="email2" type="email" placeholder="Email Address*" />
              <span class="error-box"></span>
            </div>
            <div class="col-md-12 col-sm-12 col-lg-6">
              <input class="brd-rd5 validate[required]" name="password" id="password" type="password" placeholder="Confirm Password*" />
              <span class="error-box"></span>
            </div>
            <div class="col-md-6 col-sm-6 col-lg-6">
              <input class="brd-rd5 validate[required]" name="confirm-password" id="confirm-password" type="password" placeholder="Password*"
              />
              <span class="error-box"></span>
            </div>
          </div>
        </fieldset>
        <fieldset>
          <legend class="blue-bg3">Finish
            <span class="blue-bg3 brd-rd50">3.</span>
          </legend>
          <span class="chck-bx">
            <input type="checkbox" id="terms-policy" />
            <label for="terms-policy">By Checking this box and continuing, I agree to the
              <a class="blue-clr" href="#" title="">Mega Stack Terms</a> and
              <a class="blue-clr" href="#" title="">Privacy Policy</a>
            </label>
          </span>
          <span class="chck-bx">
            <input type="checkbox" id="related-email" />
            <label for="related-email">Can we send you our updates and product related email?</label>
          </span>
        </fieldset>
        <div id="smartwizard">
          <!-- <ul>
                    <li><a class="blue-bg" href="#step-1" title="">Personal Information <span class="blue-bg brd-rd50">1.</span></a></li>
                    <li><a class="blue-bg" href="#step-2" title="">Account Information <span class="blue-bg brd-rd50">2.</span></a></li>
                    <li><a class="blue-bg3" href="#step-3" title="">Finish <span class="blue-bg3 brd-rd50">3.</span></a></li>
                </ul> -->
        </div>
      </form>
    </div>
  </div>
  <!-- Panel Content -->