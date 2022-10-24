<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/frame/main/header.css">
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

        button {
            cursor: pointer;
        }
        html {
            scroll-behavior: smooth;
        }

        

        .line {

            height: 1vh;
            width: 80%;

        }

        #main-container {
            height:100%;
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
            padding: 0 30px 0 0;
            border-right: 1px solid black;
        }

        #sec2 nav li {
            margin: 0 0 10px 0;
            font-size: 20px;
            ;
            list-style-type: none;
            display: block;
        }
        #sec2-div1{
            
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
            justify-content: center;
            align-items: center;
        }
        #sec2-div2{
            
        
        }
        #sec2-div2 li {
            display: block;
            font-size: 13px;
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
                
                <section id="sec2">
                    <nav>
                        <ul>
                             <li><a href="${pageContext.request.contextPath}/mypage" style="text-decoration: underline">주문내역조회</a></li>
                            <li><a href="${pageContext.request.contextPath}/userinfo">회원정보</a></li>
                            <li><a href="${pageContext.request.contextPath}/basket">관심상품</a></li>
                            <li><a href="${pageContext.request.contextPath}/usequestion">자주찾는질문</a></li>
                            <li><a href="${pageContext.request.contextPath}/question">문의하기</a></li>
                            <li><a href="${pageContext.request.contextPath}/coupon">쿠폰</a></li>
                            
                        </ul>
                    </nav>
                    <article id="art2">
                        <div id="artcontainer">
                            <div id="sec2-div1">
                                <ul>
                                    <li class="selected">주문내역조회(order.count??)</li>
                                    <li>취소/반품/교환 내역(0)</li>
                                </ul>
                            </div>
                            <div id="sec2-div2">
                                <form action="">
                                    <div id="sec2-div2-sel">
                                        <select name="orderstatus" id="orderstatus">
                                            <option value="">전체 주문처리상태</option>
                                            <option value="">입금전</option>
                                            <option value="">배송준비중</option>
                                            <option value="">배송중</option>
                                            <option value="">배송완료</option>
                                            <option value="">취소</option>
                                            <option value="">교환</option>
                                            <option value="">반품</option>

                                        </select>
                                    </div>
                                    <ul>
                                        <li>- 기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
                                        <li>- 주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
                                    </ul>
                                </form>

                            </div>
                            <div id="sec2-div3">
                                주문 상품 정보
                                <table id="sec2-div3-table1">
                                    <tr>
                                        <td><h3>주문일자</h3><h3>[주문번호]</h3></td>
                                        <td><h3>이미지</h3></td>
                                        <td><h3>상품정보</h3></td>
                                        <td><h3>수량</h3></td>
                                        <td><h3>상품구매금액</h3></td>
                                        <td><h3>주문처리상태</h3></td>
                                        <td><h3>정상구매/취소/교환/반품</h3></td>
                                    </tr>
                                    <tr>
                                     <td>vo.date<br>[vo.num]</td>
                                        <td>vo.img</td>
                                        <td>vo.name(상품이름)</td>
                                        <td>vo.count(상품갯수)</td>
                                        <td>vo.price</td>
                                        <td>vo.처리상태</td>
                                        <td>vo.상태</td>
                                    </tr>
                                </table>
                               
                            </div>
                        </div>
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