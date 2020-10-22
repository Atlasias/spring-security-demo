<%@page contentType="text/html; charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false"%>>

  <div class="panel-content">
    <div class="lgn-wrp grysh">
      <div class="bg-img" style="background-image: url(/images/boris-1024x622.jpg);"></div>
      <div class="lgn-innr">
        <div class="widget lgn-frm">
          <div class="frm-tl">
            <h4>Login to Admin</h4>
            <span>Account is blocked</span>
          </div>
          <form id="frm_login" action="/j_spring_security_check" method="post" autocomplete="off">
            <div class="row mrg10">
              <div class="col-md-12 col-sm-12 col-lg-12">
              <input name="identifier" id="identifier" type="text" data-rule-required="true" class="brd-rd5 form-control" placeholder="사용자">
              </div>
              <div class="col-md-12 col-sm-12 col-lg-12">
                <input name="accessor" id="accessor" type="password" data-rule-required="true" class="brd-rd5 form-control" placeholder="PASSWORD">
              
              </div>
              <div class="col-md-12 col-sm-12 col-lg-12">
                <span class="chbx">
                  <input type="checkbox" id="rememberUser" name="rememberUser"/>
                  <label for="rememberUser">Remember Me</label>
                </span>
              </div>
              <div class="col-md-12 col-sm-12 col-lg-12">
                <button class="green-bg brd-rd5" type="submit">Login</button>
              </div>
              <div class="col-md-12 col-sm-12 col-lg-12">
                <a href="#" title="" class="frgt">Forget password?</a>
              </div>
              <!-- <div class="col-md-12 col-sm-12 col-lg-12">
                <a class="brd-rd5 blue-bg act-btn" href="#" title="">Create An Account</a>
              </div> -->
            </div>
          </form>
        </div>
      </div>
      <footer>
        <p>Copyright
          <a href="#" title="">Example Company</a> &amp; 2017 - 2018</p>
        <span>10GB of 250GB Free.</span>
      </footer>
    </div>
    <!-- Login Wrapper -->
  </div>
  <!-- Panel Content -->
   