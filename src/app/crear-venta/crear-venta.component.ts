import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Form } from '@angular/forms';
import { CrudService } from '../servicios/crud.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-crear-venta',
  templateUrl: './crear-venta.component.html',
  styleUrls: ['./crear-venta.component.css']
})
export class CrearVentaComponent implements OnInit {

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
    });
  }

  ngOnInit(): void {
  }

  EnviarDatos():any {
    this.crudService.AgregarClientedos(this.formularioDeClientes.value).subscribe(()=>{
      this.Router.navigateByUrl('/Ventas');
    })

  }

}
