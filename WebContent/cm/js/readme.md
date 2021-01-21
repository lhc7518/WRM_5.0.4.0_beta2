# UI 공통 함수 소개
> * UI 공통 기능에서 제공하는 서버 통신(com.sbm), 데이터 처리(com.data), 유틸리티(util), 화면 제어(com.win), 숫자 처리(com.num), 외부 솔루션 연동(com.ext), 개발자 도구 콘솔 로그 출력(console)을 위한 함수를 설명합니다.
> * <span style='color:red'>각 함수명을 클릭하면 해당 함수에 대한 상세 스펙과 예제 코드를 보여주는 Javascript Document가 새창으로 오픈됩니다. </span>
# com.sbm
통신 함수(submission 또는 ajax 통신)를 작성한다.
| API Name | API Description |
| --- | --- |
| <a href='/cm/jsdoc/out/com.sbm.html#.create' target='_blank'>com.sbm.create</a> | Submission 객체를 동적으로 생성한다. |
| <a href='/cm/jsdoc/out/com.sbm.html#.execute' target='_blank'>com.sbm.execute</a> | 서버 통신 확장 모듈, Submission를 실행합니다. |
| <a href='/cm/jsdoc/out/com.sbm.html#.executeDynamic' target='_blank'>com.sbm.executeDynamic</a> | Submission를 동적으로 생성해서 실행합니다. |
| <a href='/cm/jsdoc/out/com.sbm.html#.executeWorkflow' target='_blank'>com.sbm.executeWorkflow</a> | workflow를 실행합니다. |
# com.data
공통 코드 & 메세지, DataCollection 제어, 글로벌 데이터 제어(gcm의 함수를 호출), 화면 간 데이터 전달, 데이터 유효성 검사 함수를 작성한다.
| API Name | API Description |
| --- | --- |
| <a href='/cm/jsdoc/out/com.data.html#.checkModified' target='_blank'>com.data.checkModified</a> | DataCollection 객체의 변경된 데이터가 있는지 검사한다. |
| <a href='/cm/jsdoc/out/com.data.html#.createDataList' target='_blank'>com.data.createDataList</a> | DataList를 동적으로 생성한다. |
| <a href='/cm/jsdoc/out/com.data.html#.createDataMap' target='_blank'>com.data.createDataMap</a> | DataMap을 동적으로 생성한다. |
| <a href='/cm/jsdoc/out/com.data.html#.dataListFilter' target='_blank'>com.data.dataListFilter</a> | 데이터 리스트 필터 설정 함수. |
| <a href='/cm/jsdoc/out/com.data.html#.deleteRow' target='_blank'>com.data.deleteRow</a> | 지정한 GridView에 선택컬럼(chk)이 체크된 Row들을 삭제(Delete) 처리한다. |
| <a href='/cm/jsdoc/out/com.data.html#.downloadDataList' target='_blank'>com.data.downloadDataList</a> | DataList의 데이터를 엑셀 파일로 저장한다. |
| <a href='/cm/jsdoc/out/com.data.html#.downloadGridView' target='_blank'>com.data.downloadGridView</a> | 엑셀 다운로드 옵션을 설정하고 확장자 별로 다른 함수(downLoadCSV, downLoadExcel)를 호출한다. |
| <a href='/cm/jsdoc/out/com.data.html#.downloadGridViewCSV' target='_blank'>com.data.downloadGridViewCSV</a> | 설정된 옵션으로 CSV파일을 다운로드 한다. |
| <a href='/cm/jsdoc/out/com.data.html#.downloadGridViewExcel' target='_blank'>com.data.downloadGridViewExcel</a> | 설정된 옵션으로 엑셀을 다운로드 한다. |
| <a href='/cm/jsdoc/out/com.data.html#.getColumnName' target='_blank'>com.data.getColumnName</a> | 특정 컴포넌트에 바인된 DataList나 DataMap의 컬럼 이름을 반환한다. |
| <a href='/cm/jsdoc/out/com.data.html#.getDataCollection' target='_blank'>com.data.getDataCollection</a> | 특정 컴포넌트에 바인된 DataList나 DataMap의 정보를 반환한다. |
| <a href='/cm/jsdoc/out/com.data.html#.getMessage' target='_blank'>com.data.getMessage</a> | 공통 메시지에 코드에 해당하는 공통 메시지 코드를 반환합니다. |
| <a href='/cm/jsdoc/out/com.data.html#.getParameter' target='_blank'>com.data.getParameter</a> | 파라미터를 읽어 온다. |
| <a href='/cm/jsdoc/out/com.data.html#.setCommonCode' target='_blank'>com.data.setCommonCode</a> | 코드성 데이터와 컴포넌트의 nodeSet(아이템 리스트)연동 기능을 제공한다.cdGrp별로 JSON객체를 생성하여 array에 담아 첫번째 파라메터로 넘겨준다. |
| <a href='/cm/jsdoc/out/com.data.html#.undoAll' target='_blank'>com.data.undoAll</a> | 전체 데이터를 초기 설정 된 데이터(originalData)로 바꾸고 행의 상태를 초기화(R) 시킨다.<br>초기 설정 된 데이터 란 setJSON, setXML 등과 같은 API들을 통해 설정 된 데이터가 이에 속한다.<br>추가(C)된 행은 제거한다 |
| <a href='/cm/jsdoc/out/com.data.html#.undoRow' target='_blank'>com.data.undoRow</a> | 지정한 GridView에 선택컬럼(chk)이 체크된 Row들을 취소(Undo) 처리한다. |
| <a href='/cm/jsdoc/out/com.data.html#.uploadGridView' target='_blank'>com.data.uploadGridView</a> | 엑셀 업로드 옵션을 설정하고 확장자 별로 다른 함수(uploadCSV, uploadExcel)를 호출한다. |
| <a href='/cm/jsdoc/out/com.data.html#.uploadGridViewCSV' target='_blank'>com.data.uploadGridViewCSV</a> | 엑셀 CSV 업로드 |
| <a href='/cm/jsdoc/out/com.data.html#.uploadGridViewExcel' target='_blank'>com.data.uploadGridViewExcel</a> | 엑셀 xls, xlsx 업로드 |
| <a href='/cm/jsdoc/out/com.data.html#.validateGridView' target='_blank'>com.data.validateGridView</a> | 입력 허용 문자, 입력 허용 불가 문자, 최대 입력 문자수 설정은 GridView의 Column의 속성에서 설정한다. |
| <a href='/cm/jsdoc/out/com.data.html#.validateGroup' target='_blank'>com.data.validateGroup</a> | 필수 입력, 입력 허용 문자, 입력 허용 불가 문자, 최대, 최소 입력 문자수 설정은 컴포넌트의 속성에서 설정한다. |
# com.util
웹스퀘어 컴포넌트 제어, 엑셀 파일 업로드/다운로드, 파일 업로드/다운로드, 기타 유틸리티 함수를 작성한다.
| API Name | API Description |
| --- | --- |
| <a href='/cm/jsdoc/out/com.util.html#.copyClipboard' target='_blank'>com.util.copyClipboard</a> | 입력 가능한 컴포넌트(input, textarea 등) 객체의 내용을 클립보드에 저장한다. |
| <a href='/cm/jsdoc/out/com.util.html#.createComponent' target='_blank'>com.util.createComponent</a> | 주어진 인자를 통해 동적으로 Component를 생성합니다. |
| <a href='/cm/jsdoc/out/com.util.html#.getChildren' target='_blank'>com.util.getChildren</a> | 특정 컴포넌트의 자식 컴포넌트를 배열로 반환한다. |
| <a href='/cm/jsdoc/out/com.util.html#.getComponent' target='_blank'>com.util.getComponent</a> | 주어진 아이디에 해당하는 웹스퀘어 컴포넌트를 찾아 반환한다. |
| <a href='/cm/jsdoc/out/com.util.html#.getGridViewDataList' target='_blank'>com.util.getGridViewDataList</a> | GridView와 바인딩된 DataList 객체를 반환한다. |
| <a href='/cm/jsdoc/out/com.util.html#.getJSON' target='_blank'>com.util.getJSON</a> | JSON Object로 변환해서 반환한다. |
| <a href='/cm/jsdoc/out/com.util.html#.getObjectType' target='_blank'>com.util.getObjectType</a> | 객체의 typeof 값을 반환하며 typeof의 값이 object인 경우 array, json, xml, null로 체크하여 반환한다. |
| <a href='/cm/jsdoc/out/com.util.html#.isArray' target='_blank'>com.util.isArray</a> | 배열 객체인지 여부를 확인한다. |
| <a href='/cm/jsdoc/out/com.util.html#.isEmpty' target='_blank'>com.util.isEmpty</a> | 값이 Empty 상태(undefined, null, "")인지 판별한다. |
| <a href='/cm/jsdoc/out/com.util.html#.isJSON' target='_blank'>com.util.isJSON</a> | JSON Object인지 여부를 검사한다. |
| <a href='/cm/jsdoc/out/com.util.html#.isMobile' target='_blank'>com.util.isMobile</a> | 현재 클라이언트 브라우저 환경의 모바일 여부를 반환한다. |
| <a href='/cm/jsdoc/out/com.util.html#.isXmlDoc' target='_blank'>com.util.isXmlDoc</a> | XML Document 객체인지 여부를 검사한다. |
| <a href='/cm/jsdoc/out/com.util.html#.setGridViewDelCheckBox' target='_blank'>com.util.setGridViewDelCheckBox</a> | GridView Row 삭제를 위한 CheckBox 동작을 세팅한다.<br>GridView에 삭제용 CheckBox가 있을 경우 onPageLoad 이벤트에서 com.util.setGridViewDelCheckBox 함수를 호출한다.<br>이 함수가 정상 동작하려면 GridView의 Delete 처리용 CheckBox의 ColumnId와 Header Id를 "chk"로 설정해야 한다. |
| <a href='/cm/jsdoc/out/com.util.html#.setInterval' target='_blank'>com.util.setInterval</a> | 실행할 함수를 함수를 setInterval로 등록하여 함수가 주기적으로 계속 실행되도록 한다.SPA모드에서 페이지 이동 시 이 함수로 등록한 타이머를 자동으로 제거한다. |
| <a href='/cm/jsdoc/out/com.util.html#.setTimeout' target='_blank'>com.util.setTimeout</a> | 실행할 함수를 함수를 setInterval로 등록하여 함수가 주기적으로 계속 실행되도록 한다.SPA모드에서 페이지 이동 시 이 함수로 등록한 타이머를 자동으로 제거한다. |
# com.win
업무 화면 영역 제어(권한, 업무 화면 공통 UI 요소 및 버튼 제어, 개인화 등) 함수를 작성한다.
| API Name | API Description |
| --- | --- |
| <a href='/cm/jsdoc/out/com.win.html#.alert' target='_blank'>com.win.alert</a> | Alert 메시지 창을 호출한다. |
| <a href='/cm/jsdoc/out/com.win.html#.closeAllPopup' target='_blank'>com.win.closeAllPopup</a> | 현재 오픈된 전체 팝업창을 닫는다. |
| <a href='/cm/jsdoc/out/com.win.html#.closePopup' target='_blank'>com.win.closePopup</a> | 팝업창을 닫는다. |
| <a href='/cm/jsdoc/out/com.win.html#.confirm' target='_blank'>com.win.confirm</a> | Confirm 메시지 창을 호출한다. |
| <a href='/cm/jsdoc/out/com.win.html#.getFrame' target='_blank'>com.win.getFrame</a> | wframe안의 스크립트 영역에서 이 함수를 호출할 경우 자신을 감싼 wframe object를 반환한다. 전역스크립트에서 호출 시에는 null을 반환한다. |
| <a href='/cm/jsdoc/out/com.win.html#.getFullPath' target='_blank'>com.win.getFullPath</a> | contextRoot가 포함된 path를 반환한다. |
| <a href='/cm/jsdoc/out/com.win.html#.getLangCode' target='_blank'>com.win.getLangCode</a> | 언어 코드를 반환한다. |
| <a href='/cm/jsdoc/out/com.win.html#.getLanguage' target='_blank'>com.win.getLanguage</a> | 언어 코드를 반환한다. |
| <a href='/cm/jsdoc/out/com.win.html#.getParentFrame' target='_blank'>com.win.getParentFrame</a> | 자신의 부모 WFrame 객체를 찾아 반환한다. |
| <a href='/cm/jsdoc/out/com.win.html#.getPopupId' target='_blank'>com.win.getPopupId</a> | 팝업아이디구하기<br>초기 설정 된 데이터 란 setJSON, setXML 등과 같은 API들을 통해 설정 된 데이터가 이에 속한다.<br>추가(C)된 행은 제거한다 |
| <a href='/cm/jsdoc/out/com.win.html#.goHome' target='_blank'>com.win.goHome</a> | 최상위 page를 index화면으로 이동 (/) |
| <a href='/cm/jsdoc/out/com.win.html#.isAdmin' target='_blank'>com.win.isAdmin</a> | 로그인한 사용자가 시스템 관리자 인지의 여부를 반환한다. |
| <a href='/cm/jsdoc/out/com.win.html#.isPopup' target='_blank'>com.win.isPopup</a> | 현재 화면이 팝업 인지의 여부를 반환한다. |
| <a href='/cm/jsdoc/out/com.win.html#.logout' target='_blank'>com.win.logout</a> | 로그아웃으로 WAS의 사용자 session을 삭제한다.<br>정상 처리 : /로 이동.<br>오류 발생 : 기존 화면으로 오류 메세지 전송 |
| <a href='/cm/jsdoc/out/com.win.html#.openPopup' target='_blank'>com.win.openPopup</a> | 팝업창을 연다. |
| <a href='/cm/jsdoc/out/com.win.html#.setEnterKeyEvent' target='_blank'>com.win.setEnterKeyEvent</a> | 해당 그룹 안의 컴포넌트에서 엔터키가 발생하면 해당 컴포넌트의 값을 DataColletion에 저장하고 objFunc 함수를 실행한다. |
| <a href='/cm/jsdoc/out/com.win.html#.setLangCode' target='_blank'>com.win.setLangCode</a> | 언어 코드를 설정한다. |
# com.num
숫자 관련 함수를 작성한다.
| API Name | API Description |
| --- | --- |
| <a href='/cm/jsdoc/out/com.num.html#.ceil' target='_blank'>com.num.ceil</a> | 올림 처리를 한다. |
| <a href='/cm/jsdoc/out/com.num.html#.floor' target='_blank'>com.num.floor</a> | 내림 처리를 한다. |
| <a href='/cm/jsdoc/out/com.num.html#.formatByte' target='_blank'>com.num.formatByte</a> | 바이트 값을 적절한 단위(KB, MB, GB)를 변환해서 반환한다. |
| <a href='/cm/jsdoc/out/com.num.html#.formatMoney' target='_blank'>com.num.formatMoney</a> | ex)세번째자리마다 콤마 표시, 금액, setDisplayFormat("#,###&#46##0", "fn_userFormatter2") - 입력된 str에 포메터를 적용하여 반환한다. |
| <a href='/cm/jsdoc/out/com.num.html#.formatNumber' target='_blank'>com.num.formatNumber</a> | 세째자리마다 콤마를 추가해서 반환한다. |
| <a href='/cm/jsdoc/out/com.num.html#.isNumber' target='_blank'>com.num.isNumber</a> | 숫자가 맞는지 여부를 검사한다. |
| <a href='/cm/jsdoc/out/com.num.html#.isOdd' target='_blank'>com.num.isOdd</a> | 홀수가 맞는지 여부를 검사한다. |
| <a href='/cm/jsdoc/out/com.num.html#.parseFloat' target='_blank'>com.num.parseFloat</a> | 문자열을 실수형으로 변환한다. |
| <a href='/cm/jsdoc/out/com.num.html#.parseInt' target='_blank'>com.num.parseInt</a> | 문자열을 정수형으로 변환한다. |
| <a href='/cm/jsdoc/out/com.num.html#.round' target='_blank'>com.num.round</a> | 반올림 처리를 한다. |
# com.str
문자열 관련 함수를 작성한다.
| API Name | API Description |
| --- | --- |
| <a href='/cm/jsdoc/out/com.str.html#.attachPostposition' target='_blank'>com.str.attachPostposition</a> | 단어 뒤에 '은'이나 '는'을 붙여서 반환한다. |
| <a href='/cm/jsdoc/out/com.str.html#.existKorean' target='_blank'>com.str.existKorean</a> | 입력받은 문자열에 한글이 포함되어 있는지 여부를 검사한다. |
| <a href='/cm/jsdoc/out/com.str.html#.formatPhone' target='_blank'>com.str.formatPhone</a> | 문자열에 전화번호 형식 Formatter를 적용하여 반환한다. |
| <a href='/cm/jsdoc/out/com.str.html#.formatSSN' target='_blank'>com.str.formatSSN</a> | 주민번호 문자열에 Formatter(######-#######)를 적용하여 반환한다. |
| <a href='/cm/jsdoc/out/com.str.html#.formatTime' target='_blank'>com.str.formatTime</a> | 문자열에 시간 형식 Formatter를 적용하여 반환한다. |
| <a href='/cm/jsdoc/out/com.str.html#.getByteLength' target='_blank'>com.str.getByteLength</a> | 문자열의 바이트 기준 문자열 길이를 반환한다. |
| <a href='/cm/jsdoc/out/com.str.html#.getLocale' target='_blank'>com.str.getLocale</a> | 문자(char)의 유형을 리턴한다. |
| <a href='/cm/jsdoc/out/com.str.html#.isBizID' target='_blank'>com.str.isBizID</a> | 사업자번호 유효성을 검사한다. |
| <a href='/cm/jsdoc/out/com.str.html#.isEmail' target='_blank'>com.str.isEmail</a> | 이메일 주소의 유효성을 검사한다. |
| <a href='/cm/jsdoc/out/com.str.html#.isFinalConsonant' target='_blank'>com.str.isFinalConsonant</a> | 종성이 존재하는지 여부를 검사한다. |
| <a href='/cm/jsdoc/out/com.str.html#.isKorean' target='_blank'>com.str.isKorean</a> | 입력받은 문자열 전체가 한글인지를 검사한다. |
| <a href='/cm/jsdoc/out/com.str.html#.isPhone' target='_blank'>com.str.isPhone</a> | 전화번호의 유효성을 검사한다. |
| <a href='/cm/jsdoc/out/com.str.html#.isSSN' target='_blank'>com.str.isSSN</a> | 내외국인 주민등록번호 유효성을 검사한다. |
| <a href='/cm/jsdoc/out/com.str.html#.lpad' target='_blank'>com.str.lpad</a> | 좌측에 문자열 채우기 |
| <a href='/cm/jsdoc/out/com.str.html#.replaceAll' target='_blank'>com.str.replaceAll</a> | 문자열을 치환한다. |
| <a href='/cm/jsdoc/out/com.str.html#.rpad' target='_blank'>com.str.rpad</a> | 우측에 문자열 채우기 |
| <a href='/cm/jsdoc/out/com.str.html#.serialize' target='_blank'>com.str.serialize</a> | XML, JSON 객체를 String 타입으로 반환한다. |
| <a href='/cm/jsdoc/out/com.str.html#.trim' target='_blank'>com.str.trim</a> | 입력된 문자열의 좌우측 공백을 제거한 문자열을 구한다. |
# com.date
날짜 관련 함수를 작성한다.
| API Name | API Description |
| --- | --- |
| <a href='/cm/jsdoc/out/com.date.html#.addDate' target='_blank'>com.date.addDate</a> | 입력된 날짜에 지정된 만큼의 날을 더한다. |
| <a href='/cm/jsdoc/out/com.date.html#.addHour' target='_blank'>com.date.addHour</a> | 입력된 날짜에 지정된 만큼의 시간을 더한다. |
| <a href='/cm/jsdoc/out/com.date.html#.addMinute' target='_blank'>com.date.addMinute</a> | 입력된 날짜에 지정된 만큼의 분을 더한다. |
| <a href='/cm/jsdoc/out/com.date.html#.addMonth' target='_blank'>com.date.addMonth</a> | 입력된 날짜에 지정된 만큼의 달을 더한다. |
| <a href='/cm/jsdoc/out/com.date.html#.diffDate' target='_blank'>com.date.diffDate</a> | fromDate, toDate 를 입력받아 두 날짜의 차이를 반환한다. |
| <a href='/cm/jsdoc/out/com.date.html#.formatDate' target='_blank'>com.date.formatDate</a> | 문자열에 날짜 Formatter를 적용하여 반환한다. |
| <a href='/cm/jsdoc/out/com.date.html#.formatDateTime' target='_blank'>com.date.formatDateTime</a> | 날짜 객체에 포매팅을 적용한다. (default format: yyyyMMdd) |
| <a href='/cm/jsdoc/out/com.date.html#.formatTime' target='_blank'>com.date.formatTime</a> | 시간 - 입력된 String 또는 Number에 포메터를 적용하여 반환한다. |
| <a href='/cm/jsdoc/out/com.date.html#.getDay' target='_blank'>com.date.getDay</a> | 특정 날짜의 요일을 반환한다. |
| <a href='/cm/jsdoc/out/com.date.html#.getLastDateOfMonth' target='_blank'>com.date.getLastDateOfMonth</a> | 해당 월의 마지막 날짜를 반환한다. |
| <a href='/cm/jsdoc/out/com.date.html#.getLunar' target='_blank'>com.date.getLunar</a> | 특정 날짜의 음력 날짜를 반환한다. |
| <a href='/cm/jsdoc/out/com.date.html#.getServerDateTime' target='_blank'>com.date.getServerDateTime</a> | 서버 날짜 반환한다. (default format: yyyyMMdd) |
| <a href='/cm/jsdoc/out/com.date.html#.isDate' target='_blank'>com.date.isDate</a> | 입력된 값이 Date 형식의 값인지 확인한다. |
| <a href='/cm/jsdoc/out/com.date.html#.isLeafYear' target='_blank'>com.date.isLeafYear</a> | 입력된 양력의 날짜가 윤년인지 검사한다. |
# com.ext
외부 솔루션 연동 관련 함수를 작성한다.
| API Name | API Description |
| --- | --- |
# console

| API Name | API Description |
| --- | --- |
