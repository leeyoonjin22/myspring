<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.spring.myspring.BoardDAOImpl"%>

<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="u" class="com.spring.myspring.BoardVO" />
<jsp:setProperty property="*" name="u"/>

<%
	BoardDAOImpl boardDAO = new BoardDAOImpl();
	int i=boardDAO.updateBoard(u);
	response.sendRedirect("list");
%>