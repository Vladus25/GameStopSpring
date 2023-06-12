import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ConnectionDBService } from 'src/app/services/connection-db.service';

@Component({
  selector: 'app-success',
  templateUrl: './success.component.html',
  styleUrls: ['./success.component.css']
})
export class SuccessComponent {

  transactionData: any;
  constructor(private router: Router, private http: ConnectionDBService, private route: ActivatedRoute) {}

  ngOnInit() {
    this.route.queryParams.subscribe(params => {
      this.transactionData = JSON.parse(params['transactionData']);
      console.log('Transaction Data:', this.transactionData);
    });
  }

  goBackToHome() {
    this.http.clearProducts();
    this.router.navigate(['/']);
  }
}
