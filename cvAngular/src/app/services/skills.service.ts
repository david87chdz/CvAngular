import { Injectable } from '@angular/core';
import { environments } from '../../environments/environments';
import { HttpClient } from '@angular/common/http';

const apiUrl = environments.apiUrl;

@Injectable({
  providedIn: 'root'
})
export class SkillsService {

  constructor(private http: HttpClient) { }

  getSkillsData(){
    return this.http.get(`${apiUrl}/skills`);
  }
}
