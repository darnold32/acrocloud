import { Component } from '@angular/core';
import {ResultappComponent} from './resultapp/resultapp.component';
import {AppRoutingModule} from './app-routing.module';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Acronym Search';
  acronymData: string;


  setData(data:string){

    this.acronymData = this.cleanString(data);
  }

  cleanString(cleanMe:string){

    alert(cleanMe.replace(/[^a-zA-Z ]/g, ""));

    return cleanMe;
  }
}
