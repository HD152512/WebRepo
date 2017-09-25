<%--
  Created by IntelliJ IDEA.
  User: Minseo
  Date: 2017-09-19
  Time: 오전 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>숫자 합 계산</title>
</head>
<body>
<form>
    <input type="number" name="num" required>
    <button type="submit">계산</button>
</form>
<%-- 스크립틀릿 tag로 1~입력받은 숫자까지의 합 구하기 --%>
<%-- 결과 출력 시 변수 값은 표현식 tag로 작성하기 (jsp 파일 로딩시에는 보이지 않음) --%>
<%
    String input = request.getParameter("num");
    if(input != null) {
        int sum=0;
        int input1 = Integer.parseInt(request.getParameter("num"));

        for (int i=1; i<=input1; i++) {
            sum = sum+i;
        }
    if(sum != 0) {
%>
<h1>1 ~ <%=input%>까지의 합은 <%=sum%>입니다. </h1>
<%
        }
    }
%>
</body>
</html>
