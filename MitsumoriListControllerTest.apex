@isTest
public class MitsumoriListControllerTest {
	/**
     * 検索条件なしで検索
     */ 
    @isTest
    static void noKeywordSearch(){
        createRecords();
        MitsumoriListController sut = new MitsumoriListController();

        Test.startTest();
        sut.init();
        sut.search();
        Test.stopTest();

        System.assert(sut.results.size() == 3);
    }
    
    /**
     * ステータスを指定した検索の実施
     */ 
    @isTest
    static void statusSearch(){
        createRecords();
        MitsumoriListController sut = new MitsumoriListController();

        Test.startTest();
        sut.init();
        sut.condition.obj.MitusmoriNenGetsu__c = '202003';
        sut.search();
        Test.stopTest();

        System.debug(sut.results.size());
        System.debug(sut.results);
        System.assert(sut.results.size() == 1);
    }
    
    /**
     * テスト用に3レコード作成する
     */ 
    private static void createRecords(){
        List<Mitsumori__c> records = new Mitsumori__c[]{
              createRecord(1, '申請中')
            , createRecord(2, '承認済')
            , createRecord(3, '請求済')
        };
        insert records;
    }
    
    private static Mitsumori__c createRecord(Integer index, String status){
        Mitsumori__c tr = new Mitsumori__c();
        tr.Status__c = status;
        tr.MitusmoriNenGetsu__c = '202003';
        tr.MitsumoriYukokikan__c = Date.newInstance(2020, 6, 1).addDays(index);
        return tr;
    }
}
