object afa {
    var property arcas = 0

    method recibir(plata) {
        arcas += plata
    }

    method pagar(plata) {
        arcas -= plata
    }

    method estadoDeArcas() = arcas

}