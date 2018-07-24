import { Injectable } from '@angular/core';
import { HttpErrorResponse } from '@angular/common/http';

import { Observable, of } from 'rxjs';

import { AcronymDbService } from './acronym-db.service';
import { MessageService } from './message.service';
import { Acronym } from './acronym';

/** Type of the handleError function returned by HttpErrorHandler.createHandleError */
export type HandleError =
  <T> (operation?: string, result?: T) => (error: HttpErrorResponse) => Observable<T>;

/** Handles HttpClient errors */
@Injectable()
export class HttpErrorHandler {
  constructor(private messageService: MessageService, ) { }

  /** Create curried handleError function that already knows the service name */
  createHandleError = (serviceName = '') => <T>
    (operation = 'operation', result = {} as T) => this.handleError(serviceName, operation, result);

  /**
   * Returns a function that handles Http operation failures.
   * This error handler lets the app continue to run as if no error occurred.
    @param serviceName = name of dervice
    @param operation = name of the operation that failed
    @param result - optional value to return as the observable result
   */

  handleError<T>(serviceName = '', operation = 'operation', result = {} as T) {

    return (error: HttpErrorResponse): Observable<T> => {
      //  console.error(error); // log to console instead.

      // value - get input value!
      const message = (error.error instanceof ErrorEvent) ?
        error.error.message :
        `No acronym found! -  ${'"value"'} server returned code ${error.status}"`;

      this.messageService.add(` ${message} `);

      return of(result);
      console.log(result);
    };

  }
}

