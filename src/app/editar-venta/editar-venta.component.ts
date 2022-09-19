import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, NgModel } from '@angular/forms';
import { CrudService } from '../servicios/crud.service';

import { Router, ActivatedRoute } from '@angular/router';


@Component({
  selector: 'app-editar-venta',
  templateUrl: './editar-venta.component.html',
  styleUrls: ['./editar-venta.component.css']
})
export class EditarVentaComponent implements OnInit {

  formularioDeventas:FormGroup;
  id:any;


  constructor(private activeRoute:ActivatedRoute,
    private crudService:CrudService,
    public formulario:FormBuilder,
    private Routeador:Router
  ) { 
    this.id=this.activeRoute.snapshot.paramMap.get('id');

    this.crudService.ObtenerClientedos(this.id).subscribe(
      respuesta=>{
        console.log(respuesta);
        this.formularioDeventas.setValue({ 
          nombre:respuesta[0]["nombre"], 
          direccion:respuesta[0]["direccion"],
          numero:respuesta[0]["numero"],
          municipio:respuesta[0]["municipio"],
          costoTotal:respuesta[0]["costoTotal"],
          numeroaportaciones:respuesta[0]["numeroaportaciones"],
          clientejob:respuesta[0]["clientejob"],
          nombreesposo:respuesta[0]["nombreesposo"],
          esposojob:respuesta[0]["esposojob"],
          esposonro:respuesta[0]["esposonro"],
          niñonmb:respuesta[0]["niñonmb"],
          niñogg:respuesta[0]["niñogg"],
          escuelaniño:respuesta[0]["escuelaniño"],
          rf1nmb:respuesta[0]["rf1nmb"],
          rf1direcc:respuesta[0]["rf1direcc"],
          rf1nro:respuesta[0]["rf1nro"],
          rf1parent:respuesta[0]["rf1parent"],
          rf2nmb:respuesta[0]["rf2nmb"],
          rf2direcc:respuesta[0]["rf2direcc"],
          rf2nro:respuesta[0]["rf2nro"],
          rf2parent:respuesta[0]["rf2parent"],
          rf3nmb:respuesta[0]["rf3nmb"],
          rf3direcc:respuesta[0]["rf3direcc"],
          rf3nro:respuesta[0]["rf3nro"],
          rf3parent:respuesta[0]["rf3parent"],
        });
      }
    );
    this.formularioDeventas=this.formulario.group(
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
        niñonmb:[''],
        niñogg:[''],
        escuelaniño:[''],
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
    
    var res = confirm("¿Los datos ingresados son correctos?");
    if (res==true){
    this.crudService.ActualizarClientedos(this.id,this.formularioDeventas.value).subscribe(()=>{
      this.Routeador.navigateByUrl('/Ventas')
    })
  }
  else {
    alert("Cancelaste la modificación de datos")
  }

  }

}
