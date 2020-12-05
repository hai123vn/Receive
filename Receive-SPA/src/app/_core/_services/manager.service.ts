import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { environment } from '../../../environments/environment';
import { BehaviorSubject, Observable } from 'rxjs';
import { PaginatedResult } from '../_models/pagination';
import { ReceiveInfomationModel } from '../_models/receiveInfomation-model';
import { map } from 'rxjs/operators';
import { ReceiveDetail } from '../_models/receive-detail';
import { Receive } from '../_models/receive';

@Injectable({
  providedIn: 'root'
})
export class ManagerService {
  baseUrl = environment.apiUrl;
  constructor(private http: HttpClient) { }
  getListAll(page?, itemsPerPage?): Observable<PaginatedResult<Receive[]>> {
    const paginatedResult: PaginatedResult<Receive[]> = new PaginatedResult<Receive[]>();
    let params = new HttpParams();
    if (page != null && itemsPerPage != null) {
      params = params.append('pageNumber', page);
      params = params.append('pageSize', itemsPerPage);
    }
    return this.http.get<Receive[]>(this.baseUrl + 'manager/getReceives', { observe: 'response', params })
      .pipe(
        map(response => {
          console.log(response);
          paginatedResult.result = response.body;
          if (response.headers.get('Pagination') != null) {
            paginatedResult.pagination = JSON.parse(response.headers.get('Pagination'));
          }
          return paginatedResult;
        }),
      );
  }
  getReceive(receiveID: string): Observable<ReceiveInfomationModel> {
    return this.http.get<ReceiveInfomationModel>(this.baseUrl + 'manager/getReceive/' + receiveID, {});
  }
  getUser(userID: string): Observable<ReceiveInfomationModel> {
    return this.http.get<ReceiveInfomationModel>(this.baseUrl + 'manager/getUserID/' + userID, {});
  }
  search(page?, itemsPerPage?, filterParam?): Observable<PaginatedResult<Receive[]>> {
    const paginatedResult: PaginatedResult<Receive[]> = new PaginatedResult<Receive[]>();
    let params = new HttpParams();
    if (page != null && itemsPerPage != null) {
      params = params.append('pageNumber', page);
      params = params.append('pageSize', itemsPerPage);
    }
    return this.http.post<any>(this.baseUrl + 'manager/search/', filterParam, { observe: 'response', params })
      .pipe(
        map(response => {
          console.log(response);
          paginatedResult.result = response.body;
          if (response.headers.get('Pagination') != null) {
            paginatedResult.pagination = JSON.parse(response.headers.get('Pagination'));
          }
          return paginatedResult;
        }),
      );
  }
  acceptReceive(receiveID: string): Observable<any> {
    return this.http.get<any>(this.baseUrl + 'manager/accept/' + receiveID, {});
  }
  declineReceive(receiveID: string): Observable<any> {
    return this.http.get<any>(this.baseUrl + 'manager/decline/' + receiveID, {});
  }
  importExcel(): Observable<any> {
    return this.http.get<any>(this.baseUrl + 'manager/importExcel/', {});
  }
  editReceive(model: ReceiveDetail[]): Observable<any> {
    model.forEach(item => item.catID = +item.catID);
    debugger
    return this.http.post<any>(this.baseUrl + 'manager/editReceive', model, {});
  }
}
