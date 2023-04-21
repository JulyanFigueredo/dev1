public class InvocableMethodClass {
    
    @InvocableMethod(label='Invocado' description='Este método é invocado!' category='pimba')
    public static void InvocableMethodClass(List<Id> registro) {
        List<sObject> resposta = new List<sObject>();

        //testando a chamada de método de utility test class
        TestFactory.getAccount('teste',true);
    }
}