<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>INDEX</title>
</head>
<body>
<pre>
Spring Framework를 사용하여 관리자만 게시 가능한 공지사항 구현하기
1. 신규 프로젝트 생성
	A. File > New > Spring Project를 선택하여 New Spring Project 팝업 띄우기
	B. Project name 을 sample_notice로 설정하고 template은 Spring MVC Project 선택
	C. Pom.xml 의 spring 버전을 최신 버전으로 유지(4.1.6.RELEASE)
	D. 한글깨짐 방지를 위해 encoding filter web.xml에 추가
	
2. HSQL DB사용 및 hibernate 사용을 위한 설정 추가
	A. src/main/resource 하위에 create_table.sql 생성
	B. servlet-context 설정에 인터셉터 추가(인터셉터 대신 AOP로 구현해도 무방함)
	C. root-context-datasource.xml 추가하고 datasource 관련 설정 추가
	D. pom.xml에 DB 및 JSON 관련 dependency 추가
	
3. 기능 요구사항
	A. 공지사항 리스트 보기
	B. 제목 클릭 시 공지사항 상세 보기
	C. 공지사항 상세에서 저장버튼 클릭시에 세션 참조하여 로그인 되어있지 않을 경우 로그인 페이지로 리다이렉트
	D. 로그인이 성공하였을 경우 세션에 어드민 ID 저장 후 공지사항 리스트로 이동
	E. 세션에 어드민ID가 존재할 경우 공지사항 저장 및 수정이 가능함
	E. 공지사항 일부 보기 가능(get방식으로 page 및 count 설정 가능)
	F. 공지사항 일부 및 세부사항에 대해서 JSON 형태로 출력 가능
	G. AuthCheck 커스텀 어노테이션이 선언된 컨트롤러 메서드는 메서드가 수행되기 전 로그인여부 확인 후 
	로그인 되어있으면 메서드 수행, 미 로그인 시에는 로그인 페이지로 리다이렉트
	H. 화면에 출력되는 한글 메세지들은 전부 message_ko.properties 파일에 정의되어 있어야 합니다.
	(번호, 제목, 작성자 등등.. 화면에 직접적으로 메세지가 하드코딩되지 않고 i18n관련 기능 사용)
	
4. URL 리스트
	A. /notice/list?page=1&count=10 : 공지사항 리스트 보기(get방식으로 page 및 count 설정 가능)
	B. /notice/{seq} : 해당 sequence의 공지사항 상세 보기(수정 가능)
	C. /notice/form : 공지사항 신규등록
	D. /notice/save : 공지사항 제목 및 상세 저장
	E. /login/form : 로그인 폼
	F. /login/submit : 로그인 폼으로부터 넘어온 값 체크(일치하지 않을경우 세션 제거, 일치할 경우 세션 저장)
	G. /notice/json/list?page=1&count=10 : 공지사항 목록 json으로 보기(get방식으로 page 및 count 설정 가능)
	H. /notice/json/{seq} : 공지사항 단건 json으로 보기

5. jsp 페이지 리스트
	A. notice/detail.jsp : 공지사항 상세 및 저장버튼
	B. notice/list.jsp : 공지사항 목록 및 작성버튼
	C. user/loginForm.jsp : 로그인 폼
	
6. 추가 요구사항(선택사항)
	A. 리스트 화면에서 paging 기능 추가
	B. LocaleChangeInterceptor 사용하여 locale을 ko 및 en으로 설정하여 관련 message 프로퍼티 파일에서 메세지 읽어오도록 수정
	C. 현재 정해진 admin만 글쓰기가 가능한 상태이나 회원가입 받아서 내가 쓴글에 대해서 삽입, 수정, 삭제 가능하도록 수정
	D. Bootstrap 사용하여 화면을 반응형으로 구성
</pre>
</body>
</html>