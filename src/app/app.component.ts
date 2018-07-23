import { Component, Input } from '@angular/core';
import 'rxjs/add/operator/map'
import { NgModule } from '@angular/core'
import { FormsModule } from '@angular/forms';
import { BrowserModule } from '../../node_modules/@angular/platform-browser';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { AcronymDbService } from './acronym-db.service';
import { Acronym } from './acronym';



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
    NgbModule,
  ],
  providers: [AppComponent, AcronymDbService],
  bootstrap: [AppComponent]
})

export class AppComponent {
  title = 'Acronym Search';
  value = '';
  acro: String = '';

  // // public acronym:Acronym;
  // private apiUrl = "http://localhost:8080";

  constructor(private service: AcronymDbService) {
    console.log()

  }

  searchAcronyms() {
    this.service.acro = this.acro;
  }


  }



