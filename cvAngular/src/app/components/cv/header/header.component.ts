import { Component } from '@angular/core';
import { FramePhotoComponent } from './frame-photo/frame-photo.component';
import { DescriptionComponent } from './description/description.component';

@Component({
  selector: 'app-header',
  standalone: true,
  imports: [FramePhotoComponent, DescriptionComponent],
  templateUrl: './header.component.html',
  styleUrl: './header.component.scss'
})
export class HeaderComponent {

}
