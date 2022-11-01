<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/frame/main/footer.css">


<title>Insert title here</title>
<style>
#container {
	margin: 0 auto;
	padding: 0 auto;
	box-sizing: border-box;
	width: 100vw;
	height: 100vh;
	display: grid;
	grid-template-columns: 300px 1fr;
	grid-template-rows: 120px 100px 1fr 120px;
	grid-template-areas: 'header header' 'nav nav' 'main main'
		'footer footer';
}

header {
	grid-area: header;
	display: flex;
	justify-content: center;
	align-items: center;
}

nav {
	grid-area: nav;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100%;
	background-color: gray;
}

main{
	display: grid;
	grid-area : main;
	grid-template-columns:300px 1fr;
}

#sec1 {
	height: 100%;
	align-items: center;
 	padding-left: 2.4rem; 
	padding-top:4rem;
	border-right : 2px solid black;
}

#sec2-form {
	display: flex;
    flex-direction: column;
    padding-top : 4rem;
    padding-left : 4rem;
}

footer {
	grid-area: footer;
	background-color: gray;
}

li {
	list-style: none;
	line-height: 3.5rem;
	cursor: pointer;
}

a {
	text-decoration: none;
	color: rgb(214, 214, 214);
	width: 200px;
}

a:hover {
	color: black;
}

.bar-menu { 
    display: none; 
}

button {
	width : 10rem;
}

label {
	line-height : 3rem;
/* 	width : 5rem; */
}
.category-menu {
	padding: 15px 0 15px 0;
	
	border-bottom: 2px solid black;
	margin-top: 10px;
	margin: 0 auto;
	width: 100%;
	display: flex;
	flex-direction: row;
	justify-content: left;
	gap: 30px;
	text-align: center;
	margin-bottom: 30px;
}
.category-menu img {
	margin-top: 10px;
	width: 40px;
	height: 40px;
}

.img-header {
	display: flex;
	align-items: center;
	justify-content: center;
}

.img-header img {
	width: 80%;
	margin-left: 10%;
	
}
.li{
    margin-left: 30px;
}

.flex-container {
	display: grid;
	width: 90%;
	height: auto;
	justify-content: center;
	grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
	grid-template-rows: 1fr 1fr;
    gap: 3rem;
    margin-bottom: 10px;
    padding-left:4rem;
}

.flex-container div {
	width: 100%;
}

.flex-container img {
	width: 100%;
	height: 200px;
}
.pagebtn{
	border: none;
    background-color: white;
    font-size: 15px;
    width:2rem;
    cursor:pointer;
    margin:0 auto;
}
#pageBtn{
	width:500px;
	
	margin: 0 auto;
}
</style>

</head>
<body>
	<div id="container">
		<header>
		<h1>임시 헤더</h1>
<%--            <%@ include file="../frame/mypage/header.jsp" %> --%>
        </header>
		<nav>
			<h2>관리자 페이지</h2>
		</nav>
		<main>
			<div id="sec1">
				<div id="menu-bar">
				<ul><h2>쇼핑몰</h2>
					<li><a href="${pageContext.request.contextPath}/viser/shop-add">상품 등록</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/modify/home">상품 수정</a></li>
					<li><a href="${pageContext.request.contextPath}/viser/delete/home">상품 삭제</a></li>
				</ul>
				<ul><h2>호텔</h2>
					<li>예약 확인</li>
					<li>이모 저모</li>
				</ul>
			</div>
			</div>
			<div id="sec2">
				<div class="category-menu">
                    <li class="li"><a href="${pageContext.request.contextPath}/viser/modify/home"><img
                            src="${pageContext.request.contextPath}/image/shop/Home.png"
                            alt=""><br>Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/viser/modify/Walk"><img
                            src="${pageContext.request.contextPath}/image/shop/Walk.png"
                            alt=""><br>Walk</a></li>
                    <li><a
                        href="${pageContext.request.contextPath}/viser/modify/Carrier"><img
                            src="${pageContext.request.contextPath}/image/shop/Carrier.png"
                            alt=""><br>Carrier</a></li>
                    <li><a
                        href="${pageContext.request.contextPath}/viser/modify/Clothes"><img
                            src="${pageContext.request.contextPath}/image/shop/Clothes.png"
                            alt=""><br>Clothes</a></li>
                    <li><a
                        href="${pageContext.request.contextPath}/viser/modify/Dining"><img
                            src="${pageContext.request.contextPath}/image/shop/Dining.png"
                            alt=""><br>Dining</a></li>
                    <li><a
                        href="${pageContext.request.contextPath}/viser/modify/Grooming"><img
                            src="${pageContext.request.contextPath}/image/shop/Grooming.png"
                            alt=""><br>Grooming</a></li>
                    <li><a href="${pageContext.request.contextPath}/viser/modify/toy"><img
                            src="${pageContext.request.contextPath}/image/shop/Toy.png" 
                            alt=""><br>Toy</a></li>
                    <li><a href="${pageContext.request.contextPath}/viser/modify/Food"><img
                            src="${pageContext.request.contextPath}/image/shop/Food.png"
                            alt=""><br>Food</a></li>
                </div>

                <div id="productList" class="flex-container">

                </div>

                <div id="pageBtn">
					
                </div>

                <input type="hidden" id="category" value="${category}"/>

           
            

			</div>
		</main>
		<footer>
		<h1>임시 푸터</h1>
<%-- 			<%@ include file="../frame/main/footer.jsp"%> --%>
		</footer>
		</div>
		<script>
                var pageCount=10;
                getCateList(1);
    
                function getCateList(page){
                    $('#productList').empty();
                    $('#pageBtn').empty();
                    
                    var category = document.getElementById("category").value;
                    
                    fetch("${pageContext.request.contextPath}/getList", { 
                        method: "POST",
                           headers: {
                             "Content-Type": "application/json"
                           },
                           body:JSON.stringify({"category":category, "page":page, "pageCount":pageCount})
                     }).then((response) => response.json())
                     .then((data) => {
                        console.log(data);
        
                        var productListDiv=$("#productList");
                        
                        for(dict of data.list){
                            console.log('${pageContext.request.contextPath}');
                            productListDiv.append('<div class="list">'
                                    +'<a href="'+'${pageContext.request.contextPath}'+'/viser/update/id/'+dict.product_id+'">'
                                    +'<img src="'+dict.product_image+'" alt="">'
                                    +'<p>'+dict.product_name+'</p>'
                                    +'<h3>'
                                    +dict.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')+'원'
                                    +'</h3></a>'
                            +'</div>');
                        }
                        
                        
                        var total=0;
                        var stNum;
                        var edNum;
                        var preNum;
                        var nextNum;
                        
                        total = parseInt(data.total/pageCount);
                        
                        if(parseInt(data.total%pageCount)!=0){
                            total++;
                        }
                        
                        stNum=parseInt(parseInt(page/10)*10);
                        
                        if(parseInt(page%10)!=0){
                            stNum++;
                        }else{
                            stNum-=9
                        }
                        
                        edNum = stNum + 10;
                        
                        edNum=parseInt(parseInt(edNum/10)*10);
                        
                        if(edNum>total){
                            edNum=total;
                        }
                        
                        
                        if(page==1){
                            preNum=1;
                        }else{
                            preNum=page-1;
                        }
                        if(page==total){
                            nextNum=total;
                        }else{
                            nextNum=page+1;
                        }
                        
                        $('#pageBtn').append(
                                '<button onclick="getCateList(1)" class="pagebtn">'+'\<\<'+'</button>'
                        );
                        
                        $('#pageBtn').append(
                                '<button onclick="getCateList('+preNum+')" class="pagebtn">'+'\<'+'</button>'
                        );
                        
                        for(var i=stNum;i<=edNum;i++){	
                            if(i==page){
                                $('#pageBtn').append(
                                        '<button onclick="getCateList('+i+')" style="color:red;" class="pagebtn">'+i+'</button>'
                                );
                            }else{
                                $('#pageBtn').append(
                                        '<button onclick="getCateList('+i+')" class="pagebtn">'+i+'</button>'
                                );
                            }
                            
                        }
                        
                        $('#pageBtn').append(
                                '<button onclick="getCateList('+nextNum+')" class="pagebtn">'+'\>'+'</button>'
                        );
                        
                        $('#pageBtn').append(
                                '<button onclick="getCateList('+total+')" class="pagebtn">'+'\>\>'+'</button>'
                        );
                        
                     });
                }
            </script>
</body>
</html>