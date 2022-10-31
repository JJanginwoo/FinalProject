<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/4b992414b9.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/header.css?11">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/footer.css">
    <style>
       

        html,
        body,
        header,
        main,
        footer,
        section,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        p,
        a,
        ul,
        li,
        nav {
            font-family: 'Noto Sans KR', sans-serif;
            margin: 0;
            padding: 0;
        }

        body {
            height: 100vh;
        }
		

       #container {
            position: relative;
            width: 100%;
            height: 100%;
            display: grid;
            grid-template-rows: 70px 1fr 70px;
            grid-template-columns: 1fr;
            grid-template-areas: 'header' 'main' 'footer';
        }

       

        main {
            width: 100%;
            background-color: #f5ebe0;
            grid-area: main;
        }

        section {
            width: 70vw;

        }
        .art1{
    width: 80%;
    margin: 0 auto;
    border-top: 2px solid black;
   }
   .art2{
    width: 60%;
    margin: 0 auto;
    height: 50px;
    background-color: black;
    color: white;
    text-align: center;
    margin-bottom: 2rem;
   }
    
   .art3-Q{
    color: darkcyan;
    font-size: 1.3rem;
    margin-right: 5px;
   }

   .art3-question{
   padding-top : 10px;
    padding-bottom: 17px;
    border-bottom: 2px solid black;
    font-weight: 600;
    color: rgb(70, 68, 68);
    cursor: pointer;
    font-size: 1.3rem;
   }

   .art3-content{
    padding-top: 15px;
    padding-bottom: 18px;
    border-bottom: 2px solid black;
    font-weight: 600;
    color: rgb(70, 68, 68);
    
    display: none;
   }
	.art3-content h3{
    margin-left: 15px;
   }
   
   .display-block{
    display: block;
   }


        button {
            cursor: pointer;
        }

        #main-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        #artcontainer{
            display: flex;
            flex-direction: column;
            
            width:50vw;
        }
       
        #sec2 {
            width:85%;
            margin: 40px;
            display: flex;
            flex-direction: row;
            
        }

        #sec2 nav {
            flex: 1;
            padding: 0 20px 0 0;
            border-right: 1px solid black;
        }

         #sec2 nav ul{
            position: relative;
            top: 14%;
            
        }
        #sec2 nav li {
            margin: 0 0 20px 0;
            font-size: 20px;
            ;
            list-style-type: none;
            display: block;
        }
       
        #sec2-div1 ul {
            width: 100%;
            background-color: #f5ebe0;
            font-size: 20px;
        }
        #sec2-div1 li {
            padding:10px
        }
        .selected{
            background-color: black;
            color:white;
        }
        #art2 {
            
            flex:5;
            width:70vw;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        #art2 div{
            width:85%;
        }
        #sec2-div2{
            
        
        }
        #sec2-div2 li {
            display: block;
            font-size: 13px;
            margin-top: 30px;
        }
        #sec2-div2-sel{
            padding:10px;
            height: 25px;
            border:5px solid white;
        }
        #sec2-div3{
            margin-top:20px;
        }
        #sec2-div3-table1{
            border-collapse: collapse;
            width:100%;
        }
        #sec2-div3-table1 td{
            text-align: center;
            border:1px solid black;
        }
        #sec2-div3-table2{
            border-collapse: collapse;
            
        }
        #sec2-div3-table2 td{
            text-align: center;
            
        }
    </style>
</head>

<body>

    <div id="container">
        <header>
            <%@ include file="../frame/mypage/header.jsp" %>
        </header>

        <main>
            <div id="main-container">
                <article class="art1">
        
                </article>
                <article class="art2">
                    <h2>자주 묻는 질문</h2>
                </article>
                <section id="sec2">
                    <nav>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/mypage" >주문내역조회</a></li>
                            <li><a href="${pageContext.request.contextPath}/userinfo">회원정보</a></li>
                            <li><a href="${pageContext.request.contextPath}/wish">장바구니</a></li>
                            <li><a href="${pageContext.request.contextPath}/usequestion/자주묻는질문" style="text-decoration: underline">자주묻는질문</a></li>
                            <li><a href="${pageContext.request.contextPath}/question">문의하기</a></li>
                        </ul>
                    </nav>
                    
                    <article id="art2">
                        <c:forEach var="item" items="${list}"> 
                        	<div class="art3-question" class="tab_title">
                              	<span class="art3-Q">Q</span> ${item.boardTitle}
                           	</div>
                       
                            <div class="art3-content">
                           		<h4>${item.boardContent}</h4>
                            </div>
 							</c:forEach>
                    
                          
                          <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
                          <script>
                          for(let i = 0; i<document.getElementById("art2").children.length; i++){
                              
                        	  document.getElementsByClassName("art3-question")[i].addEventListener("click",function(){
                                      
                        		  document.getElementsByClassName("art3-content")[i].classList.toggle("display-block");
                                      
                        		  for(let j = 0; j<document.getElementById("art2").children.length; j++) {
                                    	  
                        			  if(j!= i){
                                    		  
                        				  document.getElementsByClassName("art3-content")[j].classList.remove("display-block");
                                    	  }
                                      }
                                  });
                          } 
                         
                          
                    
                         
//                           $(document).ready(function(){
//                         	  $(".tab_title div").click(function(){
//                         		  console.log("방가방가");
//                         		  var idx = $(this).index();
//                         		  $(".tab_title h4").removeClass("on");
//                         		  $(".tab_title h4").eq(idx).addClass("on");
//                         		  $(".tab_cont > h4").hide();
//                         		  $(".tab_cont > h4").eq(idx).show();
//                         		  console.log("사요나라");
//                         	  })
                        	  
//                           });
                          
                          
                          </script>
                    </article>
                </section>
                </div>
        </main>


        <footer>
            <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>
</body>

</html>