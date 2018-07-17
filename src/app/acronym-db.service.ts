import { Injectable, Input } from '@angular/core';
import { Acronym } from './acronym'
import { acronyms } from './java-api'
import { Observable, of} from 'rxjs';
import { AppComponent } from './app.component';


// import { Http, Response } from '@angular/http';
import { HttpClient } from '@angular/common/http';
import 'rxjs/add/operator/map'
import { map } from "rxjs/operators";
import 'rxjs/Rx';

import { Component, ViewChild, AfterViewInit } from '@angular/core';

@Injectable({
  providedIn: 'root'
})


export class AcronymDbService {
private apiUrl = "http://localhost:8080/intern-onboarding-microservice-1.0/acronyms/";
  data: any = {};
  constructor(private http: HttpClient) {}

<<<<<<< HEAD
  
  cleanMe: string = "FMS";
=======
>>>>>>> a8cf0f40a49fcf90ef0f102da858e005e5e5c868

  cleanMe: string = "O.m.s";
  // getData(){
  //   return this.http.get(this.cleanString(value));
  // }
  getAcronym(value){
    this.http.get(this.cleanString(value)).subscribe(data => {
      console.log(data);
      this.data = data;
    })
  }
cleanString(cleanMe){
  cleanMe = cleanMe.replace(/[\/\\#,+()$~%.'":*?<>{}]/g,'');
  cleanMe = cleanMe.toUpperCase();
  this.apiUrl += cleanMe;
  return this.apiUrl;
}
  }



