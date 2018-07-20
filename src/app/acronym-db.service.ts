import { Injectable, Input } from '@angular/core';
import { Acronym } from './acronym'
import { Observable, of } from 'rxjs';
import { AppComponent } from './app.component';

// import { Http, Response } from '@angular/http';
import { HttpClient } from '@angular/common/http';
import 'rxjs/add/operator/map'
import { map } from "rxjs/operators";
import 'rxjs/Rx';

import { Component, ViewChild, AfterViewInit } from '@angular/core';
import { ifError } from 'assert';

@Injectable({
  providedIn: 'root'
})


export class AcronymDbService {
  private apiUrl = "http://localhost:8080/intern-onboarding-microservice-1.0/acronyms/";

  data: Acronym;
  jString: string;

  acro: String = '';

  constructor(private http: HttpClient) {

  }


  getAcronym(value) {

    if (value != '') {

      return this.http.get(this.cleanString(value));
      // this.http.get(this.cleanString(value)).subscribe((data: Acronym) => {
      //   this.data = data;
      // })

      // return this.data;
    }
  }
  cleanString(cleanMe) {

    var dummyUrl = this.apiUrl;
    cleanMe = cleanMe.replace(/[\/\\#,+()$~%.'":*?<>{}]/g, '');
    cleanMe = cleanMe.toUpperCase();
    dummyUrl += cleanMe;

    return dummyUrl;
  }

  jsonObjToTsObj() {

    console.log(this.data.acronym);
    console.log(this.data.name);
    console.log(this.data.description);
    console.log(this.data.category);
  }




}
