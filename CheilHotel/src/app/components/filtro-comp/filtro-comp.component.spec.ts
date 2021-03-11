import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FiltroCompComponent } from './filtro-comp.component';

describe('FiltroCompComponent', () => {
  let component: FiltroCompComponent;
  let fixture: ComponentFixture<FiltroCompComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FiltroCompComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(FiltroCompComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
