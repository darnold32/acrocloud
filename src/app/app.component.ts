import { Component } from '@angular/core';
import {ResultappComponent} from './resultapp/resultapp.component';
// import { Http, Response } from '@angular/http';
import 'rxjs/add/operator/map'
import { NgModule } from '@angular/core'
import { FormsModule } from '@angular/forms';
// import { HttpModule } from '@angular/http';
import { BrowserModule } from '../../node_modules/@angular/platform-browser';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { AcronymDbService } from './acronym-db.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

@NgModule({
declarations: [
  AppComponent
],
imports: [
  BrowserModule,
  FormsModule,
  // HttpModule,
  NgbModule,
],
providers: [AppComponent, AcronymDbService],
bootstrap: [AppComponent]
})

export class AppComponent {
  title = 'Acronym Search';
  private apiUrl = "http://localhost:8080";
     data: any = {};

  constructor(private service: AcronymDbService) {
        console.log()
        service.getAcronym();
        service.getData();
        // this.getName();
        // this.getDescription();
        // this.getCategory();
      }
      // getData(){
      //   return this.http.get(this.apiUrl)
      //   .map((res: Response) => res.json())
      // }
    
      // getAcronym(){
      //   this.getData().subscribe(data => {
      //     console.log(data);
      //     this.data = data
      //   })
      // }
//     }

