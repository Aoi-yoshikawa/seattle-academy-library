<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf8"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>ホーム｜シアトルライブラリ｜シアトルコンサルティング株式会社</title>
<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP" rel="stylesheet">
<link href="<c:url value="/resources/css/default.css" />" rel="stylesheet" type="text/css">
<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
<link href="<c:url value="/resources/css/home.css" />" rel="stylesheet" type="text/css">
</head>
<body class="wrapper">
    <header>
        <div class="left">
            <img class="mark" src="resources/img/logo.png" />
            <div class="logo">Seattle Library</div>
        </div>
        <div class="right">
            <ul>
                <li><a href="<%=request.getContextPath()%>/secretBook" class="menu">Home</a></li>
                <li><a href="<%=request.getContextPath()%>/secretLogin">ログアウト</a></li>
            </ul>
        </div>
    </header>
    <main>
        <h1>Home</h1>
        </div>
        </p>
        <ul>
            <a href="<%=request.getContextPath()%>/addBook" class="btn_add_book">書籍の追加</a>
            <a href="<%=request.getContextPath()%>/secretLogin" class="btn_add_book">秘密文庫</a>
            <div class="content_body">
                <c:if test="${!empty resultMessage}">
                    <div class="error_msg">${resultMessage}</div>
                </c:if>
                <div>
                    <div class="booklist">
                        <c:forEach var="bookInfo" items="${BookList}">
                            <div class="books">
                                <li class="book_favorite">${bookInfo.favorite}</li>
                                <li class="book_complete">${bookInfo.complete}</li>
                                <form method="get" class="book_thumnail" action="editBook">
                                    <a href="javascript:void(0)" onclick="this.parentNode.submit();"> <c:if test="${empty bookInfo.thumbnail}">
                                            <img class="book_noimg" src="resources/img/noImg.png">
                                        </c:if> <c:if test="${!empty bookInfo.thumbnail}">
                                            <img class="book_noimg" src="${bookInfo.thumbnail}">
                                        </c:if>
                                    </a> <input type="hidden" name="bookId" value="${bookInfo.bookId}">
                                </form>
                                <ul>
                                    <li class="book_title">${bookInfo.title}</li>
                                    <li class="book_author">${bookInfo.author}(著)</li>
                                    <li class="book_publisher">出版社：${bookInfo.publisher}</li>
                                    <li class="book_publish_date">出版日：${bookInfo.publishDate}</li>
                                    <li class="book_publish_date">ジャンル：${bookInfo.genre}</li>
                                    <li class="book_publish_date">評価：${bookInfo.review}</li>
                                    <li class="book_publish_date">レビュー：${bookInfo.word}</li>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
    </main>
</body>
</html>
