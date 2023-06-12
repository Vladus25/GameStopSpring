import { Component, Inject } from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material/dialog';
import { Router } from '@angular/router';
import { ConnectionDBService } from 'src/app/services/connection-db.service';

@Component({
  selector: 'app-cart-dialog',
  templateUrl: './cart-dialog.component.html',
  styleUrls: ['./cart-dialog.component.css']
})
export class CartDialogComponent {
  Games: any[] = [];
  subTotal!: any;

  constructor(private http: ConnectionDBService, private router: Router, private dialogRef: MatDialogRef<CartDialogComponent>,  @Inject(MAT_DIALOG_DATA) private data: any)
  {
    this.Games = { ...data };
  }

  ngOnInit() {
    this.http.loadCart();
    this.Games = this.http.getProduct();
    console.log(this.Games);
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
    this.dialogRef.close();
    this.router.navigate(['/Payment']);
  }

  cancel() {
    this.dialogRef.close();
    window.location.reload();
  }
}
