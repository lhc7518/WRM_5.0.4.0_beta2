/**
 * 화면 초기 로딩
 * @lastUpdate 2016.08.28 
 * @author InswaveSystems
 * @since 2016.08.28
 */
scwin.initMainLoad = function() {
	$p.top().scwin.commonCodeList = [];
	wfm_side.getWindow().scwin.getInitData();
};

/**
 * TabControl의 모든 메뉴 닫기 버튼 이벤트
 * @lastUpdate 2016.08.28
 * @author InswaveSystems
 * @since 2016.08.28
 */
scwin.btn_CloseAll_onclick = function() {
	var cnt = tac_layout.getTabCount();
	for (var i = cnt; i > 0; i--) {
		tac_layout.deleteTab(i);
	}
};

/**
 * WindowContainer의 닫기 이벤트
 * @lastUpdate 2016.08.28
 * @param <String> windowTitle
 * @author InswaveSystems
 * @since 2016.08.28
 * @example
 */
scwin.closeAction = function(windowTitle) {
	if (windowTitle == "메인") {
		return false;
	}
	return true;
};

/**
 * header menu 생성
 */
scwin.setHeaderMenu = function() {
	wfm_header.getWindow().scwin.setGenerator(); //메뉴 생성
	wfm_header.getWindow().scwin.setMenuCss(); //메뉴 css 적용
}

scwin.getLayoutId = function() {
	if (typeof $p.top().$p.getComponentById("tac_layout") === "object") {
		return "T";
	} else if (typeof $p.top().$p.getComponentById("wdc_main") === "object") {
		return "M";
	}
	return null;
};

scwin.setResultMessage = function(resultData) {
	if (typeof wfm_footer !== "undefined") {
		var messageObj = wfm_footer.getWindow().spn_message;
		var curCode = messageObj.getUserData("tmpStatusCode");
	
		if (curCode) {
			messageObj.removeClass(curCode);
		}
		
		if (resultData.statusCode) {
			messageObj.addClass(resultData.statusCode);
		}
		
		messageObj.setUserData("tmpStatusCode", resultData.statusCode);
		if ((com.util.isEmpty(resultData.message) === false) && (com.util.isEmpty(resultData.statusMsg) === false)) {
			messageObj.setValue(resultData.message + resultData.statusMsg);
		} else if (com.util.isEmpty(resultData.message) === false) {
			messageObj.setValue(resultData.message);
		} else if (com.util.isEmpty(resultData.statusMsg) === false) {
			messageObj.setValue(resultData.statusMsg);
		}
		
		wfm_footer.getWindow().grp_message.setUserData("message", resultData);
		wfm_footer.getWindow().scwin.spn_message_onclick(); 
	}
}

scwin.isMobileSize = function() {
	var size = {
		width: window.innerWidth || document.body.clientWidth,
		height: window.innerHeight || document.body.clientHeight
	};
	
	if (size.width <= 1024) {
		return true;
	} else {
		return false;
	}
}
