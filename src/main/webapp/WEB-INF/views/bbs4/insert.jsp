<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/bbs4/newcontent">
	<label for="category">카테고리 :</label> <select name="category" id="category">
            <option value="공지">공지</option>
            <option value="고민">고민</option>
            <option value="공유">공유</option>
            <option value="알림">알림</option>
            <option value="잡담">잡담</option>
            <option value="비밀">비밀</option>
         </select>
         <input type="text" name="title" />
         <input type="text" name="content"/>
         <button>글쓸기</button>
		</form>
	
</body>
</html>