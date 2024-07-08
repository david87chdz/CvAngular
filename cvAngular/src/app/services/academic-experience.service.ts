import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environments } from '../../environments/environments';
import { AcademicExperience } from '../interfaces/academic-experience';
import { map, Observable } from 'rxjs';

const apiUrl = environments.apiUrl;
@Injectable({
  providedIn: 'root'
})
export class AcademicExperienceService {

  constructor(private http: HttpClient) { }

  getAcademicExperience() : Observable<AcademicExperience[]> {
    return this.http.get<AcademicExperience[]>(`${apiUrl}/academicexperience`)
      .pipe(
        map((data: AcademicExperience[]) => {
          return data.sort((a: any, b: any) => Number(b._id) - Number(a._id));
        })
      );
  }
}
