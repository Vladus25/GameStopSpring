import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { LoginComponent } from './components/login/login.component';
import { RegisterComponent } from './components/register/register.component';
import { GamesComponent } from './components/games/games.component';
import { PaymentComponent } from './components/payment/payment.component';
import { SuccessComponent } from './components/success/success.component';
import { GameDetailsComponent } from './components/game-details/game-details.component';

const routes: Routes = [
  {path:'Home', component: HomeComponent },
  {path:'Login', component:LoginComponent},
  {path:'Register', component:RegisterComponent},
  {path:'Games', component:GamesComponent},
  {path:'Payment', component:PaymentComponent},
  {path:'Success', component:SuccessComponent},
  {path:'Game/Details/:nome', component:GameDetailsComponent},
  {path: '', redirectTo: 'Home', pathMatch: 'full' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
