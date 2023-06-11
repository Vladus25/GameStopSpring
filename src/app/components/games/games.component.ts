import { Component } from '@angular/core';
import { ConnectionDBService } from 'src/app/services/connection-db.service';

@Component({
  selector: 'app-games',
  templateUrl: './games.component.html',
  styleUrls: ['./games.component.css']
})
export class GamesComponent {
  GameAll:any;

  constructor(private http: ConnectionDBService) { }

  ngOnInit(){
    this.getAllGames();
  }

  getAllGames() {
    this.http. getAllGames().subscribe(data => {
      this.GameAll = data;
    });
  }
}
