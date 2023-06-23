<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>書籍の追加｜シアトルライブラリ｜シアトルコンサルティング株式会社</title>
<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP" rel="stylesheet">
<link href="<c:url value="/resources/css/default.css" />" rel="stylesheet" type="text/css">
<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
<link href="<c:url value="/resources/css/home.css" />" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="resources/js/thumbnail.js"></script>
<style>
.rate-form {
	display: flex;
	flex-direction: row-reverse;
	justify-content: flex-end;
}

.rate-form input[type=radio] {
	display: none;
}

.rate-form label {
	position: relative;
	padding: 0 5px;
	color: #ccc;
	cursor: pointer;
	font-size: 35px;
}

.rate-form label:hover {
	color: #ffcc00;
}

.rate-form label:hover ~ label {
	color: #ffcc00;
}

.rate-form input[type=radio]:checked ~ label {
	color: #ffcc00;
}

.modal-003__wrap input {
	display: none;
}

.modal-003__open-label, .modal-003__close-label {
	cursor: pointer;
}

.modal-003__open-label {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 5px;
	margin: auto;
	padding: .5em 1em;
	border: none;
	border-radius: 500px;
	background-color: #2589d0;
	color: #ffffff;
	font-weight: 500;
	font-size: 1em;
}

.modal-003__open-label:hover {
	background-color: #fff;
	color: #2589d0;
	outline: 1px solid #2589d0;
}

.modal-003 {
	text-align: left;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 9999;
	display: none;
}

.modal-003__open-input:checked+label+input+.modal-003 {
	display: block;
	animation: modal-002-animation .6s;
}

.modal-003__content-wrap {
	text-align: left;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: 80%;
	max-width: 650px;
	background-color: #fefefe;
	z-index: 2;
	border-radius: 5px;
}

.modal-003__close-label {
	background-color: #777;
	color: #fff;
	border: 2px solid #fff;
	border-radius: 20px;
	width: 36px;
	height: 36px;
	line-height: 1.6;
	text-align: center;
	display: table-cell;
	position: fixed;
	top: -15px;
	right: -2%;
	z-index: 99999;
	font-size: 1.3em;
}

.modal-003__content {
	max-height: 50vh;
	overflow-y: auto;
	padding: 40px 50px 40px;
}

.modal-003__background {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .45);
	z-index: 1;
}

@
keyframes modal-003-animation { 0% {
	opacity: 0;
}

100
















%
{
opacity
















:
















1














;
}
}
@media only screen and (max-width: 520px) {
	.modal-003__open-label {
		max-width: 90%;
		padding: .94em 2.1em .94em 2.6em;
	}
	.modal-003__close-label {
		top: -17px;
		right: -4%;
	}
	.modal-003__content-wrap {
		width: 90vw;
	}
	.modal-003__content {
		padding: 33px 21px 35px;
		max-width: 100%;
	}
}
</style>
</head>
<body class="wrapper">
    <header>
        <div class="left">
            <img class="mark" src="resources/img/logo.png" />
            <div class="logo">Seattle Library</div>
        </div>
        <div class="right">
            <ul>
                <li><a href="<%=request.getContextPath()%>/home" class="menu">Home</a></li>
                <li><a href="<%=request.getContextPath()%>/">ログアウト</a></li>
            </ul>
        </div>
    </header>
    <main>
        <form action="<%=request.getContextPath()%>/insertBook" method="post" enctype="multipart/form-data" id="data_upload_form">
            <h1>書籍の追加</h1>
            <div class="content_body add_book_content">
                <!-- ここからモーダル -->
                <div class="modal-003__wrap">
                    <input type="radio" id="modal-003__open" class="modal-003__open-input" name="modal-003__trigger" /> <label for="modal-003__open" class="modal-003__open-label">?</label> <input type="radio" id="modal-003__close" name="modal-003__trigger" />
                    <div class="modal-003">
                        <div class="modal-003__content-wrap">
                            <label for="modal-003__close" class="modal-003__close-label">×</label>
                            <div class="modal-003__content">
                                <h5 style="border-bottom: 3px solid #2589d0; background-color: #ffffff; color: #333333;">
                                    <span>追加の流れ</span>
                                </h5>
                                書籍名、著者名、出版社、出版日は必須項目です。<br />入力が完了したら、追加ボタンを押してください。<br />これで書籍追加は完了です！
                            </div>
                        </div>
                        <label for="modal-003__close">
                            <div class="modal-003__background"></div>
                        </label>
                    </div>
                </div>
                <!-- ここまでモーダル -->
                <div>
                    <span>書籍の画像</span> <span class="care care1">任意</span>
                    <div class="book_thumnail">
                        <img class="book_noimg" src="resources/img/noImg.png">
                    </div>
                    <input type="file" accept="image/*" name="thumbnail" id="thumbnail">
                </div>
                <div class="content_right">
                    <div>
                        <c:if test="${!empty errorList}">
                            <div class="error">
                                <c:forEach var="error" items="${errorList}">
                                    <p>${error}</p>
                                </c:forEach>
                            </div>
                        </c:if>
                        <span>書籍名</span><span class="care care2">必須</span>
                        <c:if test="${!empty bookInfo}">
                            <input type="text" name="title" value="${bookInfo.title}">
                        </c:if>
                        <c:if test="${empty bookInfo}">
                            <input type="text" name="title" autocomplete="off">
                        </c:if>
                    </div>
                    <div>
                        <span>著者名</span><span class="care care2">必須</span>
                        <c:if test="${!empty bookInfo}">
                            <input type="text" name="author" value="${bookInfo.author}">
                        </c:if>
                        <c:if test="${empty bookInfo}">
                            <input type="text" name="author" autocomplete="off">
                        </c:if>
                    </div>
                    <div>
                        <span>出版社</span><span class="care care2">必須</span>
                        <c:if test="${!empty bookInfo}">
                            <input type="text" name="publisher" value="${bookInfo.publisher}">
                        </c:if>
                        <c:if test="${empty bookInfo}">
                            <input type="text" name="publisher">
                        </c:if>
                    </div>
                    <div>
                        <span>出版日</span><span class="care care2">必須</span>
                        <c:if test="${!empty bookInfo}">
                            <input type="text" name="publishDate" value="${bookInfo.publishDate}">
                        </c:if>
                        <c:if test="${empty bookInfo}">
                            <input type="text" name="publishDate">
                        </c:if>
                    </div>
                    <div>
                        <span>ISBN</span><span class="care care1">任意</span>
                        <c:if test="${!empty bookInfo}">
                            <input type="text" name="isbn" value="${bookInfo.isbn}">
                        </c:if>
                        <c:if test="${empty bookInfo}">
                            <input type="text" name="isbn">
                        </c:if>
                    </div>
                    <div>
                        <span>説明文</span><span class="care care1">任意</span>
                        <c:if test="${!empty bookInfo}">
                            <input type="text" name="description" value="${bookInfo.description}">
                        </c:if>
                        <c:if test="${empty bookInfo}">
                            <input type="text" name="description">
                        </c:if>
                    </div>
                    <div>
                        <span>お気に入り</span><span class="care care1">任意</span>
                        <c:if test="${!empty bookInfo}">
                            <input type="text" name="favorite" value="${bookInfo.favorite}">
                        </c:if>
                        <c:if test="${empty bookInfo}">
                            <input type="text" name="favorite">
                        </c:if>
                    </div>
                    <div>
                        <span>読了チェック入力</span><span class="care care1">任意</span>
                        <c:if test="${!empty bookInfo}">
                            <input type="text" name="complete" value="${bookInfo.complete}">
                        </c:if>
                        <c:if test="${empty bookInfo}">
                            <input type="text" name="complete">
                        </c:if>
                    </div>
                    <div>
                        <span>レビュー</span><span class="care care1">任意</span>
                        <c:if test="${!empty bookInfo}">
                            <input type="text" name="word" value="${bookInfo.word}">
                        </c:if>
                        <c:if test="${empty bookInfo}">
                            <input type="text" name="word">
                        </c:if>
                    </div>
                    <div>
                        <span>ジャンル分け選択</span><span class="care care1">任意</span><select name="genre">
                            <p>
                                <option value="">選択してください</option>
                                <option value="書籍">書籍</option>
                                <option value="雑誌">雑誌</option>
                                <option value="絵本">絵本</option>
                                <option value="映像">映像</option>
                                <option value="アイドル">アイドル</option>
                                <option value="その他">その他</option>
                                </option>
                            </p>
                    </div>
                    </select>
                    <p>
                        <span>評価</span><span class="care care1">任意</span>
                    <div class="rate-form">
                        <input id="star5" type="radio" name="review" value="★★★★★"> <label for="star5">★</label> <input id="star4" type="radio" name="review" value="★★★★"> <label for="star4">★</label> <input id="star3" type="radio" name="review" value="★★★"> <label for="star3">★</label> <input id="star2" type="radio" name="review" value="★★"> <label for="star2">★</label> <input id="star1" type="radio" name="review" value="★"> <label for="star1">★</label> <input
                            id="star0" type="radio" name="review" value="評価はまだありません" checked="checked"> <label for="star0">0</label>
                    </div>
                    </p>
                </div>
                <input type="hidden" id="bookId" name="bookId" value="${bookInfo.bookId}">
            </div>
            </div>
            <div class="bookBtn_box">
                <button type="submit" id="add-btn" class="btn_addBook">登録</button>
            </div>
        </form>
    </main>
</body>
</html>