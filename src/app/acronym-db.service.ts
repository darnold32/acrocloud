import { Injectable } from '@angular/core';
import { Acronym } from './acronym'
import { acronyms } from './java-api'

// import { Http, Response } from '@angular/http';
import { HttpClient } from '@angular/common/http';
import 'rxjs/add/operator/map'

@Injectable({
  providedIn: 'root'
})
export class AcronymDbService {
private apiUrl = "http://localhost:8080/intern-onboarding-microservice-1.0/acronyms/OOO";
  data: any = {};

  constructor(private http: HttpClient) {}

  getData(){
    return this.http.get(this.apiUrl)
    .map((res: Response) => res.json())
  }

  getAcronym(){
    this.getData().subscribe(data => {
      console.log(data);
      this.data = data
    })
  }
  // findAcronyms(acronym: string) Observable<Acronym[]>{

  //   return of(acronyms.find(acronym => acronym.name = acronym));

  // }


  
}


