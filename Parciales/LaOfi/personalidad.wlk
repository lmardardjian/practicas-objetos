import empleado.*
class Personalidad {
    method motivacion(empleado)
}

class Competitiva inherits Personalidad(){
    override method motivacion(empleado) = 100 - 10 * empleado.colegasQueCobranMas()
}

class Sociable inherits Personalidad(){
    override method motivacion(empleado) = 15 * empleado.colegas()
}

class Indiferente inherits Personalidad(){
    const property valorPersonal  
    override method motivacion(empleado) = valorPersonal
}

class Compleja inherits Personalidad(){
    const personalidades = []

    override method motivacion(empleado) = personalidades.sum({ p => p.motivacion(empleado) }) / personalidades.size()
    
}