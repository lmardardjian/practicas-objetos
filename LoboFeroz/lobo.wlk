object lobo {
    var property peso = 10

    method estaSaludable() = 20 <= peso && peso <= 150

    method aumentarPeso(cantidad) {peso += cantidad}
    method perderPeso(cantidad) {peso -= cantidad}

    method sufrirCrisis() {peso = 10}

    method comer(pesoComida) {
        self.aumentarPeso(pesoComida * 0.1)
    }

    method correr() {
        self.perderPeso(1) 
    }

    method soplarCasa(unaCasa){
        self.perderPeso(unaCasa.resistencia() + unaCasa.pesoOcupantes())
    }
}