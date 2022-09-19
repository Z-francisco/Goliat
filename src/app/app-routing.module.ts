import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';


import { EstadisticasComponent } from './Modulos/estadisticas/estadisticas.component';
import { EstadisticasAlmacenComponent } from './Modulos/estadisticas-almacen/estadisticas-almacen.component';
import { EstadisticasPedidosComponent } from './Modulos/estadisticas-pedidos/estadisticas-pedidos.component';
import { EstadisticasVentasComponent } from './Modulos/estadisticas-ventas/estadisticas-ventas.component';
import { InicioDeSesionComponent } from './Verificacion/inicio-de-sesion/inicio-de-sesion.component';
import { AlmacenComponent } from './Gestion/almacen/almacen.component';
import { PedidosComponent } from './Gestion/pedidos/pedidos.component';
import { VentasComponent } from './Gestion/ventas/ventas.component';
import { EditarClienteComponent } from './editar-cliente/editar-cliente.component';
import { CrearPedidoComponent } from './crear-pedido/crear-pedido.component';
import { VerificarComponent } from './verificar/verificar.component';
import { CrearVentaComponent } from './crear-venta/crear-venta.component';
import { EditarVentaComponent } from './editar-venta/editar-venta.component';


const routes: Routes = [
  {path: '', pathMatch:"full", redirectTo:'Estadisticas Generales'},
  {path: 'Inicio de sesion', component:InicioDeSesionComponent},
  {path: 'Estadisticas Generales', component:EstadisticasComponent},
  {path: 'Estadisticas Almacen', component:EstadisticasAlmacenComponent},
  {path: 'Estadisticas Pedidos', component:EstadisticasPedidosComponent},
  {path: 'Estadisticas Ventas', component:EstadisticasVentasComponent},
  {path: 'Almacen', component:AlmacenComponent},
  {path: 'Pedidos', component:PedidosComponent},
  {path: 'Ventas', component:VentasComponent},
  {path: 'Editar Pedido', component:EditarClienteComponent},
  {path: 'Editar Pedido/:id', component:EditarClienteComponent},
  {path: 'Crear Pedido', component:CrearPedidoComponent},
  {path: 'Verificar Cuenta', component:VerificarComponent},
  {path: 'Verificar Cuenta/:id', component:VerificarComponent},
  {path: 'Crear Venta', component:CrearVentaComponent},
  {path: 'Editar Venta', component:EditarVentaComponent},
  {path: 'Editar Venta/:id', component:EditarVentaComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
