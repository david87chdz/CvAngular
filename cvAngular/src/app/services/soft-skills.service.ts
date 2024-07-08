import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environments } from '../../environments/environments';
import { Observable } from 'rxjs';
import { SoftSkill } from '../interfaces/soft-skill';

const apiUrl = environments.apiUrl;

@Injectable({
  providedIn: 'root'
})
export class SoftSkillsService {

  constructor(private http: HttpClient) { }

  getSoftSkillsData(): Observable<SoftSkill[]>{
    return this.http.get<SoftSkill[]>(`${apiUrl}/softskills`);
  }
}
