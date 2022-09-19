import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, NgModel } from '@angular/forms';
import { CrudService } from '../servicios/crud.service';

import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-verificar',
  templateUrl: './verificar.component.html',
  styleUrls: ['./verificar.component.css']
})
export class VerificarComponent implements OnInit {
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
        console.log(respuesta);
        this.formularioDeClientes.setValue({ 
          nombre:respuesta[0]["nombre"], 
          direccion:respuesta[0]["direccion"],
          numero:respuesta[0]["numero"],
          municipio:respuesta[0]["municipio"],
          costoTotal:respuesta[0]["costoTotal"],
          numeroaportaciones:[''],
          clientejob:[''],
          nombreesposo:[''],
          esposojob:[''],
          esposonro:[''],
          nionmb:[''],
          niogg:[''],
          escuelanio:[''],
          rf1nmb:[''],
          rf1direcc:[''],
          rf1nro:[''],
          rf1parent:[''],
          rf2nmb:[''],
          rf2direcc:[''],
          rf2nro:[''],
          rf2parent:[''],
          rf3nmb:[''],
          rf3direcc:[''],
          rf3nro:[''],
          rf3parent:[''],
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
        numeroaportaciones:[''],
        clientejob:[''],
        nombreesposo:[''],
        esposojob:[''],
        esposonro:[''],
        nionmb:[''],
        niogg:[''],
        escuelanio:[''],
        rf1nmb:[''],
        rf1direcc:[''],
        rf1nro:[''],
        rf1parent:[''],
        rf2nmb:[''],
        rf2direcc:[''],
        rf2nro:[''],
        rf2parent:[''],
        rf3nmb:[''],
        rf3direcc:[''],
        rf3nro:[''],
        rf3parent:[''],
      }
    )
  }

  ngOnInit(): void {
  }
  EnviarDatos():any{
    console.log(this.formularioDeClientes.value)
    var res = confirm("¿Los datos ingresados son correctos?");
    if (res==true){
    this.crudService.verificarCliente(this.id,this.formularioDeClientes.value).subscribe(()=>{
      this.Routeador.navigateByUrl('/Ventas')
    })
  }
  else {
    alert("Cancelaste la modificación de datos")
  }

  }

}
