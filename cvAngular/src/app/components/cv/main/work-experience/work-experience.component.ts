import { Component } from '@angular/core';

import { CommonModule } from '@angular/common';
import { WorkExperience } from '../../../../interfaces/work-experience';
import { WorkExperienceService } from '../../../../services/work-experience.service';


@Component({
  selector: 'app-work-experience',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './work-experience.component.html',
  styleUrl: './work-experience.component.scss',
})
export class WorkExperienceComponent {

  public experience: WorkExperience[] = [];

  constructor(private expeinceService$: WorkExperienceService) {
    this.getExperience();
  }

  getExperience() {
    this.expeinceService$.getWorkExperience().subscribe((data) => {
      console.log(data);
      this.experience = data;
    });
  }
}
