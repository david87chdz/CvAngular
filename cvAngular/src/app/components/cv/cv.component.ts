import { Component } from '@angular/core';
import { AsideComponent } from './aside/aside.component';
import { HeaderComponent } from './header/header.component';
import { MainComponent } from './main/main.component';

@Component({
  selector: 'app-cv',
  standalone: true,
  imports: [AsideComponent, HeaderComponent, MainComponent],
  templateUrl: './cv.component.html',
  styleUrl: './cv.component.scss'
})
export class CvComponent {

}
