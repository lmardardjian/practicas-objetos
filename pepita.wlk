object pepita{
    var property energia = 100
    var property partida = buenosAires

    method volar(kilometros) {energia = energia - self.costoVuelo(kilometros)}

    method comer(gramos) {energia = energia + 4 * gramos}

    method costoVuelo(kilometros) = 10 + kilometros

    method distancia(destino) = (partida.ubicacion() - destino.ubicacion()).abs()

    method viajar(destino) {
        self.volar(self.distancia(destino))
        partida = destino
        }

    method puedeIr(destino) = energia >= self.costoVuelo(self.distancia(destino))
}

object buenosAires{
    const property ubicacion = 0  
}

object cordoba{
    const property ubicacion = 5  
}

object miami{
    const property ubicacion = 30
}