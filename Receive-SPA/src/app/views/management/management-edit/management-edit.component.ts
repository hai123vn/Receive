import { Component, OnInit } from "@angular/core";
import { ActivatedRoute, Router } from "@angular/router";
import { TranslateService } from '@ngx-translate/core';
import { Select2OptionData } from 'ng-select2';
import { ReceiveDetail } from '../../../_core/_models/receive-detail';
import { AlertifyService } from "../../../_core/_services/alertify.service";
import { ManagerService } from "../../../_core/_services/manager.service";
import { ProductService } from '../../../_core/_services/product.service';
import { ReceiveDetailService } from '../../../_core/_services/receive-detail.service';
import { ReceiveService } from '../../../_core/_services/receive.service';

@Component({
  selector: "app-management-edit",
  templateUrl: "./management-edit.component.html",
  styleUrls: ["./management-edit.component.scss"],
})
export class ManagementEditComponent implements OnInit {
  receiveId: string;
  receiveDetails: ReceiveDetail[] = [];
  product: any = {};
  productID: string;
  cateID = '';
  public categories: Array<Select2OptionData>;
  public products: Array<Select2OptionData>;
  optionsCategory = {
    allowClear: true,
    width: "100%"
  };
  optionsProduct = {
    allowClear: true,
    width: "100%"
  };
  constructor(
    private managerService: ManagerService,
    private receiveDetailService: ReceiveDetailService,
    public translate: TranslateService,
    private alertify: AlertifyService,
    private productService: ProductService,
    private route: ActivatedRoute,
    private receiveService: ReceiveService,
    private router: Router) { }

  ngOnInit() {
    this.receiveId = this.route.snapshot.params["receiveId"];
    if (this.receiveId !== null && this.receiveId !== undefined || this.receiveId !== '') {
      this.getAllCategory();
      this.getAllProduct();
      this.getData();
    }
  }
  getData() {
    this.receiveDetailService.getReceiveDetail(this.receiveId).subscribe(res => {
      this.receiveDetails = res;
      console.log(res);
    });
  }

  getAllCategory() {
    this.productService.getAllCategories().subscribe(res => {
      this.categories = res.map(obj => {
        return { id: obj.id.toString(), text: obj.name_LL }
      });
    })
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

  getAllProduct() {
    this.productService.getAllProduct().subscribe(res => {
      this.products = res.map(obj => {
        return { id: obj.id.toString(), text: obj.id + "-" + obj.name }
      });
    });
  }

  changedCategory(e: any): void {
    this.cateID = e;
  }

  changedProduct(e: any): void {
    this.productID = e;
  }

  save() {
    this.managerService.editReceive(this.receiveDetails).subscribe((res) => {
      this.alertify.success("Edit success !!");
      this.router.navigate(["/admin/management"]);
    }, error => {
      this.alertify.error("Edit error !!!");
    });
  }
  cancel() {
    this.getData();
  }
  back() {
    this.router.navigate(["/admin/management"]);
  }
}
