import { Component, OnInit } from '@angular/core';
import { AlertifyService } from '../../../_core/_services/alertify.service';
import { ReceiveService } from '../../../_core/_services/receive.service';
import { Select2OptionData } from 'ng-select2';
import { Pagination, PaginatedResult } from '../../../_core/_models/pagination';
import { ReceiveInfomationModel } from '../../../_core/_models/receiveInfomation-model';
import { Router } from '@angular/router';
import { TranslateService } from '@ngx-translate/core';
import { ReceiveDetailModel } from '../../../_core/_models/receive-detail-model';
import { Receive } from '../../../_core/_models/receive';
import { ReceiveDetailService } from '../../../_core/_services/receive-detail.service';
import { Category } from '../../../_core/_models/category';

@Component({
  selector: 'app-receive-main',
  templateUrl: './receive-main.component.html',
  styleUrls: ['./receive-main.component.scss']
})
export class ReceiveMainComponent implements OnInit {
  pagination: Pagination = {
    currentPage: 1,
    itemsPerPage: 10,
    totalItems: 1,
    totalPages: 1,
  };
  receives: Receive[];
  receiveDetails: ReceiveDetailModel[] = [];
  categorys: Category;
  isAdd = false;
  warehouseID: '';
  cateID = '';
  disable = false;
  name_LL: number;
  productID: string;
  qty: number;
  showSave: boolean = false;
  public warehouses: Array<Select2OptionData>;
  public products: Array<Select2OptionData>;
  public categories: Array<Select2OptionData>;
  optionsWarehouse = {
    allowClear: true,
    width: "100%"
  };
  optionsProduct = {
    allowClear: true,
    width: "100%"
  };
  optionsCategory = {
    allowClear: true,
    width: "100%"
  }
  constructor(private alertify: AlertifyService,
    private receiveService: ReceiveService,
    private receiveDetailService: ReceiveDetailService,
    public translate: TranslateService,
    private router: Router) {
    translate.addLangs(["vi", "zh"]);
    translate.setDefaultLang("vi");
  }

  ngOnInit() {
    this.loadData();
    this.getAllWarehouse();
  }
  switchLang(lang: string) {
  }
  loadData() {
    this.receiveService.getListAll(this.pagination.currentPage, this.pagination.itemsPerPage)
      .subscribe((res: PaginatedResult<Receive[]>) => {
        this.receives = res.result;
        this.pagination = res.pagination;
      }, (error) => {
        this.alertify.error(error);
      });
  }
  pageChanged(event: any): void {
    this.pagination.currentPage = event.page;
    this.loadData();
  }
  changeWarehouse(e: any): void {
    this.warehouseID = e;
    this.getAllCategory();
  }
  changeCategory(e: any): void {
    this.cateID = e;
    this.getProductByCatID();
  }
  changeProduct(e: any): void {
    this.productID = e;
  }
  getAllWarehouse() {
    this.receiveService.getAllWarehouse().subscribe(res => {
      this.warehouses = res.map(obj => {
        return { id: obj.id.toString(), text: obj.name_LL };
      });
    });
  }
  getAllCategory() {
    if (this.warehouseID !== '' && this.warehouseID !== undefined) {
      this.receiveService.getAllCategory(this.warehouseID).subscribe(res => {
        this.categories = res.map(obj => {
          if (this.translate.currentLang === undefined || this.translate.currentLang === 'vi') {
            return { id: obj.id.toString(), text: obj.name_LL };

          } else if (this.translate.currentLang === 'zh') {
            return { id: obj.id.toString(), text: obj.name_ZW };
          }
        });
      });
    }
  }
  getProductByCatID() {
    if (this.cateID !== '' && this.cateID !== undefined) {
      this.receiveService.getProductByCatID(this.cateID).subscribe(res => {
        this.products = res.map(obj => {
          return { id: obj.id.toString(), text: obj.id + "-" + obj.name }
        });
      });
    }
  }

  // Kiểm tra xem disable hay show button Add
  ngAfterContentChecked() {
    if (this.productID === undefined ||
      this.qty === undefined ||
      this.qty === null ||
      this.qty === 0) {
      this.isAdd = false;
    } else {
      this.isAdd = true;
    }
    if (this.translate.currentLang === undefined || this.translate.currentLang === 'vi') {
      this.receiveService.getAllWarehouse().subscribe(res => {
        this.warehouses = res.map(obj => {
          return { id: obj.id.toString(), text: obj.name_LL };
        });
      });

    } else if (this.translate.currentLang === 'zh') {
      this.receiveService.getAllWarehouse().subscribe(res => {
        this.warehouses = res.map(obj => {
          return { id: obj.id.toString(), text: obj.name_ZW };
        });
      });
    }
  }

  print(e) {
    this.receiveService.changeReceiveID(e.id);
    this.router.navigate(['/receive/manager/print']);
  }
  add() {
    debugger
    let receiveFind = this.receiveDetails.filter(x => x.productID === this.productID
    );
    if (receiveFind.length > 0) {
      receiveFind[0].qty += 1;
    } else {
      let productName = this.products.filter(x => x.id === this.productID)[0].text;
      let nameLL = this.categories.filter(x => x.id === this.cateID)[0].text;
      debugger
      let receiveDetailItem = {
        catID: parseInt(this.cateID),
        productID: this.productID,
        productName: productName,
        qty: this.qty
      };
      if (receiveDetailItem.catID == this.categorys.id) {
        
      }
      this.receiveDetails.push(receiveDetailItem);
    }
    this.showSave = true;
  }
  saveData() {
    if (this.productID === undefined ||
      this.qty === undefined ||
      this.qty === null ||
      this.qty === 0) {
      this.alertify.error("Receive Failed!")
    } else {
      debugger
      this.receiveService.receiveRegister(this.receiveDetails).subscribe(res => {
        if (res.result) {
          this.alertify.success('Receive Successfuly!');
          this.loadData();
        }
      });
      this.receiveDetails.length = 0;
      this.showSave = false;
    }
  }
  removeReceiveItem(i: number) {
    this.receiveDetails.splice(i, 1);
    this.showSave = false;
  }

  detail(receiveId: string) {
    this.receiveDetailService.changeBackUrl('receive');
    this.receiveService.changeReceiveID(receiveId);
    this.router.navigate(['/receive/manager/detail']);
  }
}
