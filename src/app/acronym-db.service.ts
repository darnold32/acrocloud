import { Injectable } from '@angular/core';
import { Acronym } from './acronym'
import { acronyms } from './java-api'
import { Observable, of} from 'rxjs';
import { AppComponent } from './app.component';


// import { Http, Response } from '@angular/http';
import { HttpClient } from '@angular/common/http';
import 'rxjs/add/operator/map'
import { map } from "rxjs/operators";
import 'rxjs/Rx';

@Injectable({
  providedIn: 'root'
})
export class AcronymDbService {
private apiUrl = "http://localhost:8080/intern-onboarding-microservice-1.0/acronyms/";
  data: any = {};
  constructor(private http: HttpClient) {}

  
  cleanMe: string = "FMS";

  getData(){
    return this.http.get(this.cleanString());
  }
  getAcronym(){
    this.getData().subscribe(data => {
      console.log(data);
      this.data = data;
    })
  }
cleanString(){
  this.cleanMe = this.cleanMe.replace(/[\/\\#,+()$~%.'":*?<>{}]/g,'');
  this.cleanMe = this.cleanMe.toUpperCase();
  this.apiUrl += this.cleanMe;

  return (this.apiUrl);
}
  }



