import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environments } from '../../environments/environments';
import { Observable } from 'rxjs';
import { Language } from '../interfaces/language';

const apiUrl = environments.apiUrl;
@Injectable({
  providedIn: 'root'
})
export class LanguagesService {

  constructor(private http: HttpClient) { }

  getLanguagesData(): Observable<Language[]>{
    return this.http.get<Language[]>(`${apiUrl}/languages`);
  }
}
