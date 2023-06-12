import { Component } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { Router } from '@angular/router';
import { ConnectionDBService } from 'src/app/services/connection-db.service';
import { CartDialogComponent } from '../cart-dialog/cart-dialog.component';

@Component({
  selector: 'app-games',
  templateUrl: './games.component.html',
  styleUrls: ['./games.component.css']
})
export class GamesComponent {
  GameAll!: any[];
  Games: any[] = [];
  subTotal!: any;
  cartItemCount: number = 0;

  constructor(private http: ConnectionDBService, private router: Router, private dialog: MatDialog) { }

  ngOnInit() {
    this.getAllGames();
    this.http.getAllGamesResult();
    this.http.loadCart();
    this.Games = [...this.http.getProduct()];
    this.cartItemCount = this.Games.length;
  }

  showGameDetails(gameName: string) {
    // this.http.showGameDetails(gameName);
    this.router.navigate(['/Game/Details', gameName]);
  }

  getAllGames() {
    this.http.getAllGames().subscribe(data => {
      this.GameAll = data;
    });
  }

  openCartDialog() {
    this.dialog.open(CartDialogComponent, {
      width: '65%',
      maxHeight: '80vh',
    });
  }

  //Add Game to Cart
  addToCart(game: any) {
    if (!this.http.productInCart(game)) {
      game.quantity = 1;
      this.http.addToCart(game);
      this.Games = [...this.http.getProduct()];
      this.subTotal = game.prezzo;
      this.cartItemCount = this.Games.length;
    }
  }

  //Remove a Game from Cart
  removeFromCart(game: any) {
    this.http.removeProduct(game);
    this.Games = this.http.getProduct();
  }

  //Calculate Total
  get total() {
    return this.Games?.reduce(
      (sum, game) => ({
        quantity: 1,
        price: sum.price + game.quantity * game.prezzo,
      }),
      { quantity: 1, price: 0 }
    ).price;
  }

  checkout() {
    localStorage.setItem('cart_total', JSON.stringify(this.total));
    this.router.navigate(['/Payment']);
  }


}
