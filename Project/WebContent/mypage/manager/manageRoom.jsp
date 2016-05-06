<%@page import="com.hb.model.sturoom.SturoomDto"%>
<%@page import="com.hb.model.teacher.TeacherDto"%>
<%@page import="com.hb.model.student.StuDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>메인 페이지</title>
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/grid.css"/>
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css"/>
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/nav.css"/>
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/subnav5.css"/>
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/aside2.css"/>
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css"/>
      <style type="text/css">
        <!--전부 탭메뉴 구현 css입니다-->
        .content {
          height: 800px;
        }
        .room ul.tabs {
          margin: 0;
          padding: 0;
          float: left;
          list-style: none;
          height: 32px;
          border-bottom: 1px solid #eee;
          border-left: 1px solid #eee;
          width: 100%;
          font-family: "dotum";
          font-size: 12px;
        }
        .room ul.tabs li {
          float: left;
          text-align: center;
          cursor: pointer;
          width: 82px;
          height: 31px;
          line-height: 31px;
          border: 1px solid #eee;
          border-left: none;
          font-weight: bold;
          background: #fafafa;
          overflow: hidden;
          position: relative;
        }
        .room ul.tabs li.active {
          background: #FFFFFF;
          border-bottom: 1px solid #FFFFFF;
        }
        .room .tab_container {
          border: 1px solid #eee;
          border-top: none;
          clear: both;
          float: left;
          width: 248px;
          background: #FFFFFF;
        }
        .room .tab_content {
          padding: 5px;
          font-size: 12px;
          display: none;
        }
        .room .tab_container .tab_content ul {
          width: 100%;
          margin: 0;
          padding: 0;
        }
        .room .tab_container .tab_content ul li {
          padding: 5px;
          list-style: none;
        }
        #container {
          width: 249px;
          margin: 0 auto;
        }
      </style>
      <script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
      <script type="text/javascript" src="js/menu.js"></script>
      <script type="text/javascript">
      <%
     	ArrayList<StuDto> slist = (ArrayList<StuDto>)request.getAttribute("slist");//학생리스트
     	ArrayList<SturoomDto> rlist = (ArrayList<SturoomDto>)request.getAttribute("rlist");//강의실리스트
     	ArrayList<TeacherDto> tlist = (ArrayList<TeacherDto>)request.getAttribute("tlist");//강사리스트
      %>
        $(document).ready(function () {
          PageController.initBtn();
          //탭메뉴 설정
          $(".room .tab_content").hide();
          $(".room .tab_content:first").show();
          $(".room ul.tabs li").click(function () {
            $(".room ul.tabs li").removeClass("active").css("color", "#333");
            $(this).addClass("active").css("color", "darked");
            $(".room .tab_content").hide();
            var activeTab = $(this).attr("id");
            $("#" + activeTab + "_content").fadeIn();
          });
          //학생 리스트 보기
          $("#room").change(function(){
			PageController.viewEachList();
          });
          //학생 배정 추가하기
          $("#add").click(function () {
            window.open("addstuform.korean", "학생 배정", "width=500 height=500");
          });
          //학생 배정 취소하기
          $("#cancle1").click(function () {
			PageController.delStu();
          });
          //학생 배정 취소 완료
          $("#delok").click(function () {
			PageController.delStuOk();
			var roomno = $("#room").val();
			var stulist = [];
			<%
			for(StuDto bean : slist){
			%>
				if($("#checkbox<%=bean.getStuno()%>").is(":checked"))
					stulist.push(<%=bean.getStuno()%>);
			<%
			}
			%>
			$.ajax({
				"url": "canclestu.korean",
	              "data": {
	            	  "roomno" : roomno,
	            	  "stulist" : stulist
	              },
	              "success": function (data) {
					  location.reload();
	            	  $(".stucheck").attr("checked", false);
	               	  alert("배정취소!");
	              },
	              "error": function () {
	            	  alert("선택된 학생이 없소!");
	              }
				
			});
          });
        //학생 배정 취소를 취소
          $("#cancle2").click(function () {
        	  PageController.delStuCancle();
          });
		  //취소할 학생 일괄 선택
		  $("#allstucheck").click(function(){
				if($("#allstucheck").is(":checked")){
					$(".stucheck").prop("checked",true);
				}else{
					$(".stucheck").prop("checked",false);
				}
		  });
          //강사 배정
          //강사 배정하기
          $("#btn2").click(function () {
            PageController.assignTch();
          });
          //강사 배정 완료
          $("#btn4").click(function () {
            var tchlist = [];
            $('.tchlist').each(function (idx, item) {
              tchlist[idx] = $(item).text();
            });
            var roomlist = [];
            $('.selectroom').each(function (idx, item) {
              roomlist[idx] = $('#tch' + idx + ' option:selected').attr("value");
            });
            $.ajax({
              "url": "addtch.korean",
              "data": {
                "tchlist": tchlist,
                "roomlist": roomlist
              },
              "success": function (data) {
                var str = data;
                $('.roomlist').each(function (idx, item) {
                 $(item).text(str.charAt(idx)+"강의실");
                });
                alert("배정완료!");
              },
              "error": function () {
                alert("에러났소!");
              }
            });
            PageController.assignTchOk();
          });
          //강사 배정 완료를 취소
          $("#btn5").click(function(){
        	  PageController.assignTchCancle();
          });
          //강사 배정 취소하기
          $("#btn3").click(function () {
              PageController.cancleTch();
            });
             //강사 배정 취소 완료
          $("#btn6").click(function () {
              var tchlist = [];
              $('.tchlist').each(function (idx, item) {
                tchlist.push($(item).text());
              });
              var checklist = [];
              $('.tchcheck').each(function (idx, item) {
            	 checklist.push($('#tchcheck' + idx).is(":checked"));
              });
        	  $.ajax({
                  "url": "cancletch.korean",
                  "data": {
                	  "tchlist": tchlist,
                      "checklist": checklist
                    },
                  "success": function (data) {
                	  var str = data;
                    $('.roomlist').each(function (idx, item) {
                    	var convert = str.split("/");
                    	if(convert[idx]=="null"){
                        	$(item).text("없음");
                    	}else{
                        	$(item).text(convert[idx]+"강의실");
                    	}
                      });
                    alert("썩쎄쓰!");
                    $(".tchcheck").attr("checked", false);
                  },
                  "error": function () {
                    alert("에러났소!");
                  }
                });
              PageController.cancleTchOk();
            }); 
            //강사 배정 취소 완료를 취소
          $("#btn7").click(function(){
        	  PageController.cancleTchCancle();
        	  $(".tchcheck").attr("checked", false);
          });
          $("#alltchcheck").click(function(){
          	if($("#alltchcheck").is(":checked")){
  				$(".tchcheck").prop("checked",true);
  			}else{
  				$(".tchcheck").prop("checked",false);
  			}
          });
        //강의실 추가
        $("#addroom").click(function(){
        	PageController.addroom();
        });
     	//강의실 추가 ok
        $("#addroomok").click(function(){
        	var newroomno = $("#addroomtxt").val();
        	if(newroomno==""){
        		alert("공백은 입력할 수 없습니다");
        		return false;
        	}
        	$.ajax({
                "url": "addroom.korean",
                "data": {
                	"newroomno" : newroomno
                  },
                "success": function (data) {
                  location.reload();
                  alert(data);
                },
                "error": function () {
                  alert("에러!");
                }
              });
        });
     	//강의실 추가 취소
     	 $("#addroomcancle").click(function(){
        	PageController.addroomcancle();
        });
        //강의실 삭제
 		$("#delroom").click(function(){
        	PageController.delroom();
       	 });
        //강의실 삭제 ok
 		$("#delroomok").click(function(){
 			var roomlist = [];
	         <%
				for(SturoomDto bean : rlist){
				%>
					if($("#roomcheck<%=bean.getRoomNo()%>").is(":checked"))
						roomlist.push(<%=bean.getRoomNo()%>);
				<%
				}
				%>
				$.ajax({
	                "url": "delroom.korean",
	                "data": {
	                	"roomlist" : roomlist
	                  },
	                "success": function (data) {
	                location.reload();
	                  alert(data);
	                },
	                "error": function () {
	                  alert("하나 이상의 강의실을 선택해 주세요!");
	                }
	              });
       	 });
        //강의실 삭제를 취소
 		$("#delroomcancle").click(function(){
        	PageController.delroomcancle();
       	 });
        //강의실 삭제 체크박스 전체 선택
 		$("#allroomcheck").click(function(){
			if($("#allroomcheck").is(":checked")){
				$(".eachroomcheck").prop("checked",true);
			}else{
				$(".eachroomcheck").prop("checked",false);
			}
		});
        });
        
        //버튼을 숨기고 보여주는 함수 모음
      	var PageController = {
        //최초 페이지 로딩 시 설정
         "initBtn" : function(){
        	  $(".stulist").hide();
        	  $(".stulist1").show();
        	  $(".tchcheck").hide();
        	  $(".stucheck").hide();
        	  $("#modifybtn").hide();
              $("#delbtn").hide();
              $(".selectroom").hide();
              $("#btn4").hide();
              $("#btn5").hide();
              $("#btn6").hide();
              $("#btn7").hide();
              $("#addroomform").hide();
              $("#delroombtn").hide();
              $(".eachroomcheck").hide();
              $("#allroomcheck").hide();
          },
          "viewEachList" : function(){
        	  var idx = $("#room").val();
        	  $('.stulist').hide();
        	  $('.stulist'+idx).show();
          },          
         //학생 제거
          "delStu" : function(){
              $("#initbtn").hide();
              $(".stucheck").show();
              $("#delbtn").show();
          },
          //학생 제거 완료
          "delStuOk" : function(){
              $("#initbtn").show();
              $(".stucheck").hide();
              $("#delbtn").hide();
             
          },
          //학생 제거 취소
          "delStuCancle" : function(){
              $("#initbtn").show();
              $(".stucheck").hide();
              $("#delbtn").hide();
              $(".stucheck").attr("checked", false);
          },
        //강사 배정
       	 "assignTch": function () {
            $(".roomlist").hide();
            $(".selectroom").show();
            $("#btn4").show();
            $("#btn5").show();
            $("#btn2").hide();
            $("#btn3").hide();
          },
         //강사 배정 완료
          "assignTchOk" : function(){
              $(".roomlist").show();
              $(".selectroom").hide();
              $("#btn2").show();
              $("#btn3").show();
              $("#btn4").hide();
              $("#btn5").hide();
          },
          //강사 배정 완료를 취소
          "assignTchCancle" : function(){
              $(".roomlist").show();
              $(".selectroom").hide();
              $("#btn2").show();
              $("#btn3").show();
              $("#btn4").hide();
              $("#btn5").hide();
          },
          //강사 배정 취소
          "cancleTch" : function(){
        	  $("#btn2").hide();
              $("#btn3").hide();
        	  $("#btn6").show();
        	  $("#btn7").show();
        	  $(".tchcheck").show();
          },
          //강사 배정 취소 ok
          "cancleTchOk" : function(){
        	  $(".roomlist").show();
              $(".selectroom").hide();
              $(".tchcheck").hide();
              $("#btn2").show();
              $("#btn3").show();
              $("#btn4").hide();
              $("#btn6").hide();
              $("#btn7").hide();
          },
          //강사 배정 취소를 취소
          "cancleTchCancle" : function(){
        	  $(".roomlist").show();
              $(".selectroom").hide();
              $(".tchcheck").hide();
              $("#btn2").show();
              $("#btn3").show();
              $("#btn4").hide();
              $("#btn6").hide();
              $("#btn7").hide();
          },
          //강의실 추가
          "addroom" : function(){
        	  $("#roombtn").hide();
        	  $("#addroomform").show();
          },
          //강의실 추가를 취소
          "addroomcancle" : function(){
        	  $("#roombtn").show();
        	  $("#addroomform").hide();
          },
          //강의실 삭제
          "delroom" : function(){
        	  $(".eachroomcheck").show();
        	  $("#allroomcheck").show();
        	  $("#roombtn").hide();
        	  $("#delroombtn").show();
          },
          //강의실 삭제를 취소
          "delroomcancle" : function(){
        	  $(".eachroomcheck").hide();
        	  $("#allroomcheck").hide();
        	  $("#roombtn").show();
        	  $("#delroombtn").hide();
        	  $(".eachroomcheck").attr("checked", false);
        	  $("#allroomcheck").attr("checked", false);
          }
        };
      </script>
    </head>
    <body>
      <div class="container_12">
        <!-- header -->
        <%@include file="/templet/header.jsp"%>
        <!-- nav -->
        <%@include file="/templet/nav.jsp"%>
        <!-- aside1 -->
        <%@include file="/templet/loginForm.jsp" %>
        <%@include file="/templet/subnav5.jsp" %>

        <!-- content start -->
        <div class="room">
          <h1>강의실 관리</h1>
          <div>
            <!-- 탭 메뉴 -->
            <ul class="tabs">
              <li id="tab1" class="active">강의실 관리</li>
              <li id="tab2">학생 관리</li>
              <li id="tab3">강사 관리</li>
            </ul>
            <div class="tab_container">
            <div id="tab1_content" class="tab_content">
               		<table>
               			<tr>
               				<th>강의실</th>
               				<th><input type = "checkbox" class = "roomcheck" id = "allroomcheck"></th>
               			</tr>
               				<%
									for(SturoomDto bean : rlist){
										%>
               			<tr class = "rlist">
               				<td >
                            <%=bean.getRoomNo() %>강의실
               				</td>
               				<td>
               				<input type = "checkbox" class = "eachroomcheck" id = "roomcheck<%=bean.getRoomNo()%>">
               				</td>
               			</tr>
                          <%
									}
								%>
               		</table>
               		<div id = "addroomform">
               			추가할 강의실 번호를 입력하세요
               			<input type = "text" id = "addroomtxt"/>
               			<div><button id = "addroomok">추가</button><button id = "addroomcancle">취소</button></div>
               		</div>
               		<div id = "roombtn">
               		<button id= "addroom">강의실추가</button>
               		<button id = "delroom">강의실삭제</button>
               		</div>
               		<div id = "delroombtn">
               			<button id = "delroomok">삭제</button>
               			<button id = "delroomcancle">취소</button>
               		</div>
               </div>
              <!-- 학생관리 메뉴 -->
              <div id="tab2_content" class="tab_content">
                <select id="room">
                          <%
									for(SturoomDto bean : rlist){
										%>
                            <option value="<%=bean.getRoomNo()%>"><%=bean.getRoomNo() %>강의실</option>
                          <%
									}
								%>
                        </select>
                <table class = "stutab">
                  <tr>
                    <th>학번</th>
                    <th>이름</th>
                    <th>배정강의실</th>
                    <th><input type = "checkbox" id = "allstucheck" class = "stucheck"></th>
                  </tr>
                    <%
					for(StuDto bean : slist){
								%>
                	<tr class = "stulist<%=bean.getRoomno()%> stulist">
                      <td><%=bean.getStuno()%></td>
                      <td><%=bean.getStuname()%></td>
                      <td class = "sturoomlist"><%=bean.getRoomno()%>강의실</td>
                      <td><input type="checkbox" class="stucheck" id = "checkbox<%=bean.getStuno()%>"/></td>
                    </tr>
                  <%
								}
							%>
                </table>
                <div id="initbtn">
                  <button id="add">강의실배정</button>
                  <button id="cancle1">배정취소</button>
                </div>
                <div id="delbtn">
                  <button id="delok">취소완료</button>
                  <button id="cancle2">취소</button>
                </div>
              </div>
              <!-- 강사관리 메뉴 -->
              <div id="tab3_content" class="tab_content">
                <table>
                  <tr>
                    <th>강사번호</th>
                    <th>이름</th>
                    <th>배정강의실</th>
                    <th><input type = "checkbox" id = "alltchcheck" class = "tchcheck"></th>
                  </tr>
                  <tr>
                    <%
					int tchidx = 0;
                    int checkidx = 0;
                    
									for(TeacherDto bean : tlist){
								%>
                      <td class="tchlist"><%=bean.getTchno()%></td>
                      <td><%=bean.getTchname()%></td>
                      <td class="roomlist"><%
                      
                     String roomno = bean.getRoomno();
                      if(roomno==null){
                    	  %>
                   	 		 없음
                   	  <%
                      }
                      else{
                    	  out.print(roomno+"강의실");
                     }
                      %></td>
                      <td class="selectroom">
                        <select id="tch<%=tchidx++%>">
                          <%
									for(SturoomDto bean2 : rlist){
										%>
                            <option value="<%=bean2.getRoomNo()%>"><%=bean2.getRoomNo() %>강의실</option>
                          <%
									}
								%>
                        </select>
                      </td>
                      <td><input type="checkbox" class = "tchcheck" id="tchcheck<%=checkidx++%>"/></td>
                    </tr>

                  <%
								}
							%>
                </table>
                <button id="btn2">강의실배정</button>
                <button id="btn3">배정취소</button>
                <button id="btn4">배정완료</button>
                <button id="btn5">취소</button>
                <button id="btn6">배정취소</button>
                <button id="btn7">취소</button>
              </div>
               
            </div>
          </div>

        </div>

        <!-- content end -->

        <!-- aside2 -->
        <%@include file="/templet/aside2.jsp"%>
        <!-- footer -->
        <%@include file="/templet/footer.jsp"%>
      </div>
    </body>
  </html>