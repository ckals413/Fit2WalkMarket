<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Shoes"%>
<%@ page import="dao.ShoesRepository"%>
<%
	String id = request.getParameter("cartId");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("cart.jsp");
		return;
	}

	session.invalidate();
	response.sendRedirect("cart.jsp");
%>
