import { Component } from '@angular/core';
import 'rxjs/add/operator/map'
import { NgModule } from '@angular/core'
import { FormsModule } from '@angular/forms';
import { BrowserModule } from '../../node_modules/@angular/platform-browser';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { AcronymDbService } from './acronym-db.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

@NgModule({
declarations: [
  AppComponent
],
imports: [
  BrowserModule,
  FormsModule,
  NgbModule,
],
providers: [AppComponent, AcronymDbService],
bootstrap: [AppComponent]
})

export class AppComponent {
  title = 'Acronym Search';
  value = '';
  private apiUrl = "http://localhost:8080";
     data: any = {};

  constructor(private service: AcronymDbService) {
        
        // service.getAcronym(this.value);
        // service.getData(this.value);
      }
      
      searchAcronyms(value: string) {
        console.log(this.value)    
        this.service.getAcronym(this.value);
        this.value = value; }
 }