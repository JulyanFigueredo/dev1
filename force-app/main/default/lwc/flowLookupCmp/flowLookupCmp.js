import { LightningElement, api } from 'lwc';
import { FlowAttributeChangeEvent } from 'lightning/flowSupport';

export default class FlowLookup extends LightningElement {
    @api childObjectApiName; //Objeto com campo lookup
    @api targetFieldApiName; //Nome do campo lookup
    @api value;
    _value;

    set value(value){
        console.log('set value1');
        if(value){
            console.log('set value2');
            this._value = value;
        }
    }
    get value(){
        return this._value;
    }

    handleChange(event) {
        console.log('handleChange1');
        console.log('event.detail.value: ' + event.detail.value);
        const attributeChangeEvent = new FlowAttributeChangeEvent(
            'value',
            event.detail.value
        );
        this.dispatchEvent(attributeChangeEvent);
        console.log('handleChange2');
    }
}