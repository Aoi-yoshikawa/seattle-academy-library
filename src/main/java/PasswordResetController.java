

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.seattle.library.dto.UserInfo;
import jp.co.seattle.library.service.UsersService;

/**
 * アカウント作成コントローラー
 */
@Controller // APIの入り口
public class PasswordResetController {
	final static Logger logger = LoggerFactory.getLogger(PasswordResetController.class);

	@Autowired
	private UsersService usersService;

	@RequestMapping(value = "/newAccount", method = RequestMethod.GET) // value＝actionで指定したパラメータ
	public String createAccount(Model model) {
		return "ResetAccount";
	}

	/**
	 * 新規アカウント作成
	 *
	 * @param email            メールアドレス
	 * @param password 　　     パスワード
	 * @param passwordForCheck 確認用パスワード
	 * @param model
	 * @return ホーム画面に遷移
	 */

	
	//修了式テスト実装
	@Transactional
	@RequestMapping(value = "/ResetAccount", method = RequestMethod.POST)
	public String ResetAccount(Locale locale, @RequestParam("email") String email,
			@RequestParam("password") String password, @RequestParam("passwordForCheck") String passwordForCheck,
			Model model) {
		// デバッグ用ログ
		logger.info("Welcome ResetAccount! The client locale is {}.", locale);

		// バリデーションチェック、パスワード一致チェック（タスク１）
		if (password.length() >= 8 && password.matches("^[0-9a-zA-Z]+")) {
			if (password.equals(passwordForCheck)) {
				//パラメータで受け取ったアカウント情報をDtoに格納する。
				UserInfo userInfo = new UserInfo();
				userInfo.setEmail(email);
				userInfo.setPassword(password);
				usersService.registUser(userInfo);
				return "redirect:/login";

			} else {
				model.addAttribute("errorMessage", "パスワードと確認用パスワードが一致していません。");
				return "ResetAccount";
			}
		} else {
			model.addAttribute("errorMessage", "パスワードは８桁以上の半角英数字で設定してください。");
			return "ResetAccount";
		}
	}

}
