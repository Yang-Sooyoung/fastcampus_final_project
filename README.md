### 📚 FastCampus Final Project
>이 프로젝트는 Java & Spring 기반으로 구현한 도서 고객 및 대여관리 시스템입니다.\
>고객, 도서, 대여 이력을 효율적으로 관리할 수 있는 관리자용 백오피스 시스템을 목표로 설계되어 개발되었습니다.

<br/> 

### 프로젝트 개요

- **프로젝트명:** 도서 고객 및 대여관리 프로그램
- **목적:** 도서관 사서가 도서, 고객, 대여 기록을 효율적으로 관리할 수 있도록 도움을 주는 Spring 기반 백엔드 시스템 구축
- **개발 기간:** 약 4시간 
- **기술 스택:**
  - Java 17
  - Spring Boot 3.x
  - Spring MVC
  - JSP
  - Servlet
  - MySQL
  - Maven
  - XML

### 해당 기능

#### 도서 관리

- 도서 등록 / 수정 / 삭제
- 도서 상세 조회
- 도서 목록 검색 / 정렬

#### 고객 관리

- 고객 등록 / 수정 / 삭제
- 고객 상세 조회
- 고객별 대여 이력 확인

#### 대여 / 반납 관리

- 도서 대여 등록
- 도서 반납 처리
- 연체 여부 자동 판단
- 대여 이력 확인
  
#### 프로젝트 구조

```
src
 ├── main
 │   ├── java
 │   │   └── com/fastcampus/finalproject
 │   │       ├── controller      # 컨트롤러 계층
 │   │       ├── dto             # 요청/응답 DTO 클래스
 │   │       ├── domain          # 도메인 엔티티 클래스
 │   │       └── service         # 비즈니스 로직 계층
 │   ├──  resources
 │        └── mapper             # mybatis mapper
 │   └──  webapp/WEB-INF
 │        ├── spring/appServlet  # servlet 설정 파일
 │        └── views              # JSP 뷰 파일들
 │            ├── member
 └──          └── rent
```

### 시연 영상 및 참고
- [📹 프로젝트 시연 영상](https://drive.google.com/file/d/1A_mZZJVEqI9ZJ8qaShR_z1oGT-F7Nzy-/view?usp=sharing)
- [📄 프로젝트 가이드](https://drive.google.com/file/d/12JI6BsJtunJglMgsbOxcySADOPbSrvq2/view?usp=sharing)

</br>

#### 🙋‍♀️ 만든 사람

- 👩‍💻 이름: 양수영 (Yang Sooyoung)
- 🔗 GitHub: [@Yang-Sooyoung](https://github.com/Yang-Sooyoung)

<br/>


---

> 💬 본 프로젝트는 FastCampus Java & Spring 백엔드 과정의 최종 과제로 제작되었습니다.\
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 백오피스 구현을 목표로 기본 CRUD 기능과 도메인 중심 설계를 적용했습니다.

