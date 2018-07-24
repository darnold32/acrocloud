import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ResultappComponent } from './resultapp.component';

describe('ResultappComponent', () => {
  let component: ResultappComponent;
  let fixture: ComponentFixture<ResultappComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ResultappComponent]
    })
      .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ResultappComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
