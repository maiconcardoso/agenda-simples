<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.JavaBeans"%>
<%
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agenda de Contatos</title>
<link rel="icon" href="imagens/favicon.png">
<link rel="stylesheet" href="style.css">
<style type="text/css">
	th {
		border: 1px solid #ddd;
		padding: 10px;
		text-align: left;
		background-color: #66bbff;
		color: #fff; 
	
	td { 
		border : 1px solid #ddd;
		padding: 10px ;
}
</style>
</head>
<body>
	<h1>Agenda de Contatos</h1>
	<a class="btn" href="novo.html">Novo Contato</a>

	<table style="margin-top: 30px; border-collapse: collapse;">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Fone</th>
				<th>E-mail</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < lista.size(); i++) {
			%>
			<tr>
				<td><%=lista.get(i).getIdcon()%></td>
				<td><%=lista.get(i).getNome()%></td>
				<td><%=lista.get(i).getFone()%></td>
				<td><%=lista.get(i).getEmail()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>