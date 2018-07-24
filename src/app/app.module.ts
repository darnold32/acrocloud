import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';



import { AppComponent } from './app.component';
import { ResultappComponent } from './resultapp/resultapp.component';
import { AppRoutingModule } from './app-routing.module';
import { HttpClientModule } from '@angular/common/http';

import { HttpErrorHandler } from './http-error-handler.service';
import { MessageService } from './message.service';

@NgModule({
  declarations: [AppComponent, ResultappComponent],
  imports: [BrowserModule, AppRoutingModule, HttpClientModule, FormsModule],
  bootstrap: [AppComponent],
  providers: [
    HttpErrorHandler,
    MessageService
  ]
})
export class AppModule { }
