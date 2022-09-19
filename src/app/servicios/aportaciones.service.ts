import { Injectable } from '@angular/core';

import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { aportaciones } from './aportaciones';

@Injectable({
  providedIn: 'root'
})
export class AportacionesService {
  api:string= 'http://localhost/Gestion/fechas.php'

  constructor() { }
}
