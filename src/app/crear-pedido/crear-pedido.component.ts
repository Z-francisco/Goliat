import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Form } from '@angular/forms';
import { CrudService } from '../servicios/crud.service';
import { Router, ActivatedRoute } from '@angular/router';
@Component({
  selector: 'app-crear-pedido',
  templateUrl: './crear-pedido.component.html',
  styleUrls: ['./crear-pedido.component.css']
})
export class CrearPedidoComponent implements OnInit {

  formularioDeClientes:FormGroup;

  constructor( 
    public formulario:FormBuilder,
    private crudService:CrudService,
    private Router:Router
     ) { 

    this.formularioDeClientes = this.formulario.group({
      nombre:[''],
      direccion:[''],
      numero:[''],
      municipio:[''],
      costoTotal:[''],
      
    });
  }

  ngOnInit(): void {
  }

  confirmarPedido():any {
    this.crudService.AgregarCliente(this.formularioDeClientes.value).subscribe(()=>{
      this.Router.navigateByUrl('/Pedidos')
    })

  }

}
