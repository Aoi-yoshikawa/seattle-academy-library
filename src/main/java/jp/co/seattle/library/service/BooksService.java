package jp.co.seattle.library.service;

import java.util.List;
import java.util.ResourceBundle;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import jp.co.seattle.library.dto.BookDetailsInfo;
import jp.co.seattle.library.dto.BookInfo;
import jp.co.seattle.library.rowMapper.BookDetailsInfoRowMapper;
import jp.co.seattle.library.rowMapper.BookInfoRowMapper;

/**
 * 書籍サービス
 * 
 * booksテーブルに関する処理を実装する
 */
@Service
public class BooksService {
	final static Logger logger = LoggerFactory.getLogger(BooksService.class);
	@Autowired
	private JdbcTemplate jdbcTemplate;

	/**
	 * 書籍リストを取得する
	 *
	 * @return 書籍リスト
	 */
	public List<BookInfo> getBookList() {

		// TODO 書籍名の昇順で書籍情報を取得するようにSQLを修正（タスク３）
		List<BookInfo> getedBookList = jdbcTemplate.query(
				"SELECT * FROM books ORDER BY title ASC;",
				new BookInfoRowMapper());

		return getedBookList;
	}

	//追加タスク検索機能
	public List<BookInfo> getsearchList(String title) {

		List<BookInfo> getedSearchList = jdbcTemplate.query(
				"SELECT * FROM books WHERE title like concat('%',?,'%') ORDER BY title;",
				new BookInfoRowMapper(), title);

		return getedSearchList;

	}

	//お気に入り書籍表示
	public List<BookInfo> getfavoriteList(String favorite) {

		List<BookInfo> getedFavoriteList = jdbcTemplate.query(
				"SELECT * FROM books WHERE favorite=?;",
				new BookInfoRowMapper(), favorite);

		return getedFavoriteList;

	}

	//読了書籍表示
	public List<BookInfo> getcompleteList(String complete) {

		List<BookInfo> getedCompleteList = jdbcTemplate.query(
				"SELECT * FROM books WHERE complete=?;",
				new BookInfoRowMapper(), complete);

		return getedCompleteList;

	}

	//ランダムでデータを取り出す(2冊)
	public List<BookInfo> getRandomList() {

		List<BookInfo> getedRandomList = jdbcTemplate.query(
				"SELECT * FROM books ORDER BY random() LIMIT 2;",
				new BookInfoRowMapper());

		return getedRandomList;
	}

	//ジャンル分け機能(書籍)
	public List<BookInfo> getGenreList(String genre) {

		List<BookInfo> getedGenreList = jdbcTemplate.query(
				"SELECT * FROM books WHERE genre = ?;",
				new BookInfoRowMapper(), genre);

		return getedGenreList;
	}

	//高評価書籍表示機能(★★★★★がDBに登録されている書籍のみを選択)
	public List<BookInfo> getReviewList(String review) {

		List<BookInfo> getedReviewList = jdbcTemplate.query(
				"SELECT * FROM books WHERE review = ?;",
				new BookInfoRowMapper(), review);

		return getedReviewList;
	}

	/**
	 * 書籍IDに紐づく書籍詳細情報を取得する
	 *
	 * @param bookId 書籍ID
	 * @return 書籍情報
	 */
	public BookDetailsInfo getBookInfo(int bookId) {
		String sql = "SELECT id, title, author, publisher, publish_date, isbn, description, thumbnail_url, thumbnail_name, favorite, complete, genre, review,word FROM books WHERE books.id = ? ORDER BY title ASC;";

		BookDetailsInfo bookDetailsInfo = jdbcTemplate.queryForObject(sql, new BookDetailsInfoRowMapper(), bookId);

		return bookDetailsInfo;
	}

	/**
	 * 書籍を登録する
	 *
	 * @param bookInfo 書籍情報
	 * @return bookId 書籍ID
	 */
	public int registBook(BookDetailsInfo bookInfo) {
		// TODO 取得した書籍情報を登録し、その書籍IDを返却するようにSQLを修正（タスク４）
		String sql = "insert into books (title, author, publisher, publish_date, thumbnail_name, thumbnail_url, isbn, description, reg_date, upd_date, favorite, complete, genre, review, word)"
				+ "values (?, ?, ?, ?, ?, ?, ?, ?, now(), now(), ?, ?, ?, ?, ?) returning id;";

		int bookId = jdbcTemplate.queryForObject(sql, int.class, bookInfo.getTitle(), bookInfo.getAuthor(),
				bookInfo.getPublisher(), bookInfo.getPublishDate(), bookInfo.getThumbnailName(),
				bookInfo.getThumbnailUrl(), bookInfo.getIsbn(), bookInfo.getDescription(), bookInfo.getFavorite(),
				bookInfo.getComplete(), bookInfo.getGenre(), bookInfo.getReview(), bookInfo.getWord());
		return bookId;
	}

	/**
	 * 書籍を削除する
	 * 
	 * @param bookId 書籍ID
	 */
	public void deleteBook(int bookId) {
		// TODO 対象の書籍を削除するようにSQLを修正（タスク6）
		String sql = "DELETE FROM books WHERE id = ?;";
		jdbcTemplate.update(sql, bookId);
	}

	//テキスト表示
	public List<BookInfo> getWordList(String word) {

		List<BookInfo> getedWordList = jdbcTemplate.query(
				"SELECT * FROM books WHERE review = ?;",
				new BookInfoRowMapper(), word);

		return getedWordList;
	}

	/**
	 * 書籍情報を更新する
	 * 
	 * @param bookInfo
	 */
	public void updateBook(BookDetailsInfo bookInfo) {
		String sql;
		if (bookInfo.getThumbnailUrl() == null) {
			// TODO 取得した書籍情報を更新するようにSQLを修正（タスク５）
			sql = "UPDATE books SET title = ?,author = ?,publisher = ?,publish_date = ?, isbn = ?,description = ?,upd_date = now(),favorite = ?, complete = ?, genre = ?, review = ?, word = ? WHERE id = ?;";
			jdbcTemplate.update(sql, bookInfo.getTitle(), bookInfo.getAuthor(), bookInfo.getPublisher(),
					bookInfo.getPublishDate(), bookInfo.getIsbn(), bookInfo.getDescription(), bookInfo.getFavorite(),
					bookInfo.getComplete(), bookInfo.getGenre(), bookInfo.getReview(), bookInfo.getWord(),
					bookInfo.getBookId());
		} else {
			// TODO 取得した書籍情報を更新するようにSQLを修正（タスク５）
			sql = "UPDATE books SET title = ?,author = ?,publisher = ?,publish_date = ?,thumbnail_name = ?,thumbnail_url = ?,isbn = ?,"
					+ "description = ?,upd_date = now(),favorite = ?,complete = ?,genre = ?,review = ?, word = ? WHERE id = ?;";
			jdbcTemplate.update(sql, bookInfo.getTitle(), bookInfo.getAuthor(), bookInfo.getPublisher(),
					bookInfo.getPublishDate(), bookInfo.getThumbnailName(), bookInfo.getThumbnailUrl(),
					bookInfo.getIsbn(), bookInfo.getDescription(), bookInfo.getFavorite(), bookInfo.getComplete(),
					bookInfo.getGenre(), bookInfo.getReview(), bookInfo.getWord(),
					bookInfo.getBookId());
		}
	}

	
	//以下API(ファイル出力機能)
	@Autowired
	private RestTemplate restTemplate;

	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}

	/**
	 * API呼び出し
	 * @param bookInfo 書籍情報
	 * @return メッセージ
	 */
	public String callAPI(BookDetailsInfo bookInfo) {

		//プロパティファイルからAPIのURLを取得
		ResourceBundle rb = ResourceBundle.getBundle("output");
		String url = rb.getString("url");
		try {
			//API呼び出し
			String responseMessage = restTemplate.postForObject(url, bookInfo, String.class);

			return responseMessage;
		} catch (Exception e) {
			// TODO 自動生成された catch　ブロック
			e.printStackTrace();
			return "API接続に失敗しました";
		}
	}

}
