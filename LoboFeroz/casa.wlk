import chanchito.*

class Casa {
    var property ocupantes = 1

    method resistencia()

    method pesoOcupantes(chanchito) = chanchito.peso() * ocupantes

    method sumarChanchito() { ocupantes += 1}
}

object casaPaja inherits Casa (){

    override method resistencia() = 0
}

object casaMadera inherits Casa (){
    
    override method resistencia() = 5
}

object casaLadrillo inherits Casa (){
    const cantidadLadrillos = 10

    override method resistencia() = cantidadLadrillos * 2
}