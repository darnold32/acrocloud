import { Injectable } from '@angular/core';
import { Acronym } from './acronym'
import 'rxjs/add/observable/of';
import 'rxjs/add/operator/map'
import 'rxjs/Rx';
import { AppModule } from './app.module'
import { NgModule } from '@angular/core';

import { HttpClient } from '@angular/common/http';

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
    }
  }

  cleanString(cleanMe) {
    var dummyUrl = this.apiUrl;
    cleanMe = cleanMe.replace(/[\/\\#,+()$~%.'":*?<>{}]/g, '');
    cleanMe = cleanMe.toUpperCase();
    dummyUrl += cleanMe;
    return dummyUrl;
  }
}
