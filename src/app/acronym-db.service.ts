import { Injectable } from '@angular/core';
import { Acronym } from './acronym'
import 'rxjs/add/observable/of';
import 'rxjs/add/operator/map'
import 'rxjs/Rx';
import { AppModule } from './app.module'
import { NgModule } from '@angular/core';

import { HttpClient } from '@angular/common/http';

import { Observable } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { HttpErrorHandler, HandleError } from './http-error-handler.service';


@Injectable({
  providedIn: 'root'
})

export class AcronymDbService {
  private apiUrl = "http://localhost:8080/intern-onboarding-microservice-1.0/acronyms/";
  data: Acronym;
  jString: string;
  acro: String = '';
  private handleError: HandleError;

  constructor(private http: HttpClient, httpErrorHandler: HttpErrorHandler) {
    this.handleError = httpErrorHandler.createHandleError('AcronymDbService')
  }

    getAcronym (inputValue) {
    if (inputValue != '') {
      return this.http.get(this.cleanString(inputValue))
      .pipe(
        catchError(this.handleError('getAcronym', inputValue))
<<<<<<< HEAD
      )
    };
=======
      );
    }
>>>>>>> 4b4458622ba86b8c22f857f54a2800c7ecb409f1
  }

  cleanString(cleanMe) {
    var dummyUrl = this.apiUrl;
    cleanMe = cleanMe.replace(/[\/\\#,+()$~%.'":*?<>{}]/g, '');
    cleanMe = cleanMe.toUpperCase();
    dummyUrl += cleanMe;
    return dummyUrl;
  }}
