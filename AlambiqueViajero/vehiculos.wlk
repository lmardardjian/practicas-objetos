import modos.*
class Vehiculo{
    var property combustible 

    method esRapido()
    
    method tieneCombustible(cantidad) = cantidad <= combustible 

    method realizarViaje() 

    method puedeNadar() = false
}

object alambiqueVeloz inherits Vehiculo (combustible = 100){
    override method esRapido() = true

    override method realizarViaje() {
        combustible -= 20
    }
}

object superChatarra inherits Vehiculo (combustible = 0){
    var municion = 100
    var tieneCañones = true

    override method esRapido() = !tieneCañones
 

    override method tieneCombustible(cantidad) = municion >= cantidad
    
    override method realizarViaje(){
        municion -= 20

        if (municion < 10) tieneCañones = false
    } 
}

object antiguallaBlindada inherits Vehiculo (combustible = 50){
    var gangsters = 4
    
    override method esRapido() = gangsters <= 4

    override method realizarViaje(){
        self.sumarGangster()
    }

    method sumarGangster(){
        gangsters += 1
    }
}

object superConvertible inherits Vehiculo(combustible = 100){
    var property modo = deportivo

    override method esRapido() = modo.velocidad()

    override method realizarViaje(){
        combustible -= modo.consumo()
        modo = modo.siguiente()
    }

    override method puedeNadar() = true
}

