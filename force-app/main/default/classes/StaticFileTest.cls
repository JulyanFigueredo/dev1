@isTest
public class StaticFileTest {
    @isTest
    public static void test2() {
        User thisUser = [SELECT Id FROM User WHERE Id = :UserInfo.getUserId()];
        System.runAs(thisUser){

            Test.startTest();
            Account a = new Account(name='teste');
            insert a;
    
            String uniqueUserName = 'standarduser' + DateTime.now().getTime() + '@testorg.com';
            Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
            User u = new User(Alias = 'standt', Email='standarduser@testorg.com',
            EmailEncodingKey='UTF-8', LastName='Testing', LanguageLocaleKey='en_US',
            LocaleSidKey='en_US', ProfileId = p.Id,
            TimeZoneSidKey='America/Los_Angeles',
             UserName=uniqueUserName);
            insert u;
    
            Profile p2 = [SELECT Id FROM Profile WHERE name = 'Solution Manager'];
    
            u.ProfileId = p2.Id;
            update u;
            Test.stopTest();
        }
    }
}