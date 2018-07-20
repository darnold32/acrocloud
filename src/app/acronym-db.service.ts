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
  
  data: Acronym; 
  jString: string;
  

  constructor(private http: HttpClient) {

  
  }


  getAcronym(value){
    if (value == ''){

    }
    
    else {

    this.http.get(this.cleanString(value)).subscribe((data: Acronym) => {
      console.log(data);
      this.data  = data;
      this.jsonObjToTsObj();
    
    })
  }
    return this.data;


  }
cleanString(cleanMe){

  var dummyUrl = this.apiUrl;
  cleanMe = cleanMe.replace(/[\/\\#,+()$~%.'":*?<>{}]/g,'');
  cleanMe = cleanMe.toUpperCase();
  dummyUrl += cleanMe;

  return dummyUrl;
}

jsonObjToTsObj(){

  console.log(this.data.acronym);
  console.log(this.data.name);
  console.log(this.data.description);
  console.log(this.data.category);
}



}
