import elementos.*

class Plaga {
    var poblacion 
    method transmiteEnfermedades() = poblacion >= 10 && self.condicionAdicional()
    method condicionAdicional()   // method condicionAdicional() = true
    method daño() = poblacion
    method efectoDelAtaque() { poblacion = poblacion + poblacion * 0.1} 
    method atacar (unElemento) { 
        unElemento.recibirUnAtaque(self)
        self.efectoDelAtaque()
}
}

class Cucarachas inherits Plaga {
    
    var pesoPromedioBicho

    override method daño() = super()/ 2   // poblacion* 0.5
    override method condicionAdicional() = pesoPromedioBicho >= 10
    override method efectoDelAtaque() {super()  pesoPromedioBicho = pesoPromedioBicho + 2}
}

class Pulgas inherits Plaga {

    override method daño() = super() * 2

}


class Garrapatas inherits Pulgas {
    override method condicionAdicional() = true
    override method efectoDelAtaque() { poblacion + poblacion * 0.2 }
}

class Mosquitos inherits Plaga {

    override method transmiteEnfermedades() = super() && poblacion % 3 == 0 
}
