public class GetvalueFromMapClass{
    
    @InvocableMethod(label='Get Value from a Map key' category='MAPA')
    public static GetValueOutputs[] getValue(getValueInputs[] input	){
        system.debug(input);
        GetValueOutputs[] result = new GetValueOutputs[]{};
        
        for(FlowMapClass loopObj : input[0].flowMap){
            if(loopObj.key == input[0].key){
                GetValueOutputs obj = new GetValueOutputs();
                obj.outputValue = loopObj.record;
                result.add(obj);
            }
        }
        
        return result;        
    }
    
    public class GetValueInputs{
        @InvocableVariable(label='Key' required=true)
        public string key;
        
        @InvocableVariable(label='Map' required=true)
        public FlowMapClass[] flowMap;
    }
    
    public class GetValueOutputs{
        @InvocableVariable(label='Value' required=true)
        public sObject outputValue;
    }
}