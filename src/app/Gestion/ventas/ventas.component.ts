import { Component, OnInit } from '@angular/core';
import { CrudService } from 'src/app/servicios/crud.service';

@Component({
  selector: 'app-ventas',
  templateUrl: './ventas.component.html',
  styleUrls: ['./ventas.component.css']
})
export class VentasComponent implements OnInit {

  Clientes:any;

  constructor(
    private crudService:CrudService
  ) { }

  ngOnInit(): void {
    this.crudService.ObtenerClientesdos().subscribe(respuesta=>{
      this.Clientes=respuesta;
    })
  }

  BorrarRegistrodos(id:any,iControl:any){
    var res = confirm("Deseas borrar definitivamente este pedido?");
    if (res==true) {
      this.crudService.BorrarClientedos(id).subscribe((respuesta)=>{

            this.Clientes.splice(iControl,1);

          });

      alert("Has borrado exitosamente el pedido")
    }
    else {
      alert("Has cancelado la eliminacion de el Pedido")
    }
    
  }
}