<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Shoes"%>
<%@ page import="dao.ShoesRepository"%>
<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		//response.sendRedirect("products.jsp"); //이건 없는거 같음
		return;
	}

	ShoesRepository dao = ShoesRepository.getInstance();

	Shoes product = dao.getShoesById(id);
	if (product == null) {
		//response.sendRedirect("exceptionNoBookId.jsp"); 이것도 없는거 같음 아직
	}

	ArrayList<Shoes> goodsList = dao.getAllShoes();
	Shoes goods = new Shoes();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getProductId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Shoes> list = (ArrayList<Shoes>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<Shoes>();
		session.setAttribute("cartlist", list);
	}

	int cnt = 0;
	Shoes goodsQnt = new Shoes();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getProductId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("shoe.jsp?id=" + id);
%>