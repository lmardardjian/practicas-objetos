import vehiculos.*
import luke.*
class Ciudad{
    method recuerdo()

    method puedeIr(vehiculo)
}

object paris inherits Ciudad{
    override method recuerdo() = "Llavero de la Torre Eiffel"

    override method puedeIr(vehiculo) = vehiculo.tieneCombustible(50)
}

object buenosAires inherits Ciudad{
    var property presidente = "Milei"
    
    override method recuerdo(){
        if (presidente == "Milei"){

            return"Mate con yerba"

        } else {

            return "Mate sin yerba"
        }
    }

    override method puedeIr(vehiculo) = vehiculo.esRapido()
}

object bagdad inherits Ciudad{
    var property anio = 2026
    
    override method recuerdo(){
        if (anio <= 1000) return "Replica de los jardines colgantes de Babilonia"
        if (anio <= 1900) return "Arma de destruccion masiva"
        return "Bidon con petroleo"
    }

    override method puedeIr(vehiculo) = true
}

object lasVegas inherits Ciudad{
    var property ciudadHomenajeada = paris

    override method recuerdo() = ciudadHomenajeada.recuerdo()

    override method puedeIr(vehiculo) = ciudadHomenajeada.puedeIr(vehiculo)
}

object atlantis inherits Ciudad{
    override method recuerdo() = "Tridente miniatura"

    override method puedeIr(vehiculo) = vehiculo.puedeNadar()
}