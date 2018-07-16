import { Injectable } from '@angular/core';
import { Acronym } from './acronym'
import { acronyms } from './java-api'
import { Observable, of} from 'rxjs';


// import { Http, Response } from '@angular/http';
import { HttpClient } from '@angular/common/http';
import 'rxjs/add/operator/map'
import { map } from "rxjs/operators";
import 'rxjs/Rx';

@Injectable({
  providedIn: 'root'
})
export class AcronymDbService {
private apiUrl = "http://localhost:8080/intern-onboarding-microservice-1.0/acronyms/ooo";
  data: any = {};

  constructor(private http: HttpClient) {}

  getData(){
    return this.http.get(this.apiUrl)
    .pipe(map((res: Response) => res.json()));
  }

  getAcronym(){
    this.getData().subscribe(data => {
      console.log(data);
      this.data = data;
      this.cleanString(data);
    })
  }

  cleanString(cleanMe:any){

     cleanMe.toUpperCase();

     cleanMe.replace(/[&\/\\#,+()$~%.'":*?<>{}]/g,'_');

    //alert(cleanMe.replace(/[^a-zA-Z ]/g, ""));
    // cleanMe = cleanMe.replace(/[^a-zA-Z 0-9]+/g,”);

    return cleanMe;
}

  }



