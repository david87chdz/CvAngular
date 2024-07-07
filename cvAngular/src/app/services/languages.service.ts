import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environments } from '../../environments/environments';

const apiUrl = environments.apiUrl;
@Injectable({
  providedIn: 'root'
})
export class LanguagesService {

  constructor(private http: HttpClient) { }

  getLanguagesData(){
    return this.http.get(`${apiUrl}/languages`);
  }
}
