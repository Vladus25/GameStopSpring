import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ConnectionDBService } from 'src/app/services/connection-db.service';

@Component({
  selector: 'app-game-details',
  templateUrl: './game-details.component.html',
  styleUrls: ['./game-details.component.css']
})
export class GameDetailsComponent {
  gameName!: string;
  Game!: any;

  constructor(private http: ConnectionDBService, private route: ActivatedRoute) {}

  ngOnInit() {
    this.route.params.subscribe(params => {
      this.gameName = params['nome'];
      this.showGameDetails(this.gameName);
    });
  }

  showGameDetails(gameName: string) {
    this.http.showGameDetails(gameName).subscribe(data => {
      this.Game = data;
      console.log(this.Game);
    });
  }
}
