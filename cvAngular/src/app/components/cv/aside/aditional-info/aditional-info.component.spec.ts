import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AditionalInfoComponent } from './aditional-info.component';

describe('AditionalInfoComponent', () => {
  let component: AditionalInfoComponent;
  let fixture: ComponentFixture<AditionalInfoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [AditionalInfoComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(AditionalInfoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
