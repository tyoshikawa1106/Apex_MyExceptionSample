/**
 * 独自の例外クラスサンプル
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class MyExceptionSampleController {
    
    // 独自の例外クラス
    public class MyException extends Exception {}
    public static final String ERROR_MSG = '独自の例外クラス処理です。';
    
    /**
     * コンストラクタ
     */
    public MyExceptionSampleController() {
        System.debug('MyExceptionSampleController:START');
        
        MyException ex = new MyException();
        ex.setMessage(ERROR_MSG);
        throw ex;
        
        System.debug('MyExceptionSampleController:END');
    }
}