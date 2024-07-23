import { Component } from '@angular/core';
import { AcademicExperience } from '../../../../interfaces/academic-experience';
import { CommonModule } from '@angular/common';
import { AcademicExperienceService } from '../../../../services/academic-experience.service';

@Component({
  selector: 'app-academic-experience',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './academic-experience.component.html',
  styleUrl: './academic-experience.component.scss'
})
export class AcademicExperienceComponent {
  public academicExperiences: AcademicExperience[] = [];

  constructor(private academicService: AcademicExperienceService) {
    this.getAcademicExperience();
   }

  getAcademicExperience() {
    this.academicService.getAcademicExperience().subscribe((data) => {
      console.log(data);
      this.academicExperiences = data;
    });
  }


}
