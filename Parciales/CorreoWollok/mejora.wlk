class Mejora {
    const agilidad 
    const peso
    method agilidad() = agilidad
    method peso() = peso
}
object superFuerza inherits Mejora (agilidad = 20, peso = 200){}
object superAgilidad inherits Mejora (agilidad = 100, peso = 5){}
object sinMejora inherits Mejora (agilidad = 45, peso = 40){}