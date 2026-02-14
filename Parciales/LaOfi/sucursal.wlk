class Sucursal{
    const property empleados = []
    const property presupuesto
    
    method transferenciaViable(empleado) = presupuesto >= (empleado.sueldoMensual() + self.sueldosTotales())
    method permiteTransferencia() = empleados.size() > 3
    method esViable() = presupuesto >= self.sueldosTotales()
    method sueldosTotales() = empleados.sum({ e => e.sueldoMensual()})
}