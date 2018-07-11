import { TestBed, inject } from '@angular/core/testing';

import { AcronymDbService } from './acronym-db.service';

describe('AcronymDbService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [AcronymDbService]
    });
  });

  it('should be created', inject([AcronymDbService], (service: AcronymDbService) => {
    expect(service).toBeTruthy();
  }));
});
