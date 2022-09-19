import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { EstadisticasComponent } from './Modulos/estadisticas/estadisticas.component';
import { EstadisticasVentasComponent } from './Modulos/estadisticas-ventas/estadisticas-ventas.component';
import { EstadisticasAlmacenComponent } from './Modulos/estadisticas-almacen/estadisticas-almacen.component';
import { EstadisticasPedidosComponent } from './Modulos/estadisticas-pedidos/estadisticas-pedidos.component';
import { PedidosComponent } from './Gestion/pedidos/pedidos.component';
import { VentasComponent } from './Gestion/ventas/ventas.component';
import { AlmacenComponent } from './Gestion/almacen/almacen.component';
import { InicioDeSesionComponent } from './Verificacion/inicio-de-sesion/inicio-de-sesion.component';
import { CrearPedidoComponent } from './crear-pedido/crear-pedido.component';

import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { EditarClienteComponent } from './editar-cliente/editar-cliente.component';
import { VerificarComponent } from './verificar/verificar.component';
import { CrearVentaComponent } from './crear-venta/crear-venta.component';
import { EditarVentaComponent } from './editar-venta/editar-venta.component'

@NgModule({
  declarations: [
    AppComponent,
    EstadisticasComponent,
    EstadisticasVentasComponent,
    EstadisticasAlmacenComponent,
    EstadisticasPedidosComponent,
    PedidosComponent,
    VentasComponent,
    AlmacenComponent,
    InicioDeSesionComponent,
    CrearPedidoComponent,
    EditarClienteComponent,
    VerificarComponent,
    CrearVentaComponent,
    EditarVentaComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
