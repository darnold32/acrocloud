import { Injectable } from '@angular/core';
import { HttpErrorResponse } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { MessageService } from './message.service';
import { Acronym } from './acronym';
import { ResultappComponent } from './resultapp/resultapp.component'
import { AcronymDbService } from './acronym-db.service';

export type HandleError =
  <T> (operation?: string, result?: T) => (error: HttpErrorResponse) => Observable<T>;

@Injectable()
export class HttpErrorHandler {
  constructor(private messageService: MessageService, ) { }

  createHandleError = (serviceName = '') => <T>
    (operation = 'operation', result = {} as T) => this.handleError(serviceName, operation, result);

  /**
   * Returns a function that handles Http operation failures.
   * This error handler lets the app continue to run as if no error occurred.
    @param serviceName = name of service
    @param operation = name of the operation that failed
    @param result - optional value to return as the observable result
   */

  handleError<T>(serviceName = '', operation = 'operation', result = {} as T) {

    return (error: HttpErrorResponse): Observable<T> => {

      const message = (error.error instanceof ErrorEvent) ?
        error.error.message:

        `Acronym '  ${result}  ' Not Found! - server returned code '${error.status}'. `;

      this.messageService.add( ` <p> <h2> '404' </h2>  </p> <p>  ${message}' <br> <br> If '  ${result}  ' is a Best Buy acronym. Please, request an acronym submit below. </h4> ` );
     
     

    
      return of(result);
    };

  }

}

