<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<link href="../css/Blog.css" rel="stylesheet">

<script>
    function menu_over(e) {
        e.setAttribute("class", "nav-link active");
    }
    function menu_out(e) {
        e.setAttribute("class", "nav-link");
    }
</script>

<div id ="home" class="site-wrapper" style="background-color: rgb(31, 23, 34); background-image: url(../image/mac.jpg); background-repeat: no-repeat; background-position: center center; padding-top: 15%; padding-bottom: 15%; min-height: 760px;">
    <div class="site-wrapper-inner">
        <div class="cover-container">
            <div class="masthead clearfix">
                <div class="inner">
                    <a href="#home"><h3 class="masthead-brand">MinseoPark's Blog</h3></a>
                    <nav class="nav nav-masthead">
                        <%-- 세션이 없는 경우 --%>
                            <a class="nav-link" href="#favorite_thing" onmouseover="menu_over(this)" onmouseout="menu_out(this)">Favorite thing</a>
                            <a class="nav-link" href="#hobby" onmouseover="menu_over(this)" onmouseout="menu_out(this)">Hobby</a>
                            <a class="nav-link" href="#contact" onmouseover="menu_over(this)" onmouseout="menu_out(this)">Contact</a>
                        <%
                            UserVO user = (UserVO) session.getAttribute("user");
                            if(user == null) {
                        %>
                        <a class="nav-link active" href="/bloglogin">Login</a>
                    </nav>
                        <% } else { %>
                        <%-- 세션이 있는 경우 --%>
                        <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
                            <li class="nav-item dropdown">
                                <a class="nav-item nav-link dropdown-toggle mr-md-2 userName" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-color: white">
                                    <%= user.getName() + "님" %>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
                                    <form action="/bloglogout" method="post">
                                        <button type="submit" class="dropdown-item">Sign out</button>
                                    </form>
                                </div>
                            </li>
                        </ul>
                        <% } %>
                </div>
            </div>
            <div class="inner cover">
                <h1 class="cover-heading">안녕하세요</h1>
                <p class="lead">
                    <br>
            </div>

        </div>
    </div>
</div>
