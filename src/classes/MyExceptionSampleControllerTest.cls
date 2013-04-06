/*
 * 独自の例外クラスサンプル
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdDate      : 2013/01/01
 * @createdName      : TAIKI,YOSHIKAWA
 * ----------------------------------------
 * @lastModifiedDate : 2013/01/01
 * @lastModifiedName : TAIKI,YOSHIKAWA
 * ----------------------------------------
 */
@isTest
private class MyExceptionSampleControllerTest {

    /*
	 * コンストラクタ・テスト
	 */
    static testMethod void MyExceptionSampleControllerTest() {
        System.debug('◆◆◆◆MyExceptionSampleControllerTest:START');
        
        // ユーザ
        User user = getUser();
        
        // テスト実施
        System.RunAs(user) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
            
            // テスト開始
            Test.startTest();
            
            try {
	            // コンストラクタ
	            MyExceptionSampleController cls = new MyExceptionSampleController();
            } catch (Exception e) {
            	System.assertEquals(e.getMessage(), MyExceptionSampleController.ERROR_MSG);
            }
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆MyExceptionSampleControllerTest:END');
    }
    
    /*
     * ユーザ取得
     */
    private static User getUser() {
    	return [select Id from User where Id =: UserInfo.getUserId() limit 1];
    }
    
    /*
     * テストページ取得
     */
    private static PageReference getPageReference() {
    	return new PageReference('TestPage');
    }
}