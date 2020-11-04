<%@page contentType="text/html; charset=UTF-8" language="java"
	pageEncoding="utf-8" isELIgnored="false"%>
<div class="panel-content">
	<div class="widget pad50-65">
		<div class="widget-title2">
			<h4>Trendy Form</h4>
			<span>Please fill out the form below Form elements.</span>
		</div>
		<form id="fileDomain" class="form-wrp" action="/examples/multipart/singleUpload" method="post" enctype="multipart/form-data">
			<div class="row mrg20">
				<div class="col-md-12 col-sm-12 col-lg-12">
					<div class="file-upload-box">
						<strong>File Input:</strong>
						<div class="file-box">
							<label class="fileContainer"> 
								<span class="blue-bg brd-rd5">Browse</span>
								<span class="file-name" style="color:black;">No File Selected.</span>
								<input type="file" name="multipartFile" onchange="handleFiles(this,true)"/>
							</label>
							<label class="fileContainer">
								<a href="#" title="" class="brd-rd30 btn btn-danger" onclick="handleFiles('multipartfile',false)">
            					remove
            					</a>
							</label>
						</div>
					</div>
				</div>
				<div class="col-md-12 col-sm-12 col-lg-12">
					<button class="green-bg brd-rd5" type="submit">
						<i class="fa fa-paper-plane"></i> Send Form
					</button>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- Panel Content -->