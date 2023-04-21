import { LightningElement, api } from 'lwc';

export default class FlowShowNiceValidationErrorMessages extends LightningElement {
    @api message;
    set message(value){
        // if(value){
        //     console.log(value);
        //     console.log(value.length);
        // }
        let v1 = "O fluxo tentou atualizar estes registros: 0018Z00002vyHdeQAE. Ocorreu este erro: FIELD_CUSTOM_VALIDATION_EXCEPTION: Campo Active__c deve ser 'No'.. Você pode consultar valores de ExceptionCode no <a href='https://developer.salesforce.com/docs/atlas.en-us.api.meta/api/sforce_api_calls_concepts_core_data_objects.htm#'>Guia do desenvolvedor da API SOAP</a>.";
        console.log(v1.length);
        let v2 = "O fluxo tentou atualizar estes registros: 0018Z00002vyHdeQAE. Ocorreu este erro: FIELD_CUSTOM_VALIDATION_EXCEPTION: ";
        console.log(v2.length);
        let v3 = "O fluxo tentou atualizar estes registros: 0018Z00002vyHdeQAE. Ocorreu este erro: FIELD_CUSTOM_VALIDATION_EXCEPTION: Campo Active__c deve ser 'No'.";
        console.log(v3.length);
        let v4 = "O fluxo tentou atualizar estes registros: 0018Z00002vyHdeQAE. Ocorreu este erro: F";
        console.log(v4.length);
    }
    get message(){
        return 
    }
    //FIELD_CUSTOM_VALIDATION_EXCEPTION

}