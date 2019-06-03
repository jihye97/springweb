<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>게시판</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>편지 쓰기</h2>
	<form action="./letter/add" method="post">
		<p>제목 :<input type="text" value=" " maxlength="100" style="width: 100%;"/> </p>
		<p>
			받는 사람 :<input type="text" name="receiverId" value="${param.receiverId}" 
				required>
			<input type="text" name="receiverName" value="${param.receiverName}"/>	
		</p>
		<p>내용 :</p>
		<p>
			<textarea name="content" style="width: 100%; height: 200px;" required></textarea>
		</p>
		<p>
		<a href="./app/members?receiverId=${letter.letterId }&receiverName=${letter.name }">보내기</a>
		</p>
		</form>
</body>
</html>