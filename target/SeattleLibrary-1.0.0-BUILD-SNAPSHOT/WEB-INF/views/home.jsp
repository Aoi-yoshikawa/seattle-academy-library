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
<style>
.search-form-005 {
	display: flex;
	align-items: center;
	overflow: hidden;
	border-radius: 3px;
}

.search-form-005 input {
	width: 250px;
	height: 45px;
	padding: 5px 15px;
	border: none;
	border-radius: 3px 0 0 3px;
	box-sizing: border-box;
	background-color: #e6edf3;
	font-size: 1em;
	outline: none;
}

.search-form-005 input::placeholder {
	color: #767d83;
}

.search-form-005 button {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 50px;
	height: 45px;
	border: none;
	border-radius: 0 3px 3px 0;
	background-color: #2589d0;
	cursor: pointer;
}

.search-form-005 button::after {
	width: 20px;
	height: 20px;
	background-image:
		url('data:image/svg+xml;charset=utf8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2024%2024%22%3E%20%3Cpath%20d%3D%22M23.7%2020.8%2019%2016.1c-.2-.2-.5-.3-.8-.3h-.8c1.3-1.7%202-3.7%202-6C19.5%204.4%2015.1%200%209.7%200S0%204.4%200%209.7s4.4%209.7%209.7%209.7c2.3%200%204.3-.8%206-2v.8c0%20.3.1.6.3.8l4.7%204.7c.4.4%201.2.4%201.6%200l1.3-1.3c.5-.5.5-1.2.1-1.6zm-14-5.1c-3.3%200-6-2.7-6-6s2.7-6%206-6%206%202.7%206%206-2.6%206-6%206z%22%20fill%3D%22%23fff%22%3E%3C%2Fpath%3E%20%3C%2Fsvg%3E');
	background-repeat: no-repeat;
	content: '';
}

.search-form-006 {
	display: flex;
	align-items: center;
	overflow: hidden;
	border-radius: 3px;
}

.search-form-006 input {
	width: 250px;
	height: 45px;
	padding: 5px 15px;
	border: none;
	border-radius: 3px 0 0 3px;
	box-sizing: border-box;
	background-color: #e6edf3;
	font-size: 1em;
	outline: none;
}

.search-form-006 input::placeholder {
	color: #767d83;
}

.search-form-006 button {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 50px;
	height: 45px;
	border: none;
	border-radius: 0 3px 3px 0;
	background-color: #ff6251;
	cursor: pointer;
}

.search-form-006 button::after {
	width: 20px;
	height: 20px;
	background-image:
		url('data:image/svg+xml;charset=utf8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2024%2024%22%3E%20%3Cpath%20d%3D%22M23.7%2020.8%2019%2016.1c-.2-.2-.5-.3-.8-.3h-.8c1.3-1.7%202-3.7%202-6C19.5%204.4%2015.1%200%209.7%200S0%204.4%200%209.7s4.4%209.7%209.7%209.7c2.3%200%204.3-.8%206-2v.8c0%20.3.1.6.3.8l4.7%204.7c.4.4%201.2.4%201.6%200l1.3-1.3c.5-.5.5-1.2.1-1.6zm-14-5.1c-3.3%200-6-2.7-6-6s2.7-6%206-6%206%202.7%206%206-2.6%206-6%206z%22%20fill%3D%22%23fff%22%3E%3C%2Fpath%3E%20%3C%2Fsvg%3E');
	background-repeat: no-repeat;
	content: '';
}

.search-form-007 {
	display: flex;
	align-items: center;
	overflow: hidden;
	border-radius: 3px;
}

.search-form-007 input {
	width: 250px;
	height: 45px;
	padding: 5px 15px;
	border: none;
	border-radius: 3px 0 0 3px;
	box-sizing: border-box;
	background-color: #ebebeb;
	font-size: 1em;
	outline: none;
}

.search-form-007 input::placeholder {
	color: #767d83;
}

.search-form-007 button {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 50px;
	height: 45px;
	border: none;
	border-radius: 0 3px 3px 0;
	background-color: #fecb3e;
	cursor: pointer;
}

.search-form-007 button::after {
	width: 20px;
	height: 20px;
	background-image:
		url('data:image/svg+xml;charset=utf8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2024%2024%22%3E%20%3Cpath%20d%3D%22M23.7%2020.8%2019%2016.1c-.2-.2-.5-.3-.8-.3h-.8c1.3-1.7%202-3.7%202-6C19.5%204.4%2015.1%200%209.7%200S0%204.4%200%209.7s4.4%209.7%209.7%209.7c2.3%200%204.3-.8%206-2v.8c0%20.3.1.6.3.8l4.7%204.7c.4.4%201.2.4%201.6%200l1.3-1.3c.5-.5.5-1.2.1-1.6zm-14-5.1c-3.3%200-6-2.7-6-6s2.7-6%206-6%206%202.7%206%206-2.6%206-6%206z%22%20fill%3D%22%23fff%22%3E%3C%2Fpath%3E%20%3C%2Fsvg%3E');
	background-repeat: no-repeat;
	content: '';
}

.btn_favoritehBook {
	display: inline-block;
	justify-content: center;
	align-items: center;
	min-width: 100px;
	margin: 0 auto;
	padding: .9em 2em;
	border: 1px solid #f1443e;
	border-radius: 5px;
	background-color: #fff;
	color: #f1443e;
	font-size: 1em;
}

.btn_favoritehBook:hover {
	background-color: f1443e;
}

.btn_favoritehBook::before {
	width: 1em;
	height: 1em;
	margin-right: 10px;
	background:
		url('data:image/svg+xml;charset=utf8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20d%3D%22M12%2C23l-1.2-1.1c-2.1-1.9-3.9-3.6-5.2-5c-1.4-1.4-2.5-2.7-3.3-3.8s-1.4-2.1-1.7-3C0.2%2C9.2%2C0%2C8.3%2C0%2C7.3C0%2C5.5%2C0.6%2C4%2C1.8%2C2.8%20C3%2C1.6%2C4.5%2C1%2C6.3%2C1c1.1%2C0%2C2.2%2C0.3%2C3.2%2C0.8s1.8%2C1.3%2C2.5%2C2.3c0.8-1.1%2C1.7-1.9%2C2.7-2.4s2-0.8%2C3-0.8c1.8%2C0%2C3.3%2C0.6%2C4.5%2C1.8%20C23.4%2C4%2C24%2C5.5%2C24%2C7.3c0%2C0.9-0.2%2C1.8-0.5%2C2.7c-0.3%2C0.9-0.9%2C1.9-1.7%2C3c-0.8%2C1.1-1.9%2C2.4-3.3%2C3.8c-1.4%2C1.4-3.1%2C3.1-5.2%2C5L12%2C23z%20M12%2C20.6c2-1.9%2C3.7-3.5%2C5-4.8c1.3-1.3%2C2.3-2.5%2C3.1-3.5s1.3-1.9%2C1.6-2.7c0.3-0.8%2C0.5-1.6%2C0.5-2.3c0-1.3-0.4-2.4-1.3-3.3%20S19%2C2.8%2C17.7%2C2.8c-1%2C0-2%2C0.3-2.9%2C0.9c-0.9%2C0.6-1.6%2C1.5-2.1%2C2.7h-1.5c-0.5-1.1-1.2-2-2.1-2.6c-0.9-0.6-1.8-1-2.9-1%20C5%2C2.8%2C3.9%2C3.2%2C3.1%2C4.1S1.8%2C6%2C1.8%2C7.3c0%2C0.8%2C0.2%2C1.6%2C0.5%2C2.3s0.8%2C1.7%2C1.6%2C2.7s1.8%2C2.2%2C3.1%2C3.5S10%2C18.8%2C12%2C20.6z%22%20fill%3D%22%23f1443e%22%2F%3E%3C%2Fsvg%3E')
		no-repeat center;
	content: '';
}

.btn_completeBook {
	display: inline-block;
	justify-content: center;
	align-items: center;
	min-width: 100px;
	margin: 0 auto;
	padding: .9em 2em;
	border: 1px solid #669c35;
	border-radius: 5px;
	background-color: #fff;
	color: #669c35;
	font-size: 1em;
}

.btn_completeBook:hover {
	background-color: 669c35;
}

.btn_completeBook::before {
	width: 1em;
	height: 1em;
	margin-right: 10px;
	background:
		url('data:image/svg+xml;charset=utf8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2024%2024%22%3E%3Cpath%20d%3D%22M12%2C23l-1.2-1.1c-2.1-1.9-3.9-3.6-5.2-5c-1.4-1.4-2.5-2.7-3.3-3.8s-1.4-2.1-1.7-3C0.2%2C9.2%2C0%2C8.3%2C0%2C7.3C0%2C5.5%2C0.6%2C4%2C1.8%2C2.8%20C3%2C1.6%2C4.5%2C1%2C6.3%2C1c1.1%2C0%2C2.2%2C0.3%2C3.2%2C0.8s1.8%2C1.3%2C2.5%2C2.3c0.8-1.1%2C1.7-1.9%2C2.7-2.4s2-0.8%2C3-0.8c1.8%2C0%2C3.3%2C0.6%2C4.5%2C1.8%20C23.4%2C4%2C24%2C5.5%2C24%2C7.3c0%2C0.9-0.2%2C1.8-0.5%2C2.7c-0.3%2C0.9-0.9%2C1.9-1.7%2C3c-0.8%2C1.1-1.9%2C2.4-3.3%2C3.8c-1.4%2C1.4-3.1%2C3.1-5.2%2C5L12%2C23z%20M12%2C20.6c2-1.9%2C3.7-3.5%2C5-4.8c1.3-1.3%2C2.3-2.5%2C3.1-3.5s1.3-1.9%2C1.6-2.7c0.3-0.8%2C0.5-1.6%2C0.5-2.3c0-1.3-0.4-2.4-1.3-3.3%20S19%2C2.8%2C17.7%2C2.8c-1%2C0-2%2C0.3-2.9%2C0.9c-0.9%2C0.6-1.6%2C1.5-2.1%2C2.7h-1.5c-0.5-1.1-1.2-2-2.1-2.6c-0.9-0.6-1.8-1-2.9-1%20C5%2C2.8%2C3.9%2C3.2%2C3.1%2C4.1S1.8%2C6%2C1.8%2C7.3c0%2C0.8%2C0.2%2C1.6%2C0.5%2C2.3s0.8%2C1.7%2C1.6%2C2.7s1.8%2C2.2%2C3.1%2C3.5S10%2C18.8%2C12%2C20.6z%22%20fill%3D%22%23669c35%22%2F%3E%3C%2Fsvg%3E')
		no-repeat center;
	content: '';
}

.btn_randomBook {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 250px;
	margin: 0 auto;
	padding: .9em 2em;
	border: 1px solid #f4a4c0;
	border-radius: 25px;
	background-color: #fff;
	color: #f4a4c0;
	font-size: 1em;
}

.ribbon1 {
	display: inline-block;
	position: relative;
	height: 50px; /*リボンの高さ*/
	line-height: 50px; /*リボンの高さ*/
	text-align: center;
	padding: 0 30px; /*横の大きさ*/
	font-size: 18px; /*文字の大きさ*/
	background: #f57a78; /*塗りつぶし色*/
	color: #FFF; /*文字色*/
	box-sizing: border-box;
}

.ribbon1:before, .ribbon1:after {
	position: absolute;
	content: '';
	width: 0px;
	height: 0px;
	z-index: 1;
}

.ribbon1:before {
	top: 0;
	left: 0;
	border-width: 25px 0px 25px 15px;
	border-color: transparent transparent transparent #fff;
	border-style: solid;
}

.ribbon1:after {
	top: 0;
	right: 0;
	border-width: 25px 15px 25px 0px;
	border-color: transparent #fff transparent transparent;
	border-style: solid;
}

.selectbox-002 {
	position: relative;
}

.selectbox-002::before, .selectbox-002::after {
	position: absolute;
	content: '';
	pointer-events: none;
}

.selectbox-002::before {
	right: 0;
	display: inline-block;
	width: 2.8em;
	height: 2.8em;
	border-radius: 0 3px 3px 0;
	background-color: #2589d0;
	content: '';
}

.selectbox-002::after {
	position: absolute;
	top: 50%;
	right: 1.4em;
	transform: translate(50%, -50%) rotate(45deg);
	width: 6px;
	height: 6px;
	border-bottom: 3px solid #fff;
	border-right: 3px solid #fff;
	content: '';
}

.selectbox-002 select {
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	min-width: 230px;
	height: 2.8em;
	padding: .4em 3.6em .4em .8em;
	border: 2px solid #2589d0;
	border-radius: 3px;
	color: #333333;
	font-size: 1em;
	cursor: pointer;
}

.selectbox-002 select:focus {
	outline: 1px solid #2589d0;
}

.btn-gradient-radius {
	display: inline-block;
	padding: 7px 20px;
	border-radius: 25px;
	text-decoration: none;
	color: #FFF;
	background-color: #2589d0;
	transition: .4s;
}

.btn-gradient-radius:hover {
	background-color: #D9E5FF;
}

@charset "UTF-8";

.layer {
	background: rgba(0, 0, 0, .2);
	width: 100%;
	height: 100%;
	position: fixed;
	top: 0;
	left: 0;
	z-index: -1;
	opacity: 0;
	visibility: hidden;
	transition: opacity 1s linear, visibility 1s linear, z-index 1s linear;
}

.layer.is-open {
	z-index: 999;
	opacity: 1;
	visibility: visible;
}

.layer.is-open .modal {
	opacity: 1;
	visibility: visible;
}

.modal__button-wrap {
	position: absolute;
	right: 10px;
	top: -28px;
	display: inline-flex;
}

.close-button {
	position: relative;
	width: 39px;
	height: 39px;
	background: orange;
	border-radius: 50%;
	padding: 0;
	border: transparent;
	cursor: pointer;
}

.close-button span {
	width: 25px;
	height: 2px;
	background: #fff;
	display: inline-block;
	position: absolute;
	left: calc(50% - 12px);
	top: 50%;
	border-radius: 20px;
}

.close-button span:nth-child(1) {
	transform: rotate(45deg) translate(-1px, -1px);
}

.close-button span:nth-child(2) {
	transform: rotate(-45deg) translate(1px, -1px);
}

.modal {
	position: relative;
	margin-right: auto;
	margin-left: auto;
	width: 40%;
	min-width: 440px;
	opacity: 0;
	visibility: hidden;
	transition: visibility .7s linear, opacity .7s linear;
	text-align: center;
}

.modal__inner {
	margin-top: 125px;
	margin-bottom: 125px;
	position: relative;
	margin-left: auto;
	margin-right: auto;
	background: #fff;
	box-shadow: 3px 4px 4px rgba(0, 0, 0, 0.25);
	border-radius: 13px;
	display: block;
	padding: 21px 8px 21px;
	height: auto;
	text-align: center;
}

.modal__content {
	padding-top: 15px;
	padding-bottom: 23px;
}

.button {
	background: #FFF;
	border-radius: 10px;
	/* box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, .24); */
	border: 1px solid #FFF;
	font-size: 10px;
	line-height: 1.6;
	display: block;
	padding: 6px 10px;
	color: #707070;;
	text-align: center;
	cursor: pointer;
	margin: 0;
}

h4 {
	padding: 1rem 2rem;
	border-top: 3px solid #000;
	background: #FFF;
}

.footer-001 {
	display: flex;
	align-items: center;
	flex-direction: column;
	padding: 25px 10px 10px;
	background-color: #3a88fe;
}

.footer-001__logo {
	width: 130px;
	height: 30px;
}

.footer-001__list {
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 0 1.5em;
	list-style-type: none;
	margin: 0 0 .5em;
	padding: .5em;
}

.footer-001__link {
	color: #fff;
	font-weight: 200;
	text-decoration: none;
}

.footer-001__copyright {
	margin: 0;
	color: #ffffffb3;
	font-weight: 200;
	font-size: .8em;
}

.button_log {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 150px;
	margin: 0 auto;
	padding: .5em 5em;
	border: none;
	border-radius: 25px;
	background-color: #ff8c82;
	color: #fff;
	font-weight: 600;
	font-size: 1em;
}

.button_log:hover {
	background-color: #ef7c72;
}

.btn_wordbook {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 250px;
	margin: 0 auto;
	padding: .9em 2em;
	border: none;
	border-radius: 25px;
	background-color: #ffaa00;
	color: #fff;
	font-weight: 600;
	font-size: 1em;
}

.btn_wordbook:hover {
	background-color: #ef9a00;
}

/* チェックボックスは非表示に */
.drawer-hidden {
	display: none;
}

/* ハンバーガーアイコンの設置スペース */
.drawer-open {
	display: flex;
	height: 60px;
	width: 60px;
	justify-content: center;
	align-items: center;
	position: relative;
	z-index: 100; /* 重なり順を一番上に */
	cursor: pointer;
}

/* ハンバーガーメニューのアイコン */
.drawer-open span, .drawer-open span:before, .drawer-open span:after {
	content: '';
	display: block;
	height: 3px;
	width: 25px;
	border-radius: 3px;
	background: #333;
	transition: 0.5s;
	position: absolute;
}

/* 三本線のうち一番上の棒の位置調整 */
.drawer-open span:before {
	bottom: 8px;
}

/* 三本線のうち一番下の棒の位置調整 */
.drawer-open span:after {
	top: 8px;
}

/* アイコンがクリックされたら真ん中の線を透明にする */
#drawer-check:checked ~ .drawer-open span {
	background: rgba(255, 255, 255, 0);
}

/* アイコンがクリックされたらアイコンが×印になように上下の線を回転 */
#drawer-check:checked ~ .drawer-open span::before {
	bottom: 0;
	transform: rotate(45deg);
}

#drawer-check:checked ~ .drawer-open span::after {
	top: 0;
	transform: rotate(-45deg);
}

/* メニューのデザイン*/
.drawer-content {
	width: 100%;
	height: 50%;
	position: fixed;
	top: 0;
	left: 100%; /* メニューを画面の外に飛ばす */
	z-index: 99;
	background: #fff;
	transition: .5s;
}

/* アイコンがクリックされたらメニューを表示 */
#drawer-check:checked ~ .drawer-content {
	left: 0; /* メニューを画面に入れる */
}
}
</style>
</head>
<body class="wrapper">
    <header>
        <!-- <div class="left">
            <img class="mark" src="resources/img/logo.png" />
            <div class="logo">Seattle Library</div>
        </div> -->
        <h3 class="ribbon1">Welcome to Seattle Library!</h3>
        <div class="right">
            <ul>
                <li><a href="<%=request.getContextPath()%>/home" class="menu">Home</a></li>
                <%--  <li><a href="<%=request.getContextPath()%>/">ログアウト</a></li> --%>
                <!-- モーダル実装 -->
                <li>
                    <div class="layer js-modal">
                        <div class="modal">
                            <div class="modal__inner">
                                <div class="modal__button-wrap">
                                    <button class="close-button js-close-button">
                                        <span></span> <span></span>
                                    </button>
                                </div>
                                <div class="modal__contents">
                                    <div class="modal__content">
                                        <h4>
                                            <span>ログアウト確認</span>
                                        </h4>
                                        <br>本当にログアウトしますか?</br>
                                        <%-- <p><li><a href="<%=request.getContextPath()%>/">ログアウト</a></li></p> --%>
                                        <br>
                                        <button class="button_log" onclick="location.href='http://localhost:8080/SeattleLibrary/'">yes!!</button>
                                        </br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="button js-modal-button">ログアウト</button>
                </li>
                <!-- モーダル実装 -->
                <script>
                const modal = document.querySelector('.js-modal');
                const modalButton = document.querySelector('.js-modal-button');


                const modalClose = document.querySelector('.js-close-button');

                modalButton.addEventListener('click', () => {
                  modal.classList.add('is-open');

                });

                modalClose.addEventListener('click', () => {
                  modal.classList.remove('is-open');

                });
                </script>
            </ul>
        </div>
        <!-- ハンバーガーメニュー部分 -->
        <div class="drawer">
            <!-- ハンバーガーメニューの表示・非表示を切り替えるチェックボックス -->
            <input type="checkbox" id="drawer-check" class="drawer-hidden">
            <!-- ハンバーガーアイコン -->
            <label for="drawer-check" class="drawer-open"><span></span></label>
            <!-- メニュー -->
            <nav class="drawer-content">
                <ul class="drawer-list">
                    <li class="drawer-item"><a href="http://localhost:8080/SeattleLibrary/home">Home</a></li>
                    <!-- /.drawer-item -->
                    <li class="drawer-item"><a href="http://localhost:8080/SeattleLibrary/">Logout</a></li>
                    <!-- /.drawer-item -->
                    <li class="drawer-item"><a href="http://localhost:8080/SeattleLibrary/addBook">AddBook</a></li>
                    <!-- /.drawer-item -->
                    <li class="drawer-item"><a href="http://localhost:8080/SeattleLibrary/secretLogin">Secret</a></li>
                    <!-- /.drawer-item -->
                </ul>
                <!-- /.drawer-list -->
            </nav>
        </div>
    </header>
    <main>
        <h1>Home</h1>
        <form action="searchBook" method="post" class="search-form-005">
            <label> <input type="text" name="search" placeholder="タイトル検索">
            </label>
            <button type="submit" aria-label="検索"></button>
        </form>
        <p>
        <div style="display: inline-flex">
            <form action="https://www.youtube.com" method="get" class="search-form-005">
                <label> <input type="text" name="q" placeholder="YouTube検索">
                </label>
                <button type="submit" aria-label="検索"></button>
            </form>
            <form action="https://www.google.co.jp/?client=safari&channel=mac_bm" method="get" class="search-form-005">
                <label> <input type="text" name="q" placeholder="Google検索">
                </label>
                <button type="submit" aria-label="検索"></button>
            </form>
            <!-- セレクトボックス検索 -->
            <form action="genreBook" method="post">
                <label class="selectbox-002"> <select name="genre" class="selectbox-001">
                        <p>
                            <option value="">ジャンル検索</option>
                            <option value="書籍">書籍</option>
                            <option value="雑誌">雑誌</option>
                            <option value="絵本">絵本</option>
                            <option value="映像">映像</option>
                            <option value="アイドル">アイドル</option>
                            <option value="その他">その他</option>
                            </option>
                        </p>
                </select>
                </label>
                <button type="submit" value="絞り込む" class="btn-gradient-radius">🔍︎</button>
            </form>
            <!-- ここまでセレクトボックス検索 -->
        </div>
        </p>
        <p>
        <div style="display: inline-flex">
            <form action="favoriteBook" method="post" enctype="multipart/form-data" id="data_upload_form">
                <input type="hidden" name="favorite" value='♡'>
                <button type="submit" id="favorite-btn" class="btn_completeBook">♡お気に入り</button>
                </li>
            </form>
            <form action="completeBook" method="post" enctype="multipart/form-data" id="data_upload_form">
                <input type="hidden" name=complete value='⚪︎'>
                <button type="submit" id="complete-btn" class="btn_completeBook">⚪︎読了書籍</button>
                </li>
            </form>
            <form action="randomBook" method="post" enctype="multipart/form-data" id="data_upload_form">
                <input type="hidden" name="random">
                <button type="submit" id="random-btn" class="btn_randomBook">おすすめ書籍</button>
                </li>
            </form>
            <form action="reviewBook" method="post" enctype="multipart/form-data" id="data_upload_form">
                <input type="hidden" name="review" value="★★★★★">
                <button type="submit" id="random-btn" class="btn_randomBook">最高評価書籍</button>
                </li>
            </form>
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
                <footer class="footer-001">
                    <a href="#"> </a>
                    <nav>
                        <ul class="footer-001__list">
                            <li><a href="https://metateam.co.jp" class="footer-001__link">METATEAM</a></li>
                        </ul>
                    </nav>
                    <p class="footer-001__copyright">© 2019 Seattle Consulting Co., Ltd. All rights reserved.</p>
                </footer>
            </div>
    </main>
</body>
</html>
