import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';

import { Headercomp } from './components/header-comp/header-comp.component';
import { FooterCompComponent } from './components/footer-comp/footer-comp.component';
import { FiltroCompComponent } from './components/filtro-comp/filtro-comp.component';
import { PipePipe } from './pipe/pipe.pipe';
import { FormsModule } from '@angular/forms';

@NgModule({
  declarations: [
    AppComponent,
    Headercomp,
    FooterCompComponent,
    FiltroCompComponent,
    PipePipe
  ],
  imports: [
    BrowserModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
