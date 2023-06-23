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

* {
	box-sizing: border-box;
}

body {
	font-family: 'Avenir', 'Helvetica, Neue', 'Helvetica', 'Arial';
}

.modal-002__wrap input {
	display: none;
}

.modal-002__open-label, .modal-002__close-label {
	cursor: pointer;
}

.modal-002__open-label {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 120px;
	margin: 0 auto;
	margin-top: 20px;
	padding: .8em 2em;
	border: none;
	border-radius: 30px;
	background-color: #e94047;
	color: #ffffff;
	font-weight: 600;
	font-size: 1em;
	border-bottom: solid 2px rgba(0, 0, 0, .2);
}

.modal-002__open-label:hover {
	background-color: #FFC0CB;
	color: #fff;
	border-bottom: solid 2px rgba(0, 0, 0, .2);

	/* outline: 1px solid #2589d0; */
}

.modal-002 {
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 9999;
	display: none;
}

.modal-002__open-input:checked+label+input+.modal-002 {
	display: block;
	animation: modal-002-animation .6s;
}

.modal-002__content-wrap {
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

.modal-002__close-label {
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

.modal-002__content {
	max-height: 50vh;
	overflow-y: auto;
	padding: 40px 40px 40px;
}

.modal-002__background {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .45);
	z-index: 1;
}

@
keyframes modal-002-animation { 0% {
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
	.modal-002__open-label {
		max-width: 90%;
		padding: .94em 2.1em .94em 2.6em;
	}
	.modal-002__close-label {
		top: -17px;
		right: -4%;
	}
	.modal-002__content-wrap {
		width: 90vw;
	}
	.modal-002__content {
		padding: 33px 21px 35px;
		max-width: 100%;
	}
}

.btn_outputBook {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 120px;
	margin: 0 auto;
	margin-top: 20px;
	padding: .8em 2em;
	border: none;
	border-radius: 30px;
	background-color: #FFCC66;
	color: #ffffff;
	font-weight: 600;
	font-size: 1em;
	border-bottom: solid 2px rgba(0, 0, 0, .2);
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
        <form action="<%=request.getContextPath()%>/updateBook" method="post" enctype="multipart/form-data" id="data_upload_form">
            <h1>書籍の編集</h1>
            <div class="content_body add_book_content">
                <div>
                    <span>書籍の画像</span> <span class="care care1">任意</span>
                    <div class="book_thumnail">
                        <c:if test="${empty bookInfo.thumbnailUrl}">
                            <img class="book_noimg" src="resources/img/noImg.png">
                        </c:if>
                        <c:if test="${!empty bookInfo.thumbnailUrl}">
                            <img class="book_noimg" src="${bookInfo.thumbnailUrl}">
                        </c:if>
                    </div>
                    <input type="file" accept="image/*" name=thumbnail id="thumbnail">
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
                        <c:if test="${!empty successMessage}">
                            <div class="error">${successMessage}</div>
                        </c:if>
                        <c:if test="${!empty errorMessage}">
                            <div class="error">${errorMessage}</div>
                        </c:if>
                        <span>書籍名</span><span class="care care2">必須</span> <input type="text" name="title" value="${bookInfo.title}">
                    </div>
                    <div>
                        <span>著者名</span><span class="care care2">必須</span> <input type="text" name="author" value="${bookInfo.author}">
                    </div>
                    <div>
                        <span>出版社</span><span class="care care2">必須</span> <input type="text" name="publisher" value="${bookInfo.publisher}">
                    </div>
                    <div>
                        <span>出版日</span><span class="care care2">必須</span> <input type="text" name="publishDate" value="${bookInfo.publishDate}">
                    </div>
                    <div>
                        <span>ISBN</span><span class="care care1">任意</span> <input type="text" name="isbn" value="${bookInfo.isbn}">
                    </div>
                    <div>
                        <span>説明文</span><span class="care care1">任意</span> <input type="text" name="description" value="${bookInfo.description}">
                    </div>
                    <div>
                        <span>お気に入り登録</span><span class="care care1">任意</span> <input type="text" name="favorite" value="${bookInfo.favorite}">
                    </div>
                    <div>
                        <span>読了チェック入力</span><span class="care care1">任意</span> <input type="text" name="complete" value="${bookInfo.complete}">
                    </div>
                    <div>
                        <span>レビュー</span><span class="care care1">任意</span> <input type="text" name="word" value="${bookInfo.word}">
                    </div>
                    <!--  ここからジャンル分けセレクトボックス -->
                    <div>
                        <span>ジャンル分け選択</span><span class="care care1">任意</span>
                        <p>
                            <select name="genre" onchange="saveSelection(this)">
                                <option value="未登録">選択してください</option>
                                <option value="書籍">書籍</option>
                                <option value="雑誌">雑誌</option>
                                <option value="絵本">絵本</option>
                                <option value="映像">映像</option>
                                <option value="アイドル">アイドル</option>
                                <option value="その他">その他</option>
                            </select>
                        </p>
                    </div>
                    <script>
																					// ページが読み込まれたときに保存された選択状態を反映する
																					window
																							.addEventListener(
																									'DOMContentLoaded',//読み込み完了時点で発生するイベント
																									function() {
																										var savedSelection = localStorage
																												.getItem('selectedGenre');
																										if (savedSelection) {
																											document
																													.querySelector('select[name="genre"]').value = savedSelection;
																										}
																									});

																					// 選択が変更されたときに保存する
																					function saveSelection(
																							selectElement) {
																						var selectedGenre = selectElement.value;
																						localStorage
																								.setItem(
																										'selectedGenre',
																										selectedGenre);
																					}
																				</script>
                    <p>
                        <span>評価</span><span class="care care1">任意</span>
                    <div class="rate-form">
                        <input id="star5" type="radio" name="review" value="★★★★★"> <label for="star5">★</label> <input id="star4" type="radio" name="review" value="★★★★"> <label for="star4">★</label> <input id="star3" type="radio" name="review" value="★★★"> <label for="star3">★</label> <input id="star2" type="radio" name="review" value="★★"> <label for="star2">★</label> <input id="star1" type="radio" name="review" value="★"> <label for="star1">★</label> <input
                            id="star0" type="radio" name="review" value="評価はまだありません" checked="checked"> <label for="star0">0</label>
                    </div>
                    <script>
																					// ページが読み込まれたときに保存された評価を反映する
																					window
																							.addEventListener(
																									'DOMContentLoaded',
																									function() {
																										var savedReview = localStorage
																												.getItem('review');
																										if (savedReview) {
																											document
																													.querySelector('input[name="review"][value="'
																															+ savedReview
																															+ '"]').checked = true;
																										}
																									});

																					// 評価が変更されたときに保存する
																					document
																							.addEventListener(
																									'change',
																									function(
																											event) {
																										var reviewValue = event.target.value;
																										if (event.target
																												.matches('input[name="review"]')) {
																											localStorage
																													.setItem(
																															'review',
																															reviewValue);
																										}
																									});
																				</script>
                    </p>
                    <input type="hidden" id="bookId" name="bookId" value="${bookInfo.bookId}">
                </div>
            </div>
            <div class="bookBtn_box">
                <button type="submit" id="add-btn" class="btn_updateBook">更新</button>
        </form>
        <div class="modal-002__wrap">
            <input type="radio" id="modal-002__open" class="modal-002__open-input" name="modal-002__trigger" /> <label for="modal-002__open" class="modal-002__open-label">削除</label> <input type="radio" id="modal-002__close" name="modal-002__trigger" />
            <div class="modal-002">
                <div class="modal-002__content-wrap">
                    <label for="modal-002__close" class="modal-002__close-label">×</label>
                    <div class="modal-002__content">
                        <br>本当に削除しますか？</br>
                        <p>(削除した書籍のデータは戻りません。)</p>
                        <form method="post" action="deleteBook" name="delete">
                            <input type="hidden" id="bookId" name="bookId" value="${bookInfo.bookId}">
                            <button type="submit" id="delete-btn" class="btn_deleteBook">はい</button>
                        </form>
                    </div>
                </div>
                <label for="modal-002__close">
                    <div class="modal-002__background"></div>
                </label>
            </div>
            <form method="post" action="outputBook" name="output">
                <button type="submit" value="${bookInfo.bookId}" name="bookId" class="btn_outputBook">出力</button>
            </form>
        </div>
        </div>
    </main>
</body>
</html>