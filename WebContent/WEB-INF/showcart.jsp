<%@page import="com.cruds.entity.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
	<script type="text/javascript" >
	
		function setData()
		{
			var grid = document.getElementById("Table1");
	        var checkBoxes = grid.getElementsByTagName("INPUT");
	        var message = "";
	        for (var i = 0; i < checkBoxes.length; i++) {
	            if (checkBoxes[i].checked) {
	            	 var row = checkBoxes[i].parentNode.parentNode;
	                 message += row.cells[0].innerHTML;
	                 document.getElementById("hdnpid2").value += message;
	             }
	        }
		}
		
		function submitForm() {
			document.enter.submit();
		}
	
	</script>

</head>
<body>
	
	<%
		List<Product> cart = (List<Product>) request.getAttribute("PRODUCT_LIST");
		String user = (String)session.getAttribute("USERNAME");
	%>
	<h1><%=user %>'s Cart</h1><br/>
	
	<a href="LoginServlet">Home</a>	
	
	<form name="cartform" action="ShowCart" method="post">
		<input type="hidden" name="hdnpid" id="hdnpid" value="[return value from product function]"/>
	</form>
	
	<hr/>
		<table id="Table1" border="1" >
			<thead>
				<tr>
					<th>Product ID</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>select</th>
				</tr>
			</thead>
	<%
		for(Product p : cart)
		{
	%>
		<tr>
			<td><%= p.getPid() %></td>
			<td><%= p.getPrice() %></td>
			<td><%= p.getQuantity() %></td>
			<td> <input type="checkbox" onclick="setData()"/> </td>
		</tr>
	
	<%
		}
	%>
		</table><br/>
		
	<form name="enter" action="ShowCart" method="post">
		<input type="hidden" name="hdnpid2" id="hdnpid2" value=""/>
		<input type="submit" onclick="submitForm()" value="Delete"/><br/><br/>
	</form>
		
		
		<form action="OrderServlet" method = "post">
			<input type="submit" value="Buy"/>
		</form>

	

</body>
</html>