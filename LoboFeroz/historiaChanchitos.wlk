import lobo.*
import casa.*
import chanchito.*

object historiaChanchitos {

    method contarHistoria(){
        lobo.soplarCasa(casaPaja)
        casaMadera.sumarChanchito()
        lobo.correr()
        lobo.soplarCasa(casaMadera)
        lobo.comer(chanchito.peso())
    }
}