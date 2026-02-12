class Jugador {
    var property viaticos
    var property popularidadBase = 0


    method popularidadActual() = popularidadBase 
}

object messi inherits Jugador (popularidadBase = 98, viaticos = 5000000){
    method opinaDePresidente(){
        popularidadBase -= 10
    }
}

object ronaldo inherits Jugador (viaticos = 4000000){

    override method popularidadActual() =
        messi.popularidadActual() / 2

    method irALaAntartida(){
        viaticos = viaticos + 1000000
    }
}  

object mbappe inherits Jugador (viaticos = 6000000){
    var property edad = 26
    var property golesFinales = 4

    override method popularidadActual() = edad * 2 + golesFinales

    method cumplirAnios(){
        edad += 1
    }
}

object rooney inherits Jugador (popularidadBase = 75, viaticos = 3000000){}

