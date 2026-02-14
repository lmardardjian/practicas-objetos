import mejora.*

class Repartidor {
    const costoBase = 1000
    var transportesRealizados = 0
    var estaViajando = false

    method costoBase() = costoBase
    method transportesRealizados() = transportesRealizados

    method costo()
    method soportaPeso(solicitud)
    method inhabilitado()

    method puedeAceptar(solicitud) = !self.inhabilitado() && self.soportaPeso(solicitud) && !estaViajando

    method asignarTransporte(){
        transportesRealizados += 1
        estaViajando = true
    }

    method liberar(){
        estaViajando = false
    }

}

class Robot inherits Repartidor{
    override method costo() = costoBase + 500
    override method inhabilitado() = transportesRealizados > 100
    override method soportaPeso(solicitud) = solicitud.peso().between(5,1000)

}

class Humano inherits Repartidor{
    var mejora = sinMejora

    override method costo() = costoBase + self.agilidad() + transportesRealizados
    override method inhabilitado() = self.costo() > 10000

    method agilidad() = mejora.agilidad()
    method peso() = mejora.peso()

    method cambiarMejora(nuevaMejora){
        mejora = nuevaMejora
    }
}

