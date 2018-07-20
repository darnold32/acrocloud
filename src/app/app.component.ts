import { Component, Input } from '@angular/core';
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
import { observable } from '../../node_modules/rxjs';

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
  @Input() value = '';
  acronym:Acronym = new Acronym();

  // // public acronym:Acronym;
  // private apiUrl = "http://localhost:8080";

  constructor(private service: AcronymDbService) {
        console.log()
        
      }

      searchAcronyms(value: string) {
        this.value = value;
        console.log(value)
        }

 }

