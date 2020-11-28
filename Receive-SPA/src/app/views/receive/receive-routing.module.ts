import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ReceiceDetailComponent } from './receice-detail/receice-detail.component';
import { ReceiveMainComponent } from './receive-main/receive-main.component';
import { ReceivePrintComponent } from './receive-print/receive-print.component';


const routes: Routes = [
  {
    path: "",
    data: {title: "Receive Data"},
    children: [
      {
        path: "",
        component: ReceiveMainComponent,
        data: {title: "Main"},
      },
      {
        path: "print",
        component: ReceivePrintComponent,
        data: {title: "Print"},
      },
      {
        path: "detail",
        component: ReceiceDetailComponent,
        data: {title: "Detail"},
      },
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ReceiveRoutingModule { }
