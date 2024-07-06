import { Component } from '@angular/core';
import { ExperienceService } from '../../../services/experience.service';


@Component({
  selector: 'app-work-experience',
  standalone: true,
  imports: [],
  templateUrl: './work-experience.component.html',
  styleUrl: './work-experience.component.scss',
})
export class WorkExperienceComponent {

  public experience: any;

  constructor(private expeinceService$: ExperienceService) {
    this.getExperience();
  }

  getExperience() {
    this.expeinceService$.getWorkExperience().subscribe((data) => {
      console.log(data);
      this.experience = data;
    });
  }
}
