import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environments } from '../../environments/environments';

const apiUrl = environments.apiUrl;
@Injectable({
  providedIn: 'root'
})


export class ExperienceService {

  constructor(private http: HttpClient) { }

  getWorkExperience() {
    return this.http.get(`${apiUrl}/workexperience`);
  }

  getAcademicExperience() {
    return this.http.get(`${apiUrl}/academicexperience`);
  }
}
