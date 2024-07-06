import { Component } from '@angular/core';
import { ExperienceService } from '../../../../services/experience.service';

@Component({
  selector: 'app-academic-experience',
  standalone: true,
  imports: [],
  templateUrl: './academic-experience.component.html',
  styleUrl: './academic-experience.component.scss'
})
export class AcademicExperienceComponent {
  public academicExperiences: any;

  constructor(private experienceService: ExperienceService) {
    this.getAcademicExperience();
   }

  getAcademicExperience() {
    this.experienceService.getAcademicExperience().subscribe((data) => {
      console.log(data);
      this.academicExperiences = data;
    });
  }


}
