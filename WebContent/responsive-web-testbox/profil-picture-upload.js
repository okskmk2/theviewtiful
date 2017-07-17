function fileSizeChecker(event) {
	var eoutput = document.getElementById('output');
	var efileSize = document.getElementById("fileSize");
	//파일리더 객체를 브라우저에서 지원을 해야한다.
	if (typeof FileReader !== "undefined") {
	    var size = document.getElementById('file').files[0].size;
	    
	    if(size > 5*1024*1024){
	    	document.getElementById('file').value="";
	    	efileSize.innerHTML = "파일크기가 초과되었습니다.";
	    	eoutput.src = "";
	    	return;
	    }
	    else if(size > 1024*1024){
	    	efileSize.innerHTML = (size/1024/1024).toFixed(2) + "MB";
	    }
	    else if(size > 1024){
	    	efileSize.innerHTML = (size/1024).toFixed(2) + "KB";
	    }
	    else{
	    	efileSize.innerHTML = size + "byte";
	    }
	    var input = event.target;

	    var reader = new FileReader();
	    reader.onload = function(){
	    	var dataURL = reader.result;
	    	eoutput.src = dataURL;
	    	document.getElementById('output').style.display = "block";
	    	document.getElementById("submit").style.display="block";
	    	document.getElementById("reset").style.display="block";	    	
	    };
	    reader.readAsDataURL(input.files[0]);
	}
}
function initSrc() {
	document.getElementById('output').style.display = "none";
	document.getElementById('submit').style.display = "none";
	document.getElementById('reset').style.display = "none";
}