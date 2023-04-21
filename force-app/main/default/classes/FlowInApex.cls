public with sharing class FlowInApex {
    public static void runFlow() {
        Map<String, Object> params = new Map<String, Object>();
        params.put('input1', 'Batata!');
        Flow.Interview.test_flow_in_apex flow = new Flow.Interview.test_flow_in_apex(params);
        flow.start();
        String value = (String) flow.getVariableValue('var1');
        System.debug(value);
    }
}