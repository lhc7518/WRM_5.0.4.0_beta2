<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String requestUrl	= request.getRequestURL().toString();
	requestUrl	= requestUrl.substring(requestUrl.indexOf("://")+3);
	requestUrl	= requestUrl.substring(0, requestUrl.indexOf("/"));
	
	// String serverUrl = "http://172.19.28.63:8080"; //RD 서버 개발
	String serverUrl = "https://qtos.hebm.co.kr:8081"; //RD 서버 운영
	

	
	//iframe 에 get방식 파라미터 전송 시 (json 형태 string 넘길경우) => json object 로 변경하여 값 가져오기 
	JSONParser jsonParser = new JSONParser();
	String param = request.getParameter("param");
	JSONObject jsonObject = (JSONObject) jsonParser.parse(param);
	String rdFile = jsonObject.get("rdFile").toString();
	
System.out.println("...............param=>"+param);
System.out.println("...............rdFile=>"+rdFile);
	
	
%>    
<!DOCTYPE html>
<html style="margin: 0; height: 100%">
	<head>
		<meta charset="utf-8">
		<script src="<%=serverUrl%>/ReportingServer/html5/js/jquery-1.11.0.min.js"></script>
		<script src="<%=serverUrl%>/ReportingServer/html5/js/crownix-viewer.min.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=serverUrl%>/ReportingServer/html5/css/crownix-viewer.min.css">
		<script type="text/javascript" src="/js/rdObject.js"></script>
	</head>
	<body style="margin: 0; height: 100%" OnLoad="javascript:onload()">
		<div id="crownix-viewer" style="position:absolute; width:100%; height:100%;"></div>
		<script>  
		   
			window.onload = function(){
// debugger;				
				var requestUrl = "<%=requestUrl%>"; 			//접속 URL			

				var param = '<%=param%>';						//parent 에서 get방식의 파라미터 전송 
console.log("get : param=>"+param);
				
				var parentTop = parent.$p.top();				//parent top 프레임 객체 
				var jsonData	= parentTop.scwin.jsonData;	//JSON Object
				
				var rdFile			= jsonData.rdFile; //RD 파일명
				var paramData	= jsonData.paramData; //RD 파라미터 Object
console.log("jsonData : rdFile=>"+rdFile);				
console.log("jsonData : paramData=>"+paramData);		
console.dir(paramData);
				var strParam		= ""; //RD 파라미터 (RD형식)
				//RD 파라미터(RD형식) 셋팅
				if ( typeof(paramData) != 'undefined' && paramData != null && paramData != "" ) {
					for(var val in paramData ) {
						strParam += " ["+ paramData[val] +"] ";
					}
				}
				
				//RD viewer 선언 ( http://1.209.204.103:8081/ReportingServer/service )
				var viewer = new m2soft.crownix.Viewer('<%=serverUrl%>/ReportingServer/service','crownix-viewer'); //RD 서버 URL
				
				//RD 파일 Open  ( http://qtos.hebm.co.kr/rd/report/ + RD파일 )
				viewer.setStateLessMode(false);
				//   viewer.openFile(QTOS_SERVER_URL + '/rd/report/'+rdFile,"/rp " + strParam + RD_AGENT_PATH,{timeout : 300}); //프로젝트 URL
				viewer.openFile("http://172.19.4.2:9090" + '/rd/report/'+rdFile,"/rp " + strParam + RD_AGENT_PATH,{timeout : 300}); //프로젝트 URL
				<%-- viewer.openFile('<%=serverUrl%>/DataServer/'+rdFile,"/rp " + strParam + RD_AGENT_PATH); //RD서버에 파일등록시 --%>
			};
		</script>
	</body>
</html>