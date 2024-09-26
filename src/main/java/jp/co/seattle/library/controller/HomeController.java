package jp.co.seattle.library.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.seattle.library.dto.BookInfo;
import jp.co.seattle.library.service.BooksService;

/**
 * Handles requests for the application home page.
 */
@Controller // APIの入り口
public class HomeController {
	final static Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private BooksService booksService;

	/**
	 * Homeボタンからホーム画面に戻るページ
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String transitionHome(Model model) {
		//書籍の一覧情報を取得（タスク３）
		List<BookInfo> bookList = booksService.getBookList();

		if (!ObjectUtils.isEmpty(bookList)) {
			model.addAttribute("BookList", bookList);
			return "home";
		} else {
			model.addAttribute("resultMessage", "書籍データが0件です。");
			return "home";
		}
	}

	//検索窓実装
	@RequestMapping(value = "/searchBook", method = RequestMethod.POST)
	public String searchBook(Locale locale, @RequestParam("search") String title, Model model) {
		logger.info("Welcome searchbooks! The client locale is {}.", locale);

		List<BookInfo> searchBook = booksService.getsearchList(title);

		if (!ObjectUtils.isEmpty(searchBook)) {
			model.addAttribute("BookList", searchBook);
			return "home";
		} else {
			model.addAttribute("resultMessage", "一致する書籍はありません。");
			return "home";
		}
	}

	//お気に入り書籍表示
	@RequestMapping(value = "/favoriteBook", method = RequestMethod.POST)
	public String favoriteBook(Locale locale, @RequestParam("favorite") String favorite, Model model) {
		logger.info("Welcome favoritebooks! The client locale is {}.", locale);

		List<BookInfo> favoriteBooks = booksService.getfavoriteList(favorite);

		if (!ObjectUtils.isEmpty(favoriteBooks)) {
			model.addAttribute("BookList", favoriteBooks);
			return "home";
		} else {
			model.addAttribute("resultMessage", "お気に入り書籍は登録されていません。");
			return "home";
		}
	}

	//読了書籍表示
	@RequestMapping(value = "/completeBook", method = RequestMethod.POST)
	public String completeBook(Locale locale, @RequestParam("complete") String complete, Model model) {
		logger.info("Welcome completebooks! The client locale is {}.", locale);

		List<BookInfo> completeBooks = booksService.getcompleteList(complete);

		if (!ObjectUtils.isEmpty(completeBooks)) {
			model.addAttribute("BookList", completeBooks);
			return "home";
		} else {
			model.addAttribute("resultMessage", "読み終えた書籍はありません。");
			return "home";
		}

	}

	//ランダム表示
	@RequestMapping(value = "/randomBook", method = RequestMethod.POST)
	public String randomBook(Locale locale, @RequestParam("random") String title, Model model) {
		logger.info("Welcome randombooks! The client locale is {}.", locale);

		List<BookInfo> randomBooks = booksService.getRandomList();
		model.addAttribute("BookList", randomBooks);
		return "home";

	}

	//ジャンル表示
	@RequestMapping(value = "/genreBook", method = RequestMethod.POST)
	public String genreBook(Locale locale, @RequestParam("genre") String genre, Model model) {
		logger.info("Welcome genrebooks! The client locale is {}.", locale);

		List<BookInfo> genreBooks = booksService.getGenreList(genre);

		if (!ObjectUtils.isEmpty(genreBooks)) {
			model.addAttribute("BookList", genreBooks);
			return "home";
		} else {
			model.addAttribute("resultMessage", "お探しのジャンル書籍は登録されていません。");
			return "home";
		}

	}

	//高評価書籍表示
	@RequestMapping(value = "/reviewBook", method = RequestMethod.POST)
	public String reviewBook(Locale locale, @RequestParam("review") String review, Model model) {
		logger.info("Welcome reviewBooks! The client locale is {}.", locale);

		List<BookInfo> reviewBooks = booksService.getReviewList(review);

		model.addAttribute("BookList", reviewBooks);
		return "home";

	}

	//コメント表示
	@RequestMapping(value = "/wordBook", method = RequestMethod.POST)
	public String wordBook(Locale locale, @RequestParam("word") String word, Model model) {
		logger.info("Welcome wordbooks! The client locale is {}.", locale);

		List<BookInfo> wordBook = booksService.getWordList(word);

		model.addAttribute("BookList", wordBook);
		return "home";
	}

}
