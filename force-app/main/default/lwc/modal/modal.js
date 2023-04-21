import LightningModal from 'lightning/modal';
export default class modal extends LightningModal {
    handleOkay() {
        this.close('okay');
    }
}