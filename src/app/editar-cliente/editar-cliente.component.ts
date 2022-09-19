import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, NgModel } from '@angular/forms';
import { CrudService } from '../servicios/crud.service';

import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-editar-cliente',
  templateUrl: './editar-cliente.component.html',
  styleUrls: ['./editar-cliente.component.css']
})
export class EditarClienteComponent implements OnInit {
  formularioDeClientes:FormGroup;
  id:any;


  constructor(
    private activeRoute:ActivatedRoute,
    private crudService:CrudService,
    public formulario:FormBuilder,
    private Routeador:Router
  ) { 
    this.id=this.activeRoute.snapshot.paramMap.get('id');

    this.crudService.ObtenerCliente(this.id).subscribe(
      respuesta=>{
        console.log(this.id)
        this.formularioDeClientes.setValue({ 
          nombre:respuesta[0]["nombre"], 
          direccion:respuesta[0]["direccion"],
          numero:respuesta[0]["numero"],
          municipio:respuesta[0]["municipio"],
          costoTotal:respuesta[0]["costoTotal"],
        });
      }
    );
    this.formularioDeClientes=this.formulario.group(
      {
        nombre:[''],
        direccion:[''],
        numero:[''],
        municipio:[''],
        costoTotal:[''],
      }
    )
  }

  ngOnInit(): void {
  }

  EnviarDatos():any{
    var res = confirm("¿Los datos ingresados son correctos?");
    if (res==true){
    this.crudService.ActualizarCliente(this.id,this.formularioDeClientes.value).subscribe(()=>{
      this.Routeador.navigateByUrl('/Pedidos')
    })
  }
  else {
    alert("Cancelaste la modificación de datos")
  }

  }

}
