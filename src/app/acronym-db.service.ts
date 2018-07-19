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
  jString: string;
  public acronym:Acronym;

  constructor(private http: HttpClient) {}


  // getData(){
  //   return this.http.get(this.cleanString(value));
  // }
  getAcronym(value){

    this.http.get(this.cleanString(value)).subscribe(data => {
      console.log(data);
      this.data = data;
      // this.acronym = JSON.parse(this.data)
      this.jsonObjToAngObj();

    })


  }
cleanString(cleanMe){

  var dummyUrl = this.apiUrl;
  cleanMe = cleanMe.replace(/[\/\\#,+()$~%.'":*?<>{}]/g,'');
  cleanMe = cleanMe.toUpperCase();
  dummyUrl += cleanMe;

  return dummyUrl;
}

jsonObjToAngObj(){

  this.acronym = JSON.parse(this.data);
  console.log(this.acronym.acronym);
  console.log(this.acronym.name);
  console.log(this.acronym.description);
  console.log(this.acronym.catagory);


}
  

}




