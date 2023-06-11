import { HttpClient, HttpResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, tap } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ConnectionDBService {

  private baseUrl = 'http://localhost:8080';

  constructor(private http: HttpClient) { }

  getAllGames(): Observable<any> {
    return this.http.get(`${this.baseUrl}/games/all`);
  }

}
