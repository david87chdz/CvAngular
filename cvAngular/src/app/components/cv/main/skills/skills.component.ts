import { Component } from '@angular/core';
import { SkillsService } from '../../../../services/skills.service';
import { Skill } from '../../../../interfaces/skill';

@Component({
  selector: 'app-skills',
  standalone: true,
  imports: [],
  templateUrl: './skills.component.html',
  styleUrl: './skills.component.scss'
})
export class SkillsComponent {
  public skillsData: Skill[] = [];

  constructor(private skillsService: SkillsService){
    this.getSkillsData();
  }


  getSkillsData(){
    this.skillsService.getSkillsData().subscribe((data: any) => {
      this.skillsData = data;
      this.mapSkills(this.skillsData);
    });
  }

  mapSkills(skills: Skill[]){
    return skills.map((skill: Skill) => {
    
      if(skill.name === 'Spring boot'){
        skill.name = 'spring';
      }else if(skill.name === 'PosTgreSql'){
        skill.name = 'postgres';
      } 
      else{
        skill.name= skill.name.toLocaleLowerCase();
      }
      return {
        name: skill.name,
        level: skill.level
      }
    });
  }
}
