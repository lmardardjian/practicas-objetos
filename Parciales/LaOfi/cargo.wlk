import sucursal.*
import empleado.*
class Cargo {
    
    method sueldoPorHora(empleado)
    method diasLaborales() = 22 

}


class Recepcionista inherits Cargo(){
    override method sueldoPorHora(empleado) = 15
}

class Pasante inherits Cargo(){
    const diasEstudio = 0

    override method sueldoPorHora(empleado) = 10
    override method diasLaborales() = 22 - self.diasEstudio()

    method diasEstudio() = diasEstudio
}

class Gerente inherits Cargo(){ 
    var property plus

    override method sueldoPorHora(empleado) = 8 * empleado.colegas() + plus
}

class Vicepresidente inherits Gerente(){
    override method sueldoPorHora(empleado) = super(empleado) * 1.03
}