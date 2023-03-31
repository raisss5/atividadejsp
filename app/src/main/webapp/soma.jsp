<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
int result = 0;
if(request.getMethod().equals("POST")) {
    int numA = Integer.parseInt(request.getParameter("numA"));
    int numB = Integer.parseInt(request.getParameter("numB"));
    result = numA + numB;
}
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atividade - JSP</title>
</head>
<body>
    <h1>Soma</h1>
    <form action="soma.jsp" method="post">
        <input type="number" name="numA"/>
        <input type="number" name="numB"/>
        <button type="submit">Somar</button>
        <h1>Resultado: <%= result %></h1>
    </form>
</body>
</html>