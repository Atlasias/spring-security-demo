<%@page contentType="text/html; charset=UTF-8" language="java"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- spring security custom error 페이지에서는 jstl이 설정안됨 
errorHandler를 통해 추가적으로 설정하거나 기본 설정된 값을 사용해야함 -->

<div class="panel-content">
	<div class="lgn-wrp grysh">
		<div class="bg-img"
			style="background-image: url(/images/boris-1024x622.jpg);"></div>
		<div class="error-inner">
			<h2 class="blue-clr">
				<c:out value="${requestScope['javax.servlet.error.status_code']}" />
				<span>Error</span>
			</h2>
			<h4>
				error msg
				<span class="green-clr">;(</span>
			</h4>
			<p>
				request_uri :
				<c:out value="${requestScope['javax.servlet.error.request_uri']}" />
			</p>
			<br>
			<p>
				servlet_name :
				<c:out value="${requestScope['javax.servlet.error.servlet_name']}" />
			</p>
			<br>
			<p>
				exception :
				<c:out value="${requestScope['javax.servlet.error.exception']}" />
			</p>
			<br>
			<p>
				message :
				<c:out value="${requestScope['javax.servlet.error.message']}" />
			</p>
			<br>
			<!-- <form>
          <input class="brd-rd5" type="text" placeholder="Type and hit Enter..." />
          <button type="submit">
            <i class="fa fa-search"></i>
          </button>
        </form> -->

			<a class="blue-bg brd-rd5" href="/main" title="">Return To Home</a>
		</div>
	</div>
</div>