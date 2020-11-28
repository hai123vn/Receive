import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { TranslateService } from '@ngx-translate/core';
import { ReceiveDetail } from '../../../_core/_models/receive-detail';
import { ReceiveDetailService } from '../../../_core/_services/receive-detail.service';
import { ReceiveService } from '../../../_core/_services/receive.service';

@Component({
  selector: 'app-receice-detail',
  templateUrl: './receice-detail.component.html',
  styleUrls: ['./receice-detail.component.scss']
})
export class ReceiceDetailComponent implements OnInit {
  receiveDetails: ReceiveDetail[] = [];
  backUrl: string;
  receiveId: string;
  constructor(
    private receiveDetailService: ReceiveDetailService,
    private receiveService: ReceiveService,
    public translate: TranslateService,
    private router: Router
  ) {
    translate.addLangs(["vi", "zh"]);
    translate.setDefaultLang("vi");
  }

  ngOnInit() {
    this.receiveService.currentReceiveID.subscribe(res => this.receiveId = res);
    this.receiveDetailService.currentBackUrl.subscribe(res => this.backUrl = res);
    debugger
    this.loadData();
  }

  back() {
    if (this.backUrl === 'receive') {
      this.router.navigate(['/receive/manager']);
    } else if (this.backUrl === 'approval')
      this.router.navigate(['/approval/manager']);
    else if (this.backUrl === 'management')
      this.router.navigate(['/admin/management']);
    else
      this.router.navigate(['/history/main']);
  }
  loadData() {
    this.receiveDetailService.getReceiveDetail(this.receiveId).subscribe(res => {
      console.log(res);
      this.receiveDetails = res;
    })
  }
}
