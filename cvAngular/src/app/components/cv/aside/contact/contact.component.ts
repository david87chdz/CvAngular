import { Component } from '@angular/core';
import { ContactService } from '../../../../services/contact.service';
import { Contact } from '../../../../interfaces/contact';

@Component({
  selector: 'app-contact',
  standalone: true,
  imports: [],
  templateUrl: './contact.component.html',
  styleUrl: './contact.component.scss'
})
export class ContactComponent {
  public contactData: Contact[] = [];

  constructor (private contactService: ContactService){
    this.getContactData();
  }

  getContactData(){
    this.contactService.getContactData().subscribe((data: any) => {
      this.contactData = data;
    });
  }
}
