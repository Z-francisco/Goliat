import { TestBed } from '@angular/core/testing';

import { AportacionesService } from './aportaciones.service';

describe('AportacionesService', () => {
  let service: AportacionesService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(AportacionesService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
