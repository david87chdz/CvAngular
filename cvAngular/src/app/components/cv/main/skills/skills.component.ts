import { Component } from '@angular/core';
import { SkillsService } from '../../../../services/skills.service';
import { Skill } from '../../../../interfaces/skill';
import { map } from 'rxjs';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-skills',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './skills.component.html',
  styleUrl: './skills.component.scss',
})
export class SkillsComponent {
  private skillsData: Skill[] = [];
  public languages: Skill[] = [];
  public frontend: Skill[] = [];
  public backend: Skill[] = [];
  public databases: Skill[] = [];
  public tools: Skill[] = [];
  public versionControl: Skill[] = [];
  public markupLanguages: Skill[] = [];
  constructor(private skillsService: SkillsService) {
    this.getSkillsData();
  }

  getSkillsData() {
    this.skillsService.getSkillsData().subscribe((data: any) => {
      map((skill: Skill) => {
        if (skill.name === 'Spring boot') {
          skill.name = 'spring';
        } else if (skill.name === 'PosTgreSql') {
          skill.name = 'postgres';
        } else {
          skill.name = skill.name.toLocaleLowerCase();
        }
        return {
          name: skill.name,
          level: skill.level,
        };
      });
      this.skillsData = data;
      this.mapSkills(this.skillsData);
    });
  }

  mapSkills(skills: Skill[]) {
    // Primero, realizamos el mapeo y almacenamos el resultado en una variable
    const mappedSkills = skills.map((skill: Skill) => {
      if (skill.name === 'Spring boot') {
        skill.name = 'spring';
      } else if (skill.name === 'PostgreSql') {
        skill.name = 'postgres';
      } else {
        skill.name = skill.name.toLocaleLowerCase();
      }
      return {
        name: skill.name,
        level: skill.level,
      };
    });

    // Luego, llamamos a filterSkills
    this.filterSkills(this.skillsData);

    // Finalmente, retornamos el resultado del mapeo
    return mappedSkills;
  }

  filterSkills(skills: Skill[]) {
    skills.forEach((skill: Skill) => {
      switch (true) {
        case skill.type.includes('programación'):
          this.languages.push(skill);
          break;
        case skill.type.includes('frontend'):
          this.frontend.push(skill);
          break;
        case skill.type.includes('backend'):
          this.backend.push(skill);
          break;
        case skill.type.includes('datos'):
          this.databases.push(skill);
          break;
        case skill.type.includes('desarrollo'):
          this.tools.push(skill);
          break;
        case skill.type.includes('versiones'):
          this.versionControl.push(skill);
          break;
        case skill.type.includes('marcado'):
          this.markupLanguages.push(skill);
          break;
        default:
          console.log('No se ha encontrado el tipo de skill');
      }
    });
  }
}
