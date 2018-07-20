import { Component, OnInit, Input } from '@angular/core';
import { AcronymDbService } from 'src/app/acronym-db.service';
import 'rxjs/add/operator/map';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { BrowserModule } from 'node_modules/@angular/platform-browser';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { Acronym } from 'src/app/acronym';
import { AppComponent } from '../app.component';


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
    // HttpModule,
    NgbModule,
  ],
  providers: [ResultappComponent, AcronymDbService],
  bootstrap: [ResultappComponent]
})

export class ResultappComponent implements OnInit {
  value = '';
  public acronym: Acronym;
  private acro: String = '';
  private apiUrl = "http://localhost:8080";


  constructor(private service: AcronymDbService) {
  }

  searchAcronyms() {
    console.log(this.acro);
    this.service.getAcronym(this.acro).subscribe((data: Acronym) => {
      this.acronym = data;
    });
  }

  ngOnInit() {
    this.acro = this.service.acro;
    this.service.getAcronym(this.acro).subscribe((data: Acronym) => {
      this.acronym = data;
    });  }
}
