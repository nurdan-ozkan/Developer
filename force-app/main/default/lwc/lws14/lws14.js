import { LightningElement, api } from 'lwc';

export default class Lwc14 extends LightningElement {
    @api fieldValue = " ";
    @api fieldLabel;

    changeHandler(event){
        this.fieldValue = event.target.value;
    }

}