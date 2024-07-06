import { Component } from '@angular/core';
import { AditionalInfoComponent } from './aditional-info/aditional-info.component';
import { ContactComponent } from './contact/contact.component';
import { ForeignLanguagesComponent } from './foreign-languages/foreign-languages.component';
import { SoftSkillsComponent } from './soft-skills/soft-skills.component';

@Component({
  selector: 'app-aside',
  standalone: true,
  imports: [AditionalInfoComponent, ContactComponent, ForeignLanguagesComponent, SoftSkillsComponent],
  templateUrl: './aside.component.html',
  styleUrl: './aside.component.scss'
})
export class AsideComponent {

}
