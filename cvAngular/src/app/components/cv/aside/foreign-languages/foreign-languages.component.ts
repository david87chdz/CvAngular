import { Component } from '@angular/core';
import { LanguagesService } from '../../../../services/languages.service';
import { Language } from '../../../../interfaces/language';

@Component({
  selector: 'app-foreign-languages',
  standalone: true,
  imports: [],
  templateUrl: './foreign-languages.component.html',
  styleUrl: './foreign-languages.component.scss'
})
export class ForeignLanguagesComponent {

  public languagesData: Language[] = [];

  constructor(private languagesService: LanguagesService){
    this.getLanguagesData();
  }


  getLanguagesData(){
    this.languagesService.getLanguagesData().subscribe((data: any) => {
      this.languagesData = data;
    });
  }

}
