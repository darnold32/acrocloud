import { NgModule } from '@angular/core';
//import { CommonModule } from '@angular/common';

import { RouterModule, Routes } from '@angular/router';

import {ResultappComponent} from './resultapp/resultapp.component'


const routes: Routes = [
  //{ path: '', redirectTo: '/home', pathMatch: 'full' },
  {
      path: '../resultapp', component:ResultappComponent
  }
  ];

@NgModule({

  imports: [ RouterModule.forRoot(routes) ],
  exports: [
    RouterModule
  ],
  //declarations: []
})
export class AppRoutingModule { }

