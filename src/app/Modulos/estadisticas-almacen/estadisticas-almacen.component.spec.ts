import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EstadisticasAlmacenComponent } from './estadisticas-almacen.component';

describe('EstadisticasAlmacenComponent', () => {
  let component: EstadisticasAlmacenComponent;
  let fixture: ComponentFixture<EstadisticasAlmacenComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EstadisticasAlmacenComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(EstadisticasAlmacenComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
