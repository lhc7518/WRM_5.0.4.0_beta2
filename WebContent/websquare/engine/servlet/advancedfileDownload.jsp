<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %><%
String ref = request.getHeader("referer");
if(ref == null || ref.equals("")) {
	response.setStatus(HttpServletResponse.SC_NOT_FOUND);
	return;
}
// 사용자 세션 정보를 이용한  접근제거 필요한 경우 아래 추가

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:xf="http://www.w3.org/2002/xforms" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:w2="http://www.inswave.com/websquare">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<META http-equiv="X-UA-Compatible" content="IE=Edge" />
<script type="text/javascript" language="javascript">
	
	var dataLoadStr = "";
	var dataLoadedStr = "";
	window.onload = doInit;
	function doInit() {
		dataLoadStr = opener.WebSquare.language.getMessage( "Upload_msg6" ) || "데이터 수집 중..";
		dataLoadedStr = opener.WebSquare.language.getMessage( "Upload_msg7" ) || "데이터 변환 완료";
		var textlayer = document.getElementById("textLayer");
		textlayer.innerHTML = dataLoadStr;
	}

	init = function (){
		parentObj = opener || parent;
		if(parentObj.WebSquare) {
			gridObj = parentObj.WebSquare.util.getComponentById(parentObj.window['downloadGridId']);
		} else {
			gridObj = parentObj[parentObj.window['downloadGridId']];
		}
		
		gridObj.downloadInit = true;
	}
	checkUpload = function(uploadPercent){
		if(uploadPercent === "end" ) {
			excelDone()
		} else {
			var textLayer = document.getElementById("textLayer");
			textLayer.innerHTML = dataLoadStr + Math.round(uploadPercent * 1000) /10  + "%";
		}
	}
	sendData = function(){
		gridObj.sendExcelData(gridObj.excelOptions,gridObj.excelInfoArr,gridObj.excelFinalStr);	
	} 
	cancle = function(){
		gridObj.cancleDownload();
	}
	excelDone = function(){
		var textLayer = document.getElementById("textLayer");
		textLayer.innerHTML = dataLoadedStr;
		var downloadButton = document.getElementById("downloadButton");
		downloadButton.disabled = false;
	}
	initialize = function() {
		var textLayer = document.getElementById("textLayer");
		textLayer.innerHTML = dataLoadStr + " 0%";
		var downloadButton = document.getElementById("downloadButton");
		downloadButton.disabled = true;
		init();
	}
</script>
<style>
	body {
		font-family: "dotum";
		font-size: 11px;
		font-weight: bold;
	}
</style>
</head>
<body style="background-color:#ffffff" onload="init()"> 
<img style="position:absolute;left:15px;top:15px;" src="../../message/images/progressingbar.gif" /><br />
<div id="textLayer" style="position:absolute;left:15px;width:150px;top:30px;height:15px;text-align:center;">
	데이터 수집 중.. 0%
</div>
	<input id='downloadButton' type='button' disabled="true" style="position:absolute;right:55px;width:85px;top:60px;height:30px;text-align:center;word-wrap:break-word;" onclick="sendData()" value="download" />
	<input id='cancelButton' type='button'  style="position:absolute;left:55px;width:85px;top:60px;height:30px;text-align:center;word-wrap:break-word;" onclick="cancle()" value="cancel" />
</body>
</html>