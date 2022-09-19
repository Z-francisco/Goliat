import { Component, OnInit } from '@angular/core';
import { CrudService } from 'src/app/servicios/crud.service';
import { Route } from '@angular/router';


@Component({
  selector: 'app-pedidos',
  templateUrl: './pedidos.component.html',
  styleUrls: ['./pedidos.component.css']
})
export class PedidosComponent implements OnInit {
  Clientes:any;

  constructor(
    private crudService:CrudService
  ) { }

  ngOnInit(): void {
    this.crudService.ObtenerClientes().subscribe(respuesta=>{
      this.Clientes=respuesta;
    });

  }
  BorrarRegistro(id:any,iControl:any){
    var res = confirm("Deseas borrar definitivamente este pedido?");
    if (res==true) {
      this.crudService.BorrarCliente(id).subscribe((respuesta)=>{

            this.Clientes.splice(iControl,1);

          });

      alert("Has borrado exitosamente el pedido")
    }
    else {
      alert("Has cancelado la eliminacion de el Pedido")
    }
    
  }
  

}