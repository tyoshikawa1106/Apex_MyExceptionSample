/*
 * 独自の例外クラスサンプル・コントローラークラス
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdDate      : 2013/01/01
 * @createdName      : TAIKI,YOSHIKAWA
 * ----------------------------------------
 * @lastModifiedDate : 2013/01/01
 * @lastModifiedName : TAIKI,YOSHIKAWA
 * ----------------------------------------
 */
public with sharing class MyExceptionSampleController {
	
	// 独自の例外クラス
	public class MyException extends Exception {}
	
	/*
	 * コンストラクタ
	 * @param	: なし
	 * @return	: なし
	 */
	public MyExceptionSampleController() {
		System.debug('◆◆◆◆MyExceptionSampleController:START');
		
		MyException ex = new MyException();
		ex.setMessage('独自の例外クラス処理です。');
		throw ex;
		
		System.debug('◆◆◆◆MyExceptionSampleController:END');
	}
}