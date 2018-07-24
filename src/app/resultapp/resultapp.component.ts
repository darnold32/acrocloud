import { Component, OnInit, Input, Injectable, Injector } from '@angular/core';
import { AcronymDbService } from '../acronym-db.service';
import 'rxjs/add/operator/map';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { Acronym } from '../acronym';
import { AppComponent } from '../app.component';
import { ErrorHandler } from '@angular/core'
import { HttpErrorResponse } from '@angular/common/http';
import { MessageService } from '../message.service';


@Component({
  selector: 'app-resultapp',
  templateUrl: './resultapp.component.html',
  styleUrls: ['./resultapp.component.css']
})
@NgModule({
  declarations: [
    ResultappComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    NgbModule,
  ],
  providers: [ResultappComponent, AcronymDbService],
  bootstrap: [ResultappComponent]
})
@Injectable()
export class ResultappComponent implements OnInit {
  value = '';
  public acronym: Acronym;
  private acro: String = '';
  private apiUrl = "http://localhost:8080";
  public show: boolean = false;
  public buttonName: any = 'Click Me!';


  constructor(private service: AcronymDbService, public messageService: MessageService) {
  }

  //Subs our Acronym object to the one populated with information from Cassandra
  searchAcronyms() {
    console.log(this.acro);
    this.acro = this.acro.toUpperCase();
    this.service.getAcronym(this.acro).subscribe((data: Acronym) => {
      this.acronym = data;
      this.checkDescription();
    });
  }


  //Hits database with user input as page loads
  ngOnInit() {
    this.acro = this.service.acro;
    this.searchAcronyms();
  }



  //Checks to see if description is a non null field, if it is it sets the first char to uppercase and adds a period to the end.
  checkDescription() {

    if (this.acronym.description != null) {

      this.messageService.clear();

      if (this.acronym.description == "null") {
        this.acronym.description = "No Description.";
      }
      else {
        this.acronym.description = this.acronym.description.charAt(0).toUpperCase() + this.acronym.description.slice(1);
        this.addPeriod();

      }
    }
  }

  //Method adds period to the end of a description if it does not have one
  addPeriod() {
    if (this.acronym.description[this.acronym.description.length - 1] != ".")
      this.acronym.description = this.acronym.description + ".";
  }

  //toggles the visibility of the about button
  toggle() {
    this.show = !this.show;

    if (this.show)
      this.buttonName = "Hide";
    else
      this.buttonName = "Click Me!";
  }




}