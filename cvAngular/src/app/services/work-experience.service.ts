import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { WorkExperience } from '../interfaces/work-experience';
import { map, Observable } from 'rxjs';
import { environments } from '../../environments/environments';

const apiUrl = environments.apiUrl;
@Injectable({
  providedIn: 'root'
})
export class WorkExperienceService {

  constructor(private http: HttpClient) { }

  getWorkExperience() : Observable<WorkExperience[]>{
    return this.http.get(`${apiUrl}/workexperience`).pipe(
      map((experiences: Object) => (experiences as any[]).sort((a, b) => Number(b._id) - Number(a._id)))
    );
  }

}
