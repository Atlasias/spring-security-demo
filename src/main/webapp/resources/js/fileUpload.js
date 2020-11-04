function handleFiles(fileInptObj,status){
	
	//console.log($(fileInptObj));
	console.log(status);
	if(status){
		var currentFiles = fileInptObj.files;
		console.log(currentFiles);
		if(currentFiles.length>0){
			var fileName = currentFiles[0].name;
			$(fileInptObj).prev().text(fileName);
		}
	}else{
		var $targetObj = $('input[name="'+fileInptObj+'"]');
		$targetObj.val('');
		$targetObj.prev().text('No File Selected.');
	}
	
}