import { LightningElement } from 'lwc';

export default class Lws2 extends LightningElement {
    name = "Nurdan";
   

    changeHandler(event){
       this.name = event.target.value;


    }

}