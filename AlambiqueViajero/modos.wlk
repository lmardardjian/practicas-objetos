class Modo {
    method velocidad()
    method consumo()
    method siguiente()
}

object deportivo inherits Modo(){
    override method velocidad() = true
    override method consumo() = 20
    override method siguiente() = helicoptero
}

object helicoptero inherits Modo(){
    override method velocidad() = true
    override method consumo() = 50
    override method siguiente() = submarino
}

object submarino inherits Modo(){
    override method velocidad() = false
    override method consumo() = 100
    override method siguiente() = deportivo
}