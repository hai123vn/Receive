import { Component, OnInit } from '@angular/core';
import { HistoryService } from '../../../_core/_services/history.service';
import { Pagination, PaginatedResult } from '../../../_core/_models/pagination';
import { ReceiveInfomationModel } from '../../../_core/_models/receiveInfomation-model';
import { AlertifyService } from '../../../_core/_services/alertify.service';
import { BsDatepickerConfig } from 'ngx-bootstrap/datepicker';
import { FunctionUtility } from '../../../_core/_utility/function-utility';
import { TranslateService } from '@ngx-translate/core';
import { Router } from '@angular/router';
import { ReceiveDetailService } from '../../../_core/_services/receive-detail.service';
import { ReceiveService } from '../../../_core/_services/receive.service';

@Component({
  selector: 'app-history-main',
  templateUrl: './history-main.component.html',
  styleUrls: ['./history-main.component.scss']
})
export class HistoryMainComponent implements OnInit {
  user: any = JSON.parse(localStorage.getItem('user'));
  userID: '';
  time_start: string;
  time_end: string;
  bsConfig: Partial<BsDatepickerConfig>;
  historys: ReceiveInfomationModel[] = [];
  pagination: Pagination = {
    currentPage: 1,
    itemsPerPage: 10,
    totalItems: 1,
    totalPages: 1,
  };
  constructor(private historyService: HistoryService,
    private alertify: AlertifyService,
    private translate: TranslateService,
    private receiveDetailService: ReceiveDetailService,
    private router: Router,
    private functionUtility: FunctionUtility,
    private receiveService: ReceiveService) { }

  ngOnInit() {
    this.loadData();
  }
  loadData() {
    this.historyService.getListAll(this.pagination.currentPage, this.pagination.itemsPerPage)
      .subscribe((res: PaginatedResult<ReceiveInfomationModel[]>) => {
        this.historys = res.result;
        this.changeNameDepartment();
        this.pagination = res.pagination;
      }, (error) => {
        this.alertify.error(error);
      });
  }
  pageChanged(event: any): void {
    this.pagination.currentPage = event.page;
    this.loadData();
  }
  search() {
    let isSearch = true;
    let param;
    if (this.time_start !== undefined && this.time_start !== '' && this.time_start !== null) {
      if (this.time_end === undefined || this.time_end === '' || this.time_end === null) {
        debugger
        isSearch = false;
        this.alertify.error('Xin chọn ngày kết thúc');
      } else {
        let form_date = this.functionUtility.getDateFormat(new Date(this.time_start));
        let to_date = this.functionUtility.getDateFormat(new Date(this.time_end));
        debugger
        param = {
          userID: this.userID,
          from_Date: form_date,
          to_Date: to_date,
        }
      }
    } else if (this.time_start === undefined || this.time_start === '' || this.time_start === null) {
      if (this.time_end !== undefined && this.time_end !== '' && this.time_end !== null) {
        isSearch = false;
        this.alertify.error('Xin chọn ngày bắt đầu');
      } else {
        param = {
          userID: this.userID,
          from_Date: '',
          to_Date: '',
        }
      }
    }
    if (isSearch) {
      this.pagination.currentPage = 1;
      this.historyService.search(this.pagination.currentPage, this.pagination.itemsPerPage, param)
        .subscribe((res: PaginatedResult<ReceiveInfomationModel[]>) => {
          console.log(res);
          this.historys = res.result;
          this.pagination = res.pagination;
        }, error => {
          this.alertify.error(error);
        });
    }
  }
  changeNameDepartment() {
    console.log(this.historys);
    if (this.translate.currentLang === 'zh') {
      this.historys = this.historys.map(obj => {
        obj.depNameShow = obj.depID + ' - ' + obj.depName_ZW;
        return obj;
      });
    } else if (this.translate.currentLang === undefined || this.translate.currentLang === 'vi') {
      console.log(this.historys);
      if(this.historys.length >0) {
        this.historys = this.historys.map(obj => {
          obj.depNameShow = obj.depID + ' - ' + obj.depName;
          return obj;
        });
      }
    }
  }
  ngAfterContentChecked() {
    this.changeNameDepartment();
  }

  detail(receiveID: string) {
    this.receiveDetailService.changeBackUrl('history');
    this.receiveService.changeReceiveID(receiveID); 
    this.router.navigate(['/receive/manager/detail']);
  }
}
