<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="hello">
Name:<input type="text" name="name"><br><br>
password: <input type="password" name="password"><br><br>
Salary: <select name="salary">
        <option value="dropdown">Pls select one
        <option value="20,000">20,000
        <option value="30,000">30,000
        <option value="40,000">40,000
    </select><br><br>
sex:<br>female:<input type="radio" name="sex" value="female">       male:<input type="radio" name="sex" value="male"><br><br>
Remarks: <textarea id="address" name="remarks" rows="5" cols="30"></textarea><br><br> 
<input type="submit" value="submit">
</form>
</body>
</html>