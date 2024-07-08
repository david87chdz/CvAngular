import { Injectable } from '@angular/core';
import { environments } from '../../environments/environments';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Skill } from '../interfaces/skill';

const apiUrl = environments.apiUrl;

@Injectable({
  providedIn: 'root'
})
export class SkillsService {

  constructor(private http: HttpClient) { }

  getSkillsData(): Observable<Skill[]>{
    return this.http.get<Skill[]>(`${apiUrl}/skills`);
  }
}
