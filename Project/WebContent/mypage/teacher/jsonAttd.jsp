<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
[
	{
	"attdDate":<%=(String)request.getAttribute("attdDate") %>
		,"attdStatus":"<%=(String)request.getAttribute("attdStatus") %>"
		,"attdNo":"<%=(Integer)request.getAttribute("attdNo") %>"
		,"tchId":"<%=(Integer)request.getAttribute("tchId") %>"
	}
]