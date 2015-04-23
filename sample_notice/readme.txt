Spring Framework를 사용하여 게시판 구현하기
1. 신규 프로젝트 생성
	A. File > New > Spring Project를 선택하여 New Spring Project 팝업 띄우기
	B. Project name 을 sample_notice로 설정하고 template은 Spring MVC Project 선택
	C. Pom.xml 의 spring 버전을 최신 버전으로 유지
2. HSQL DB사용 및 hibernate 사용을 위한 설정 추가
	A. src/main/resource 하위에 create_table.sql 생성
	B. servlet-context 설정에 인터셉터 추가
	C. root-context 설정에 datasource 관련 설정 추가
	D. pom.xml에 DB 및 JSON 관련 dependency 추가
	
3. 요구사항
	A. 공지사항 리스트 보기
	B. 공지사항 detail 보기
	C. 공지사항 저장 시에 로그인 되어있지 않을 경우 로그인 페이지로 리다이렉트
	D. 로그인이 성공하였을 경우 / 로 이동
	E. 공지사항 일부 보기 가능
	F. 공지사항 일부 및 세부사항에 대해서 JSON 형태로 출력 가능
