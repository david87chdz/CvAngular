import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environments } from '../../environments/environments';

const apiUrl = environments.apiUrl;
@Injectable({
  providedIn: 'root'
})
export class ContactService {

  constructor(private http: HttpClient) { }

  getContactData(){
    return this.http.get(`${apiUrl}/contact`);
  }
}
