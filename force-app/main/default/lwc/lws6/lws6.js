import { LightningElement } from 'lwc';

export default class Lws6 extends LightningElement {
    areDetailsVisible = false;

    handleChange(event){
        this.areDetailsVisible = event.target.checked;

    }
}