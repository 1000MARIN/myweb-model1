<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 사용자 세션에서 id 가져오기 --%>
<% String id = (String) session.getAttribute("id"); %>

  <!-- Navbar -->
  <nav class="nav-extended light-blue lighten-1">
    <div class="nav-wrapper container">
      <a id="logo-container" href="/index.jsp" class="brand-logo">
      	<i class="material-icons">android</i>
      	Logo
      </a>
      
      <ul class="right hide-on-med-and-down">
      <%
      if (id == null) {
    	  %>
    	<!-- 로그아웃 상태일때 -->
        <li><a href="/member/login.jsp">로그인</a></li>
        <li><a href="/member/join.jsp">회원가입</a></li>
    	  <%
      } else {
    	  %>
    	<!-- 로그인 상태일때 -->
        <li><a href="/member/logout.jsp">로그아웃</a></li>
        
        <!-- Dropdown Trigger -->
        <li>
        	<a href="#!" class="dropdown-trigger" data-target="dropdownMember">
        		내정보(<%=id %>)
        		<i class="material-icons">arrow_drop_down</i>
        	</a>
        </li>
    	  <%
      }
      %>
        <!-- 로그인 관계없이 보이는 메뉴 -->
        <li>
        	<a href="#!" class="dropdown-trigger" data-target="dropdownBoard">
        		게시판
        		<i class="material-icons">arrow_drop_down</i>
        	</a>
        </li>
        <li>
	        <a href="#!" class="dropdown-trigger" data-target="dropdownChat">
	        	채팅
	        	<i class="material-icons">arrow_drop_down</i>
	        </a>
        </li>
      </ul>

    </div>
  </nav>
  <!-- end of Navbar -->
  
  <!--   Nabar Dropdown Strucutre -->
  <ul id="dropdownMember" class="dropdown-content">
  	<!-- 내정보 서브메뉴 -->
  	<li><a href="/member/changePasswd.jsp">비밀번호 변경</a></li>
  	<li><a href="/member/modifyMember.jsp">내정보 수정</a></li>
  	<li class="divider"></li>
  	<li><a href="/member/removeMember.jsp">회원탈퇴</a></li>
  </ul>
  
  <!-- 게시판 서브메뉴 -->
  <ul id="dropdownBoard" class="dropdown-content">
  	<li><a href="/board/boardList.jsp">게시판</a></li>
  	<li class="divider"></li>
  	<li><a href="#!">자료실</a></li>
  </ul>

  <!-- 채팅 서브메뉴 -->
  <ul id="dropdownChat" class="dropdown-content">
  	<li><a href="#!">간단한 채팅</a></li>
  	<li class="divider"></li>
	<li><a href="#!">채팅방 목록</a></li>
  </ul>
  
  
  <!--   Nabar Dropdown Strucutre -->












