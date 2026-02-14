class Caravana {
    const property integrantes = []

    method costo() = 5000 + integrantes.sum({ r => r.costo() })

    method asignarTransporte() {
        integrantes.forEach({ r => r.asignarTransporte() })
    }  

    method liberar() {
        integrantes.forEach({ r => r.liberar() })
    }
}