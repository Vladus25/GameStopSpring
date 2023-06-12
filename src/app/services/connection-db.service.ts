import { HttpClient, HttpResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, tap } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ConnectionDBService {

  private baseUrl = 'http://localhost:8080';

  games: any[] = [];

  constructor(private http: HttpClient) { }

  getAllGames(): Observable<any> {
    return this.http.get(`${this.baseUrl}/games/all`);
  }

  getAllGamesResult(): Observable<any> {
    return this.http.get(`${this.baseUrl}/games/all`).pipe(
      tap((response: any) => {
        this.games = response;
      })
    );
  }

  getProduct() {
    return this.games;
  }

  saveCart() {
    localStorage.setItem('cart_items', JSON.stringify(this.games))
  }

  addToCart(addedGame: any) {
    this.games.push(addedGame);
    this.saveCart();
  }

  loadCart() {
    this.games = JSON.parse(localStorage.getItem('cart_items') as any) ||   [];
  }

  productInCart(game: any) {
    return this.games.findIndex((x:any) => x.id === game.id) > -1;
  }

  removeProduct(game: any) {
    const index = this.games.findIndex((x: any) => x.id === game.id);

    if (index > -1) {
      this.games.splice(index, 1);
      this.saveCart();
    }
  }

  clearProducts() {
    localStorage.clear();
  }

  showGameDetails(gameName: string): Observable<any> {
    return this.http.get<any>(`${this.baseUrl}/games/details/${gameName}`);
  }

}
