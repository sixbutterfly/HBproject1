<%@page import="com.hb.model.room.RoomDto"%>
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
        	  var idx = $("#room").val();
        	  $('.stulist').hide();
        	  $('.stulist'+idx).show();
          });
          //학생 배정 추가하기
          $("#add").click(function () {
            window.open("addstuform.korean", "학생 배정", "width=500 height=500");
          });
          //수정하기
          $("#modify").click(function () {});
          //삭제하기
          $("#del").click(function () {
			PageController.delStu();
          });
          //학생 삭제 완료
          $("#delok").click(function () {
			PageController.delStuOk();
            $(".stucheck").attr("checked", false);
          });
          $("#cancle").click(function () {
        	  PageController.delStuCancle();
          });
          $("#room").change(function () {
        	  
          });

          //강사 배정
          //배정하기
          $("#btn2").click(function () {
            PageController.assignTch();
          });
          //배정 완료
          $("#btn4").click(function () {
            var tchlist = [];
            $('.tchlist').each(function (idx, item) {
              tchlist[idx] = $(item).text();
            });
            var roomlist = [];
            $('.roomselect').each(function (idx, item) {
              roomlist[idx] = $('#tch' + idx + ' option:selected').attr("value");
            });
            $.ajax({
              "url": "assignroom.korean",
              "data": {
                "tchlist": tchlist,
                "roomlist": roomlist
              },
              "success": function (data) {
                var str = data;
                $('.roomlist').each(function (idx, item) {
                 $(item).text(str.charAt(idx));
                });
                alert("썩쎄쓰!");
              },
              "error": function () {
                alert("에러났소!");
              }
            });
            PageController.assignTchOk();
          });
          //배정 취소하기
          $("#btn3").click(function () {
              PageController.cancleTch();
            });
             //배정 취소 완료
          $("#btn5").click(function () {
              var tchlist = [];
              $('.tchlist').each(function (idx, item) {
                tchlist[idx] = $(item).text();
              });
              var checklist = [];
              $('.tchcheck').each(function (idx, item) {
            	 checklist[idx] = $('#tchcheck' + idx).is(":checked");
            	 console.log(checklist[idx]);
              });
        	  $.ajax({
                  "url": "delroom.korean",
                  "data": {
                	  "tchlist": tchlist,
                      "checklist": checklist
                    },
                  "success": function (data) {
                	  var str = data;
                    $('.roomlist').each(function (idx, item) {
                    	var convert = str.split("/");
                        $(item).text(convert[idx]);
                      });
                    alert("썩쎄쓰!");
                  },
                  "error": function () {
                    alert("에러났소!");
                  }
                });
              PageController.cancleTchOk();
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
              $("#delbtn").hide();
              $(".roomselect").hide();
              $("#btn4").hide();
              $("#btn5").hide();
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
              $("#stucheck").hide();
              $("#delbtn").hide();
          },
        //강사 배정
       	 "assignTch": function () {
            $(".roomlist").hide();
            $(".roomselect").show();
            $("#btn4").show();
            $("#btn2").hide();
            $("#btn3").hide();
          },
          //강사 배정 취소
          "cancleTch" : function(){
        	  $("#btn2").hide();
              $("#btn3").hide();
        	  $("#btn5").show();
        	  $(".tchcheck").show();
          },
         //강사 배정 완료
          "assignTchOk" : function(){
              $(".roomlist").show();
              $(".roomselect").hide();
              $("#btn2").show();
              $("#btn3").show();
              $("#btn4").hide();
          },
          //강사 배정 취소 ok
          "cancleTchOk" : function(){
        	  $(".roomlist").show();
              $(".roomselect").hide();
              $(".tchcheck").hide();
              $("#btn2").show();
              $("#btn3").show();
              $("#btn4").hide();
              $("#btn5").hide();
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
              <li id="tab1" class="active">학생 관리</li>
              <li id="tab2">강사 관리</li>
            </ul>
            <div class="tab_container">
              <!-- 학생관리 메뉴 -->
              <div id="tab1_content" class="tab_content">
                <select id="room">
                  <option value="1">1강의실</option>
                  <option value="2">2강의실</option>
                  <option value="3">3강의실</option>
                </select>
                <table>
                  <tr>
                    <th>학번</th>
                    <th>이름</th>
                    <th>배정강의실</th>
                  </tr>
                    <%
                    ArrayList<StuDto> slist = (ArrayList<StuDto>)request.getAttribute("slist");
									for(StuDto bean : slist){
								%>
                	<tr class = "stulist<%=bean.getRoomno()%> stulist">
                      <td><%=bean.getStuno()%></td>
                      <td><%=bean.getStuname()%></td>
                      <td><%=bean.getRoomno()%></td>
                      <td><input type="checkbox" class="stucheck"/></td>
                    </tr>
                  <%
								}
							%>
                </table>
                <div id="initbtn">
                  <button id="add">추가하기</button>
                  <button id="modify">수정하기</button>
                  <button id="del">삭제하기</button>
                </div>
                <div id="delbtn">
                  <button id="delok">삭제완료</button>
                  <button id="cancle">취소</button>
                </div>
              </div>
              <!-- 강사관리 메뉴 -->
              <div id="tab2_content" class="tab_content">
                <table>
                  <tr>
                    <th>강사번호</th>
                    <th>이름</th>
                    <th>배정강의실</th>
                  </tr>
                  <tr>
                    <%
					int tchidx = 0;
                    int checkidx = 0;
                    ArrayList<TeacherDto> tlist = (ArrayList<TeacherDto>)request.getAttribute("tlist");
									for(TeacherDto bean : tlist){
								%>
                      <td class="tchlist"><%=bean.getTchno()%></td>
                      <td><%=bean.getTchname()%></td>
                      <td class="roomlist"><%=bean.getRoomno()%></td>
                      <td class="roomselect">
                        <select id="tch<%=tchidx++%>">
                          <%ArrayList<RoomDto> rlist = (ArrayList<RoomDto>)request.getAttribute("rlist");
									for(RoomDto bean2 : rlist){
										%>
                            <option value="<%=bean2.getRoomno()%>"><%=bean2.getRoomno() %></option>
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
                <button id="btn5">취소완료</button>
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
