import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';

import { Headercomp } from './components/header-comp/header-comp.component';
import { FooterCompComponent } from './components/footer-comp/footer-comp.component';
import { FiltroCompComponent } from './components/filtro-comp/filtro-comp.component';

@NgModule({
  declarations: [
    AppComponent,
    Headercomp,
    FooterCompComponent,
    FiltroCompComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
