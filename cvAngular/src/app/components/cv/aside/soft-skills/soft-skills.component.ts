import { Component } from '@angular/core';
import { SoftSkillsService } from '../../../../services/soft-skills.service';
import { SoftSkill } from '../../../../interfaces/soft-skill';

@Component({
  selector: 'app-soft-skills',
  standalone: true,
  imports: [],
  templateUrl: './soft-skills.component.html',
  styleUrl: './soft-skills.component.scss'
})
export class SoftSkillsComponent {
  public softSkillsData: SoftSkill[] = [];

  constructor(private softSkillsService: SoftSkillsService){
    this.getSoftSkillsData();
  }

  getSoftSkillsData(){
    this.softSkillsService.getSoftSkillsData().subscribe((data: any) => {
      this.softSkillsData = data;
    }
  )}
}
