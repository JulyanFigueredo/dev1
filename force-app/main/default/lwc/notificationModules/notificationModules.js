import { LightningElement } from 'lwc';
import LightningAlert from 'lightning/alert';
import modal from 'c/modal';

export default class NotificationModules extends LightningElement {
    async handleAlertClick() {
        await LightningAlert.open({
            message: 'this is the alert message',
            theme: 'error', // a red theme intended for error states
            label: 'Error!', // this is the header text
        });
        //Alert has been closed
    }
    async showmodal() {
        const result = await modal.open({
            size: 'large',
            description: 'Accessible description of modal\'s purpose',
            content: 'Passed into content api',
        });
    }
}