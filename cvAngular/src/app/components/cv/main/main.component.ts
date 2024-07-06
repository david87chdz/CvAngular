import { Component } from '@angular/core';
import { AcademicExperienceComponent } from './academic-experience/academic-experience.component';
import { WorkExperienceComponent } from './work-experience/work-experience.component';
import { SkillsComponent } from './skills/skills.component';

@Component({
  selector: 'app-main',
  standalone: true,
  imports: [AcademicExperienceComponent, WorkExperienceComponent, SkillsComponent],
  templateUrl: './main.component.html',
  styleUrl: './main.component.scss'
})
export class MainComponent {

}
