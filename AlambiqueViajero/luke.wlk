import vehiculos.*

object luke {
    var lugaresVisitados = 0
    var ultimoRecuerdo = null
    var property vehiculo = alambiqueVeloz

    method lugaresVisitados() = lugaresVisitados

    method ultimoRecuerdo() = ultimoRecuerdo

    method viajar(ciudad){
        
        if(ciudad.puedeIr(vehiculo)){
            
            vehiculo.realizarViaje()
            lugaresVisitados += 1
            ultimoRecuerdo = ciudad.recuerdo()

        }
    }
}