import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { CvComponent } from './components/cv/cv.component';


@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet,CvComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'cvAngular';
}
