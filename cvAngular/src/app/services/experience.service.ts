import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environments } from '../../environments/environments';
import { map } from 'rxjs';

const apiUrl = environments.apiUrl;
@Injectable({
  providedIn: 'root'
})


export class ExperienceService {

  constructor(private http: HttpClient) { }

  getWorkExperience() {
    return this.http.get(`${apiUrl}/workexperience`).pipe(
      map((experiences: Object) => (experiences as any[]).sort((a, b) => Number(b._id) - Number(a._id)))
    );
  }

  getAcademicExperience() {
    return this.http.get(`${apiUrl}/academicexperience`);
  }
}
