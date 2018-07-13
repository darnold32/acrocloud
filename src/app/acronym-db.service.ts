import { Injectable } from '@angular/core';
import { Acronym } from './acronym'
import { acronyms } from './java-api'
import { Observable, of} from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class AcronymDbService {


  constructor() {}

  // findAcronyms(acronym: string): Observable<Acronym[]>{

  //   //return of(acronyms.find(acronym => acronym.name == acronym));

  // }


  
}


