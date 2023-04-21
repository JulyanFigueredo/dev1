import { LightningElement, api } from 'lwc';

export default class FlowScreenCmp extends LightningElement {
    @api AccountId;
    _AccountId;

    set AccountId(value){
        console.log('set AccountId');
        if(value){
            this._AccountId = value;
        }
        console.log(this._AccountId);
    }
    get AccountId(){
        return this._AccountId;
    }
}