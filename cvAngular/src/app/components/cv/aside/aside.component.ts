import { Component } from '@angular/core';
import { AditionalInfoComponent } from './aditional-info/aditional-info.component';
import { ContactComponent } from './contact/contact.component';
import { ForeignLanguagesComponent } from './foreign-languages/foreign-languages.component';
import { SoftSkillsComponent } from './soft-skills/soft-skills.component';
import { AcademicExperienceComponent } from './academic-experience/academic-experience.component';
@Component({
  selector: 'app-aside',
  standalone: true,
  imports: [AditionalInfoComponent, ContactComponent, ForeignLanguagesComponent, SoftSkillsComponent, AcademicExperienceComponent],
  templateUrl: './aside.component.html',
  styleUrl: './aside.component.scss'
})
export class AsideComponent {

}
