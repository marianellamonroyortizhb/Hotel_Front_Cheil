import { Component } from '@angular/core';

@Component({
    selector: 'header-comp',
    templateUrl: './header-comp.component.html'
})

export class Headercomp{
    constructor(){
        console.log("El header-comp ha sido cargado")
    }
}