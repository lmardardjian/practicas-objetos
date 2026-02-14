import detalleSolicitud.*
import repartidor.*
import transporte.*
import caravana.*
object central{
    const property repartidores = []
    const property transportesRealizados = []
    const property transportesEnCurso = [] 
    const tamañoCaravana = 3

    method procesar(solicitud){
        var repartidorAsignado 

        if (solicitud.esCritico()) {
            const candidatos = repartidores.filter({
                r => r.puedeAceptar(solicitud)
            })

            if (candidatos.size() < tamañoCaravana){
                throw new DomainException
                    (message= "No hay repartidores disponibles para la caravana")
            }

            repartidorAsignado = new Caravana(integrantes = candidatos.take(3))

        } else {
            const candidatos = repartidores.filter({
                r => r.puedeAceptar(solicitud)
            })

            if (candidatos.isEmpty()){
                throw new DomainException
                    (message= "No hay repartidores disponibles para la solicitud")
            }
            repartidorAsignado = candidatos.anyOne()
            repartidorAsignado.asignarTransporte()

        }

        const nuevoTransporte = new TransporteEnCurso(
                solicitud = solicitud,
                repartidor = repartidorAsignado
            )

        transportesEnCurso.add(nuevoTransporte)

    }

    method finalizarTransporte(transporte, horas) {
        transporte.finalizar(horas)
        transportesEnCurso.remove(transporte)
        transportesRealizados.add(transporte)
    }

}