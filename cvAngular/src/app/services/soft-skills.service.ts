import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environments } from '../../environments/environments';

const apiUrl = environments.apiUrl;

@Injectable({
  providedIn: 'root'
})
export class SoftSkillsService {

  constructor(private http: HttpClient) { }

  getSoftSkillsData(){
    return this.http.get(`${apiUrl}/softskills`);
  }
}
