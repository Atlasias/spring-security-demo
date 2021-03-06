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

      $('#acordn2 .acrdn-cnt').hide();
      $('#acordn2 h4:first').addClass('active').next().slideDown(500).parent().addClass("activate");
      $('#acordn2 h4').on("click", function () {
        if ($(this).next().is(':hidden')) {
          $('#acordn2 h4').removeClass('active').next().slideUp(500).parent().removeClass("activate");
          $(this).toggleClass('active').next().slideDown(500).parent().toggleClass("activate");
        }
      });
    });
  </script>
  
  <div class="pg-tp">
    <i class="ion-cube"></i>
    <div class="pr-tp-inr">
      <h4>Tabs & Accordians</h4>
      <span>Management of Tabs & Accordians.</span>
    </div>
  </div>
  <!-- Page Top -->
  
  
  <div class="panel-content">
    <div class="widget pad50-65">
      <div class="widget-title2">
        <h4>Tabs Style</h4>
        <span>This is the Tab Style</span>
      </div>
      <div class="tab-styl tab-styl1">
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#tab1-1">Tab 1</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#tab1-2">Tab 2</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#tab1-3">Tab 3</a>
          </li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane fade show active" id="tab1-1">
            <p>Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor,
              nibh moles massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu erat accumsan
              adipiscing risus, li um venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie
              neque nullam scelerisque neque quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue
              dolor enim integer luctus, nisi suscipit gravi putate nisi viverra luctus id leo dictum lorem, inceptos nibh
              orci.</p>
            <p>Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor,
              nibh moles massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu erat accumsan
              adipiscing risus, li um venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie
              neque nullam scelerisque neque quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue
              dolor enim integer luctus, nisi suscipit gravi putate nisi viverra luctus id leo dictum lorem, inceptos nibh
              orci.</p>
          </div>
          <div class="tab-pane fade" id="tab1-2">
            <p>Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor,
              nibh moles massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu erat accumsan
              adipiscing risus, li um venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie
              neque nullam scelerisque neque quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue
              dolor enim integer luctus, nisi suscipit gravi putate nisi viverra luctus id leo dictum lorem, inceptos nibh
              orci.</p>
            <p>Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor,
              nibh moles massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu erat accumsan
              adipiscing risus, li um venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie
              neque nullam scelerisque neque quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue
              dolor enim integer luctus, nisi suscipit gravi putate nisi viverra luctus id leo dictum lorem, inceptos nibh
              orci.</p>
          </div>
          <div class="tab-pane fade" id="tab1-3">
            <p>Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor,
              nibh moles massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu erat accumsan
              adipiscing risus, li um venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie
              neque nullam scelerisque neque quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue
              dolor enim integer luctus, nisi suscipit gravi putate nisi viverra luctus id leo dictum lorem, inceptos nibh
              orci.</p>
            <p>Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor,
              nibh moles massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu erat accumsan
              adipiscing risus, li um venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie
              neque nullam scelerisque neque quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue
              dolor enim integer luctus, nisi suscipit gravi putate nisi viverra luctus id leo dictum lorem, inceptos nibh
              orci.</p>
          </div>
        </div>
      </div>
      <div class="tab-styl tab-styl2">
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#tab2-1">Tab 1</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#tab2-2">Tab 2</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#tab2-3">Tab 3</a>
          </li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane fade show active" id="tab2-1">
            <p>Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor,
              nibh moles massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu erat accumsan
              adipiscing risus, li um venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie
              neque nullam scelerisque neque quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue
              dolor enim integer luctus, nisi suscipit gravi putate nisi viverra luctus id leo dictum lorem, inceptos nibh
              orci.</p>
            <p>Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor,
              nibh moles massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu erat accumsan
              adipiscing risus, li um venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie
              neque nullam scelerisque neque quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue
              dolor enim integer luctus, nisi suscipit gravi putate nisi viverra luctus id leo dictum lorem, inceptos nibh
              orci.</p>
          </div>
          <div class="tab-pane fade" id="tab2-2">
            <p>Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor,
              nibh moles massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu erat accumsan
              adipiscing risus, li um venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie
              neque nullam scelerisque neque quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue
              dolor enim integer luctus, nisi suscipit gravi putate nisi viverra luctus id leo dictum lorem, inceptos nibh
              orci.</p>
            <p>Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor,
              nibh moles massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu erat accumsan
              adipiscing risus, li um venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie
              neque nullam scelerisque neque quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue
              dolor enim integer luctus, nisi suscipit gravi putate nisi viverra luctus id leo dictum lorem, inceptos nibh
              orci.</p>
          </div>
          <div class="tab-pane fade" id="tab2-3">
            <p>Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor,
              nibh moles massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu erat accumsan
              adipiscing risus, li um venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie
              neque nullam scelerisque neque quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue
              dolor enim integer luctus, nisi suscipit gravi putate nisi viverra luctus id leo dictum lorem, inceptos nibh
              orci.</p>
            <p>Potenti elit lectus augue eget iaculis vitae etiam, ullamcorper etiam bibendum ad feugiat magna accumsan dolor,
              nibh moles massa, fusce ante convallis ante urna molestie vulputate bibendum tempus ante justo arcu erat accumsan
              adipiscing risus, li um venenatis sit nisl nisi ultricies sed, fames aliquet consectetur consequat nostra molestie
              neque nullam scelerisque neque quisque etiam egestas vulputate massa, curabitur tellus massa venenatis congue
              dolor enim integer luctus, nisi suscipit gravi putate nisi viverra luctus id leo dictum lorem, inceptos nibh
              orci.</p>
          </div>
        </div>
      </div>
    </div>
    <div class="widget pad50-65">
      <div class="widget-title2">
        <h4>Accordians Style</h4>
        <span>This is the Accordians Style</span>
      </div>
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
      </div>
      <!-- Accordions  -->

      <div id="acordn2" class="acordn-styl2 mt80">
        <div class="acordn-itm brd-rd5">
          <h4>
            <i class="fa fa-chevron-down blue-bg"></i> There are several types of invoice Templates available?</h4>
          <div class="acrdn-cnt">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. Ipsum is simply dummy text of
              the printing and typesetting industry. This one is yet another “Simple Invoice Template” specifically designed
              and developed for Microsoft Word (MS Word). There is nothing fancy in this “Simple Invoice Template” and it
              is pretty straight forward to understand what to fill in there.</p>
          </div>
        </div>
        <div class="acordn-itm brd-rd5">
          <h4>
            <i class="fa fa-chevron-down blue-bg"></i> Invoice Templates and best suited for people who delivers packages locally?</h4>
          <div class="acrdn-cnt">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. Ipsum is simply dummy text of
              the printing and typesetting industry. This one is yet another “Simple Invoice Template” specifically designed
              and developed for Microsoft Word (MS Word). There is nothing fancy in this “Simple Invoice Template” and it
              is pretty straight forward to understand what to fill in there.</p>
          </div>
        </div>
        <div class="acordn-itm brd-rd5">
          <h4>
            <i class="fa fa-chevron-down blue-bg"></i> This "Simple Invoice Template" does not give an option of adding shipping?</h4>
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