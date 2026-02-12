import lobo.*
import casa.*

object historia {
    
    method contar(){
        lobo.correr()
        lobo.correr()
        lobo.comer(abuelita.peso())
        canasta.perderUna()
        lobo.comer(caperucita.pesoReal())
    }

}

object caperucita {
    var property peso = 60 

    method pesoReal() = peso + canasta.peso()
}

object abuelita {
    const property peso = 50 
}

object manzana {
    const property peso = 0.2 
}

object canasta {
    var cantidad = 6 

    method peso() = cantidad * manzana.peso()

    method perderUna() {cantidad -= 1} 
}