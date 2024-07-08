import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environments } from '../../environments/environments';
import { Observable } from 'rxjs';
import { Contact } from '../interfaces/contact';

const apiUrl = environments.apiUrl;
@Injectable({
  providedIn: 'root'
})
export class ContactService {

  constructor(private http: HttpClient) { }

  getContactData(): Observable<Contact[]>{
    return this.http.get<Contact[]>(`${apiUrl}/contact`);
  }
}
