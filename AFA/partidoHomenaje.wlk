import jugador.*
import estadio.*
import afa.*


class PartidoHomenaje {
    const property jugador
    const property estadio
    var property precioEntrada
    var property costoFijo = 10000000

    method entradasEsperadas() = estadio.capacidad() * jugador.popularidadActual()/100

    method recaudacion() = self.entradasEsperadas() * self.precioEntrada()

    method gastos() = self.costoFijo() + estadio.alquiler() + jugador.viaticos()

    method gananciaNeta() = self.recaudacion() - self.gastos()

    method realizar() {
        afa.recibir(self.recaudacion())
        afa.pagar(self.gastos())
    }
}

object economia {

    method inflacion(partido, porcentaje){
        partido.precioEntrada(partido.precioEntrada() * (1 + porcentaje))
    }
    
}