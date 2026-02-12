class Estadio{
    var property capacidad  
    const property alquiler 
}

object bombonera inherits Estadio(capacidad = 50000, alquiler = 8000000){}

object monumental inherits Estadio(capacidad = 70000, alquiler = 10000000){
    var property avanceObra = 0.8

    override method capacidad() = capacidad * avanceObra

    method avanzarObra(porcentaje){
        avanceObra += porcentaje
    }
}

