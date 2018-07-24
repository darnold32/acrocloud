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

<<<<<<< HEAD
      const message = (error.error instanceof ErrorEvent) ?
        error.error.message :
=======
      // value - get input value!
      const message = (error.error instanceof ErrorEvent) ?
        error.error.message :
        `No acronym found! -  ${'"value"'} server returned code ${error.status}"`;
>>>>>>> 2d8c6ecf8779e7aa90e1b6fb820eb482cc225518

        `Acronym '${result}' Not Found! - Server returned code '${error.status}'. `;

<<<<<<< HEAD

      this.messageService.add(`${message} /n If '${result}' is a Best Buy Acronym. Please, request an acronym submit below.` );

    
      return of(result);
=======
      return of(result);
      console.log(result);
>>>>>>> 2d8c6ecf8779e7aa90e1b6fb820eb482cc225518
    };

  }

}
