import cargo.*

class Empleado {
    const property aniosAntiguedad = 0
    var property cargo 
    var property sucursal  
    const property horasDiarias 
    var property personalidad 

    method sueldoBase() = cargo.sueldoPorHora(self) * horasDiarias * cargo.diasLaborales()

    method sueldoMensual() = self.sueldoBase() + 100 * self.aniosAntiguedad()

    method cambiarCargo(nuevoCargo){
        cargo = nuevoCargo
    } 

    method transferir(nuevaSucursal){
        if (sucursal.permiteTransferencia() and nuevaSucursal.transferenciaViable(self)){
        sucursal.empleados().remove(self)
        nuevaSucursal.empleados().add(self)
        sucursal = nuevaSucursal
        }
    }

    method colegas() = sucursal.empleados().size() - 1

    method colegasQueCobranMas() = sucursal.empleados().count({ e => e.sueldoMensual() > self.sueldoMensual()})

    method motivacion(){
        const valorCrudo = personalidad.motivacion(self)
        return valorCrudo.max(100).min(0)
    }

}