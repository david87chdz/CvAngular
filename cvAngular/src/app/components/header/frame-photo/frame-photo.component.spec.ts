import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FramePhotoComponent } from './frame-photo.component';

describe('FramePhotoComponent', () => {
  let component: FramePhotoComponent;
  let fixture: ComponentFixture<FramePhotoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FramePhotoComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FramePhotoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
