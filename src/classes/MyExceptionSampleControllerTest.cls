/**
 * 独自の例外クラスサンプル
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class MyExceptionSampleControllerTest {

    /**
     * コンストラクタ
     */
    static testMethod void MyExceptionSampleControllerTest() {
            
        Test.startTest();
        
        try {
            // コンストラクタ
            MyExceptionSampleController cls = new MyExceptionSampleController();
        } catch (Exception e) {
            System.assertEquals(e.getMessage(), MyExceptionSampleController.ERROR_MSG);
        }
        
        Test.stopTest();
    }
}