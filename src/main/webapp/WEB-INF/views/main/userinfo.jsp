<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/header.css?11">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
    
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
             margin-bottom:300px;
            width:60vw;
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
            height:1000px;
        }

           #sec2 nav ul{
            position: relative;
            top: 25%;
            
        }
        #sec2 nav li {
            margin: 0 0 20px 0;
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
        
        
      .art2container {
                width: 60vw;
                display: flex;
                flex-direction: column;
                
            }

    
            .totalinfo {
                width: 85%;
                border: 2px solid gray;
                height: 115px;
               
                color: black;
               border-radius: 5px;
               margin-bottom: 50px;
            }
            .totalinfo h4{
                margin-top: 37px;
                margin-left: 13px;
                
            }
    

    
			.inputlist, .email ,.phone  {
 			width : 40%;
 			height : 30px;
 			border-radius : 5px;
 			border : none;
 			padding-left: 13px;
 			margin-bottom:20px;
            margin-right: 8px;
 			}
            label{
                width: 200px;
                display: inline-block;
            }
            .h1{
               margin-left: 15px;
               margin-bottom: 20px;
                
            }
           .h2{
	width:100%;
	text-align:left;
	margin-bottom:50px;
	margin-top:30px;
	font-size:30px;
}
            .h3{
                display: inline-block;
            }
            .btn1{
                margin-top: 40px;
                margin-left: 30%;
                width: 15%;
                height: 30px;
               
                background-color: black;
                color: white;
               
                font-weight: 600;
                font-size: 17px;
            }
            .btn1:hover,.btn2:hover{
                background-color: gray;
                border: 1px solid gray;
                
                display: inline;
            }
            .btn2{
                
              margin-left: 150px;
                width: 30%;
                height: 30px;
                border-radius: 10px;
                background-color: white;
                color: black;
               
                font-weight: 600;
                font-size: 17px;
            }
            span{
                opacity: 0.5;
            }

            .info-container{
                width: 85%;
                padding: 18px 0 0 15px;

                border-top: 1px;
                border-bottom: 1px;
                border-left: 0px;
                border-right: 0px;
                border-color: #ccc;
                border-style: solid;
            }
            .email{
            width:20%;
            }
            .phone{
            width:20%;
            }
            #mem_address2, #mem_detailaddress{
            margin-left: 4px;
            }
            #phone1{
            width: 65px;
            padding-top : 5px;
            padding-bottom : 5px;
            text-align : center;
            margin-right:10px;
            }
            .phone{
            margin-left:10px;
            text-align:center;
           width:80px;
           text-align:center;
           padding-right:10px;
            }
            #iemail,#iphone{
            display:none;
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
                         <ul class="fixed">
                        
                             <li><a href="${pageContext.request.contextPath}/mypage" >??????????????????</a></li>
                             <li><a href="${pageContext.request.contextPath}/myhotelres">??????????????????</a></li>
                            <li><a style="text-decoration: underline" href="${pageContext.request.contextPath}/userinfo">????????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/wish">????????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/usequestion/??????????????????">??????????????????</a></li>
                            <li><a href="${pageContext.request.contextPath}/question">????????????</a></li>
              
                        </ul>
                    </nav>
                    <article id="art2">
                   <div class="art2container">
                   <h2 style="text-decoration: underline" class="h2">??????????????????</h2>
                       <div class="totalinfo">
                        <h4>?????? ???????????? ?????????????????? ???????????????. ${list.memName}?????? ???????????????.<br>?????? ?????? ???????????? <span style="color:blue">${list.point}p</span> ?????????.</h4>
                        
                        </div>
                        <h1 class="h1">????????????</h1>
                        <div class="detailinfo">
                       
                       <form:form action="${pageContext.request.contextPath}/userupdate" id="form-patch" modelAttribute="separateVO" >
                       
                        <div class="info-container">

 						<label for="memId"><h3 class="h3">?????????</h3></label>
 						<input type="text" class="inputlist" name="memId" id="memId" value="${list.memId}" readonly>
                       
                    </div>

                    <div class="info-container">
                        <label for="password"><h3 class="h3">???????????? ??????</h3></label>
                        <input type="password"  class="inputlist" name="password" id="password" placeholder="????????? ????????????"  pattern=".{4,16}" required>
                        <span>(?????? ????????????/??????/???????????? 8~25???)</span><br>
                        </div>
                        
                        <div class="info-container">
                        <label for="memPw"><h3 class="h3">???????????? ??????</h3></label>
                        <input type="password"  class="inputlist" name="memPw" id="memPw" placeholder="???????????? ??????"  pattern=".{4,16}" required><br>
                        
                        </div>          
                              
                        <div class="info-container">
                        <label for="memName"><h3 class="h3">??????</h3></label>
                        <input type="text"  class="inputlist" name="memName" id="memName" value="${list.memName}"><br>
                        </div>                   
          
                        <div class="info-container">
                                <label for="memAddress1"><h3 class="h3">??????</h3></label> <input type="text"  class="inputlist" placeholder="????????????" id="mem_address1" name="memOaddress" value="${list.memOaddress}">
                                <button onclick="execPostCode();">?????? ??????</button><br>
                                <label for="memAddress2"></label><input type="text" class="inputlist"  name="memAddress" id="mem_address2" placeholder="????????????" value="${list.memAddress}"><span>????????????</span><br>
                                <label for="memDetailaddress"></label><input type="text" class="inputlist"  name="memDetailaddress" id="mem_detailaddress" placeholder="????????????" value="${list.memDetailaddress}"><span>????????????</span>
                         </div>                         
                        

                        <div class="info-container">
                            <label for="memPhone" class="lb">?????? ??????</label> 
							<form:select path="phone1" id="phone1" name="memPhone">
								<form:option value="010">010</form:option>
								<form:option value="011">011</form:option>
								<form:option value="017">017</form:option>
								<form:option value="019">019</form:option>
							</form:select> - 
							<form:input path="phone2" class="phone" id="phone2" value="${separateVO.phone2}"/> - 
							<form:input path="phone3" class="phone" id="phone3" value="${separateVO.phone3}"/>
                       </div>
                  			<input type="text"  class="inputlist"  id="iphone" value="" name="memPhone"/>
                  			<input type="text" value=""  class="inputlist"  id="iemail" name="memEmail"/>
                       <div class="info-container">
                        <label for="mem_email" class="lb">????????? *</label> 
                        <input type="text" value="${separateVO.email1}" class="inputlist"  id="memEmail" name="mem_email" class="email">@
                        <input type="text" value="${separateVO.email2}" class="email" name="mem_email">
                        </div>
                         <button class="btn1" id="sub1">??????????????????</button>
                      
                    </form:form>
                    
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
    
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
					<script>
					//???????????? ?????? ?????? ?????? ?????????
					function execPostCode() {
				     new daum.Postcode({
				         oncomplete: function(data) {
				            // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.
				            // ????????? ????????? ?????? ????????? ?????? ????????? ????????????.
				            // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
				            var fullRoadAddr = data.roadAddress; // ????????? ?????? ??????
				            var extraRoadAddr = ''; // ????????? ????????? ?????? ??????
				            // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
				            // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
				            if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
				                extraRoadAddr += data.bname;
				            }
				            // ???????????? ??????, ??????????????? ?????? ????????????.
				            if(data.buildingName !== '' && data.apartment === 'Y'){
				               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				            }
				            // ?????????, ?????? ????????? ????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
				            if(extraRoadAddr !== ''){
				                extraRoadAddr = ' (' + extraRoadAddr + ')';
				            }
				            // ?????????, ?????? ????????? ????????? ?????? ?????? ????????? ????????? ????????????.
				            if(fullRoadAddr !== ''){
				                fullRoadAddr += extraRoadAddr;
				            }
				            // ??????????????? ?????? ????????? ?????? ????????? ?????????.
				            console.log(data.zonecode);
				            console.log(fullRoadAddr);
				         /*      var a = console.log(data.zonecode);
				            var b = console.log(fullRoadAddr);
				            
				            if(a == null || b = null){
				               alert("????????? ???????????????.");
				               return false;
				            }   */
				            
				            
				            $("[name=memOaddress]").val(data.zonecode);
				            $("[name=memAddress]").val(fullRoadAddr);
				            
				            document.getElementById('mem_oaddress').value = data.zonecode; //5?????? ??????????????? ??????
				            document.getElementById('mem_address').value = fullRoadAddr;
				            
				            //document.getElementById('mem_detailaddress').value = data.jibunAddress; 
				        }
				     }).open();
				 }
		
			
				 document.getElementById("sub1").addEventListener("click",function(){
				
				let phone1 = document.getElementById("phone1").value;
				let phone2 = document.getElementById("phone2").value;
				let phone3 = document.getElementById("phone3").value;
				let email1 = document.getElementsByClassName("email")[0].value;
				let email2 = document.getElementsByClassName("email")[1].value;
				
				document.getElementById("iemail").value = email1 + '@' + email2;
				document.getElementById("iphone").value = phone1 + phone2 + phone3;
				
				
			}); 
			
		</script>
</body>

</html>