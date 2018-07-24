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

  searchAcronyms() {
    console.log(this.acro);
    this.service.getAcronym(this.acro).subscribe((data: Acronym) => {
      this.acronym = data;
      this.checkDescription();
      this.addPeriod();
    });
  }


  ngOnInit() {
    this.acro = this.service.acro;
    this.searchAcronyms();
  }

  checkDescription() {
    if (this.acronym.description == "null") {
      this.acronym.description = "No Description.";
    }
    else {
      this.acronym.description = this.acronym.description.charAt(0).toUpperCase() + this.acronym.description.slice(1);
    }
  }
  addPeriod() {
    if (this.acronym.description[this.acronym.description.length - 1] != ".")
      this.acronym.description = this.acronym.description + ".";
  }
  toggle() {
    this.show = !this.show;

    if (this.show)
      this.buttonName = "Hide";
    else
      this.buttonName = "Click Me!";
  }
}
// @Injectable()
// export class MyErrorHandler implements ErrorHandler {

// constructor(private injector: Injector,){}

//   handleError(error: Error | HttpErrorResponse) {
    
//     const notificationService = this.injector.get(NotificationService);
    

//     if (error instanceof HttpErrorResponse) {
//       //log 
//       if (!navigator.onLine) {
//       return notificationService.notify('No Internet Connection.');
//       } else {
//          (error.status == 403, 404)
//          return notificationService.notify('${error.status} - ${error.message}');
//       }
//     } else {
//       //(Angular Error, ReferenceError)
//     }
//     console.log('404: ', error);
//   }

// }
  //Toggle Used for the about Button
 







