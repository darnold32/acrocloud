import { Component } from '@angular/core';
import {ResultappComponent} from './resultapp/resultapp.component';
// import { Http, Response } from '@angular/http';
import 'rxjs/add/operator/map'
import { NgModule } from '@angular/core'
import { FormsModule } from '@angular/forms';
// import { HttpModule } from '@angular/http';
import { BrowserModule } from '../../node_modules/@angular/platform-browser';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { AcronymDbService } from './acronym-db.service';
import { Acronym } from './acronym';

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
  // HttpModule,
  NgbModule,
],
providers: [AppComponent, AcronymDbService],
bootstrap: [AppComponent]
})

export class AppComponent {
  title = 'Acronym Search';
  value = '';
  // public acronym:Acronym;
  private apiUrl = "http://localhost:8080";
     data: any = {};

  constructor(private service: AcronymDbService) {
        console.log()

        // this.acronym = new Acronym();
        // this.acronym.acronym = "AAA";
        // this.acronym.name = "Acronym";
        // this.acronym.description = "Descripton goes here";  
        // this.acronym.catagory = "Cata"; 
        
      }
      
      searchAcronyms(value: string) {
        console.log(this.value)
                this.service.getAcronym(this.value);
         this.value = value; 
        }
 }

