<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav id="nav1">
        <ul>
          <li><h2>Shop</h2></li>
          <li><a href="${pageContext.request.contextPath}/gohotel">Hotel</a></li>

        </ul>
      </nav>
      <div>
        <h1><a href="${pageContext.request.contextPath}/gomain" id="mainA1">Déng Nuri</a></h1>
      </div>
      <nav id="nav2">
      		<div id="hover-layout" class="hover-layout1">
                
            </div>
        <ul>
          <li id="nav2-li-1stli"  class="hover-lis">
            <a href="#"><p style="font-size: 16px">Search</p></a>
            
            <div id="nav2-li-1stdiv">
              <div id="nav2-searchdiv">
                <select id="search-category" name = "search">
                	<option value="shop">Shop</option>
                	<option value="hotel">Hotel</option>
                </select> 
                <input type="text" id="search" name="search" placeholder="검색하실 물품을 적어주세요"><button id="search-btn">검색</button>
              </div>
              <script type="text/javascript">
              		document.getElementById("search-btn").addEventListener("click",function(){
              			let category = document.getElementById("search-category").value;
              			let search = document.getElementById("search").value;
              			location.href="${pageContext.request.contextPath}/search?category="+category+"&search="+search;
              		});
              </script>
              <h2>아래 품목도 검색해보세요.</h2>              
              <div id="btns">
                <button class="search-btns" type="button">Home</button>
                <button class="search-btns" type="button">Walk</button>
                <button class="search-btns" type="button">Carrier</button>
                <button class="search-btns" type="button">Clothes</button>
                <button class="search-btns" type="button">Dining</button>
                <button class="search-btns" type="button">Grooming</button>
                <button class="search-btns" type="button">Toy</button>
                <button class="search-btns" type="button">Food</button>
                <button id="gohotel" type="button">Hotel</button>
                <button id="goshop" type="button">Shop</button>
                <button class="search-btns2" type="button">몽슈슈</button>
                <button class="search-btns2" type="button">앤블랭크</button>
              </div>
              <script type="text/javascript">
              		let btns = document.getElementsByClassName("search-btns");
              		for(let i = 0 ; i< btns.length; i++){
              			let category = btns[i].innerText;
              			btns[i].addEventListener("click",function(){
              				location.href="${pageContext.request.contextPath}/shop/list/"+category;
              			})
              		}
              		let btns2 = document.getElementsByClassName("search-btns2");
              		for(let i = 0 ; i< btns2.length; i++){
              			let search = btns2[i].innerText;
              			btns2[i].addEventListener("click",function(){
              				location.href="${pageContext.request.contextPath}/search?category=shop&search="+search;
              			})
              		}
              		document.getElementById("gohotel").addEventListener("click",function(){
              			location.href="${pageContext.request.contextPath}/gohotel"
              		})
              		document.getElementById("goshop").addEventListener("click",function(){
              			location.href="${pageContext.request.contextPath}/goshop"
              		})
              </script>
            </div>
          </li>
          <li id="nav2-li-2ndli"  class="hover-lis">
            <a href="#">
              <p style="font-size: 16px">Notice</p>
            </a>
            
            <div id="nav2-li-2nddiv">
              <h2>알림받아라 인마</h2>
			  <a href="${pageContext.request.contextPath}/notice">알림 페이지이동</a>
            </div>
          </li>
          <li id="nav2-li-3rdli"  class="hover-lis">
            <a href="#">
              <p style="font-size: 16px">Wish</p>
            </a>
            
            <div id="nav2-li-3rddiv">
              <h2>니가 좋아하는거다!</h2>
              <a href="${pageContext.request.contextPath}/basket">
              장바구니 바로가기
              </a>
            </div>
          </li>
          <c:if test="${sessionScope.user != null}">
          <li id="nav2-li-mypage">
            <a href="${pageContext.request.contextPath}/mypage">
              <p style="font-size: 16px;">MyPage</p>
            </a>
          </li>
          </c:if>
          
           <c:if test="${sessionScope.user == null}">
           	<li id="nav2-li-4thli" class="hover-lis">
            <a href="#"><p style="font-size: 16px">Login</p></a>
            
            <div id="nav2-li-4thdiv">
              <h4>로그인</h4>
              <br>
              <form action="${pageContext.request.contextPath}/login">
                <h6>아이디</h6>
                <input type="text" name="mem_id1" id="mem_id1">
                <h6>비밀번호</h6>
                <input type="password" name="mem_pw1" id="mem_pw1"><br>
                <button>Login</button>
              </form>
              <p style="font-size: 11px; border-bottom:1px solid black; width:130px; margin-top:10px;" >혹시 회원이 아니신가요??</p>
              <a href="${pageContext.request.contextPath}/membership" style="font-size:13px">회원 가입</a>
            </div>
            </li>
          	</c:if>
          	<c:if test="${sessionScope.user != null}">
          		<li id="nav2-li-4thli">
          		<a href="${pageContext.request.contextPath}/logout"><p style="font-size: 16px">Logout</p></a>
          		</li>
          	</c:if>
          
        </ul>
      </nav>
      <script>
      	let lis = document.getElementsByClassName("hover-lis");
      	for(let i = 0 ; i< lis.length ; i++){
      		lis[i].addEventListener("mouseover",function(){
				document.getElementById("hover-layout").style.display="block";
      		});
      		lis[i].addEventListener("mouseleave",function(){
				document.getElementById("hover-layout").style.display="none";
      		});
      	};
      </script>