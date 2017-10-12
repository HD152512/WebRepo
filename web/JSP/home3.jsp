<%@ page import="org.dimigo.vo.UserVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>My blog</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

    <!-- Custom styles for this template -->
    <link href="../css/Blog.css" rel="stylesheet">
</head>

<body>

<%@ include file="menu3.jsp" %>

<div id="page1">
    <a id="favorite_thing" class="smooth"></a>

    <div id="process01" class="fw-main-row stretch_row full-height" style="background-color: rgb(31, 23, 34); background-image: url(&quot;http://themes.wplab.pro/unicum/wp-content/uploads/sites/2/2015/09/home_1_section_bg_2.jpg&quot;); background-repeat: no-repeat; background-position: center center; padding-top: 15%; padding-bottom: 15%; min-height: 760px;">
        <div class="container">
            <div class="fw-row">
                <div class="fw-col-xs-12 grid-column" style="">
                    <div class="inner cover">
                        <h1 class="cover-heading">Favorite thing</h1><br>
                        <h3>게임</h3><br>
                        <h3>영화</h3><br>
                        <h3>운동</h3>
                        <p class="lead">
                            <br>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<div id="page2">
    <a id="hobby" class="smooth"></a>

    <div id="process02" class="fw-main-row stretch_row full-height" style="background-color: rgb(31, 23, 34); background-image: url(../image/macBook.jpg); background-repeat: no-repeat; background-position: center center; padding-top: 15%; padding-bottom: 15%; max-height: 760px; min-height: 760px;">
        <div class="container">
            <div class="fw-row">
                <div class="fw-col-xs-12 grid-column" style="">
                    <div class="inner cover">
                        <h1 class="cover-heading">Hobby</h1><br>
                        <h3>날씨 좋은 날 야외에서 축구하기</h3><br>
                        <h3>프로그래밍 프로젝트하기</h3><br>
                        <h3>컴퓨터 견적내기</h3>
                        <p class="lead">
                            <br>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<div id="page3">
    <a id="contact" class="smooth"></a>
    <div id="process03" class="fw-main-row stretch_row full-height" style="background-color: rgb(31, 23, 34); background-image: url(../image/soccer.jpg); background-repeat: no-repeat; background-position: center center; padding-top: 15%; padding-bottom: 15%; min-height: 760px;">
        <div class="container">
            <div class="fw-row">
                <div class="fw-col-xs-12 grid-column" style="">
                    <div class="inner cover">
                        <h1 class="cover-heading">Contact</h1><br>
                        <h3>010-8741-4037</h3><br>
                        <h3>minseopark.mac@gmail.com</h3><br>
                        <h3>kjgr57</h3>
                        <p class="lead">
                            <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Register Modal -->
<div class="modal" id="myModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">회원가입 결과</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Register Modal -->
<div class="modal" id="SigninModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">로그인 결과</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<div id="footer">
    <div class="mastfoot">
        <div class="inner">
            <p>This website for <a href="#">JSP Project</a>, by <a href="https://www.facebook.com/profile.php?id=100004803547216">@Minseo</a>.</p>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<script src="../js/Modal.js"></script>

</body>
</html>

