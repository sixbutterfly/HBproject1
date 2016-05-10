<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
[
	{
		"day":<%=(Integer)request.getAttribute("day") %>
		,"attdStatus":"<%=(String)request.getAttribute("attdStatus") %>"
		,"atdNo":"<%=(String[])request.getAttribute("atdNo") %>"
		<%-- ,"level":"<%=(Integer)request.getAttribute("level") %>" --%>
	}
]
