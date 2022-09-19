import { Injectable } from '@angular/core';

import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Cliente } from './Clientes';

@Injectable({
  providedIn: 'root'
})
export class CrudService {
  API:string = 'http://localhost/Gestion/';
  API2:string= 'http://localhost/GestionVentas/';
  constructor(private clienteHttp:HttpClient) { }

  AgregarCliente(datosCliente:Cliente):Observable<any>{
    return this.clienteHttp.post(this.API+"?insertar=",datosCliente);
    
  }

  AgregarClientedos(datosCliente:Cliente):Observable<any>{
    return this.clienteHttp.post(this.API2+"?insertar=",datosCliente);
    
  }

  ObtenerClientes(){
    return this.clienteHttp.get(this.API);
  }

  ObtenerCliente(id:any):Observable<any>{
    return this.clienteHttp.get(this.API+"?consultar="+id);
  }

  ObtenerClientesdos(){
    return this.clienteHttp.get(this.API2);
  }
  ObtenerClientedos(id:any):Observable<any>{
    return this.clienteHttp.get(this.API2+"?consultar="+id);
  }

  BorrarCliente(id:any):Observable<any>{
    return this.clienteHttp.get(this.API+"?borrar="+id);
  }

  BorrarClientedos(id:any):Observable<any>{
    return this.clienteHttp.get(this.API2+"?borrar="+id);
  }

  ActualizarCliente(id:any,datosCliente:Cliente):Observable<any>{
    return this.clienteHttp.post(this.API+"?actualizar="+id,datosCliente);
  }

  ActualizarClientedos(id:any,datosCliente:Cliente):Observable<any>{
    return this.clienteHttp.post(this.API2+"?actualizar="+id,datosCliente);
  }

  verificarCliente(id:any,datosCliente:Cliente):Observable<any>{
    return this.clienteHttp.post(this.API+"?verificar="+id,datosCliente);
  }
}
