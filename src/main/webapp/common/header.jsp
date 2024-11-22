<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="http://localhost/project2/common/css/admin-style.css">

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<style type="text/css">

</style>
</head>
<body>
    <div class="wrapper">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="logo">
                <a href="/admin">여기어때 이미지</a>
            </div>
            
            <!-- Navigation Menu -->
            <nav class="nav-menu">
			    <div class="menu-category">MENU</div>
			    
			    <div class="nav-item">
			        <div class="nav-header">
			            <span>숙소관리</span>
			            <i class="arrow"></i>
			        </div>
			        <ul class="nav-submenu">
			            <li><a href="http://localhost/project2/sample.jsp">숙소리스트</a></li>
			            <li><a href="#void">숙소등록</a></li>
			            <li><a href="#void">예약관리</a></li>
			            <li><a href="#void">???</a></li>
			        </ul>
			    </div>
			    
			    <div class="nav-item">
			        <div class="nav-header">
			            <span>객실관리</span>
			            <i class="arrow"></i>
			        </div>
			        <ul class="nav-submenu">
			            <li><a href="#void">객실리스트</a></li>
			            <li><a href="#void">객실등록</a></li>
			            <li><a href="#void">객실수정</a></li>
			            <li><a href="#void">???</a></li>
			        </ul>
			    </div>
			    
			    <div class="nav-item">
			        <div class="nav-header">
			            <span>TEST</span>
			            <i class="arrow"></i>
			        </div>
			        <ul class="nav-submenu">
			            <li><a href="#void">테스트1</a></li>
			            <li><a href="#void">테스트2</a></li>
			            <li><a href="#void">테스트3</a></li>
			            <li><a href="#void">테스트4</a></li>
			        </ul>
			    </div>
			
			    <div class="menu-category">DASHBOARD</div>
			    
			    <div class="nav-item">
			        <div class="nav-header">
			            <span>매출차트</span>
			            <i class="arrow"></i>
			        </div>
			        <ul class="nav-submenu">
			            <li><a href="#void">테스트1</a></li>
			            <li><a href="#void">테스트2</a></li>
			            <li><a href="#void">테스트3</a></li>
			            <li><a href="#void">테스트4</a></li>
			        </ul>
			    </div>
			</nav>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <!-- Top Navigation -->
            <div class="top-nav">
                <div class="user-menu">
                    <c:if test="${not empty sessionScope.adminId}">
                        <span>${sessionScope.adminId}</span>
                        <a href="/admin/logout" class="logout-link">로그아웃</a>
                    </c:if>
                </div>
            </div>
           
    
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        // Toggle submenu with closing others
        const navHeaders = document.querySelectorAll('.nav-header');
        navHeaders.forEach(header => {
            header.addEventListener('click', function() {
                // 다른 모든 nav-item의 active 클래스 제거
                navHeaders.forEach(otherHeader => {
                    if (otherHeader !== header) {
                        otherHeader.parentElement.classList.remove('active');
                    }
                });
                // 클릭된 nav-item의 active 토글
                this.parentElement.classList.toggle('active');
            });
        });
        
        // Highlight current page and keep submenu open
        const currentPath = window.location.pathname;
        const menuLinks = document.querySelectorAll('.nav-submenu a');
        menuLinks.forEach(link => {
            const href = link.getAttribute('href');
            const currentPage = currentPath.split('/').pop();
            if (href.includes(currentPage)) {
                // 현재 페이지의 메뉴 아이템 활성화
                link.parentElement.classList.add('active');
                // 부모 nav-item를 찾아서 active 클래스 추가 (서브메뉴 표시)
                let parentNavItem = link.closest('.nav-item');
                if (parentNavItem) {
                    // 다른 모든 nav-item의 active 클래스 제거
                    navHeaders.forEach(header => {
                        if (header.parentElement !== parentNavItem) {
                            header.parentElement.classList.remove('active');
                        }
                    });
                    parentNavItem.classList.add('active');
                }
            }
        });
    });
</script>
</body>
</html>