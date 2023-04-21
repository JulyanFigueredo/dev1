public class CreateFlowMapClass {
    
    @InvocableMethod(label='Create Standard Id-Record Map' category='MAPA')
    public static CreateMapOutputs[] createMap(CreateMapInputs[] input){
        
        FlowMapClass[] flowMap = new FlowMapClass[]{};
        for(sObject sObj : input[0].records){
            FlowMapClass obj = new FlowMapClass();
            obj.key = (string)sObj.get('Id');
            obj.record = sObj;
            flowMap.add(obj);
        }
        CreateMapOutputs obj = new CreateMapOutputs();
        obj.flowMap = flowMap;
        
        CreateMapOutputs[] result = new CreateMapOutputs[]{};
            result.add(obj);
        return result;
    }
    
    /* Input(s) for Invocable method */
    public class CreateMapInputs{
        @InvocableVariable(label='Key' required=true)
        public string key;

        @InvocableVariable(label='List of records')
        public sObject[] records;

    }
    
    /* Output(s) for Invocable method */
    public class CreateMapOutputs{
        @InvocableVariable(label='Map')
        public FlowMapClass[] flowMap;
    }

}