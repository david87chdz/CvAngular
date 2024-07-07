import { Component } from '@angular/core';
import { SkillsService } from '../../../../services/skills.service';

@Component({
  selector: 'app-skills',
  standalone: true,
  imports: [],
  templateUrl: './skills.component.html',
  styleUrl: './skills.component.scss'
})
export class SkillsComponent {
  public skillsData: any;

  constructor(private skillsService: SkillsService){
    this.getSkillsData();
  }


  getSkillsData(){
    this.skillsService.getSkillsData().subscribe((data: any) => {
      this.skillsData = data;
    });
  }
}
