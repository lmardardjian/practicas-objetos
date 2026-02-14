class TransporteEnCurso {
    const property solicitud
    const property repartidor  
    var property horas = 0
    var property estaFinalizado = false   

    method valorFinal() =
        solicitud.distanciaACentral() + solicitud.peso() - repartidor.costo()

    method finalizar(duracion) {
        horas = duracion
        estaFinalizado = true
        repartidor.liberar()
    }
    
}