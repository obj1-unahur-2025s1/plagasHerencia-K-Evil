import plagas.*

class Hogar {
  var mugre
  const confort

  method esBueno() = confort >= mugre/2 
  method recibirUnAtaque(unaPlaga) { mugre =  mugre + Plaga.daño()}  // mugre += unaPlaga.daño()

}

class Huerta {
  var produccion

  method esBueno() { return produccion > nivelMinimoProduccion.valor()}
  method recibirUnAtaquee(unaPlaga) {produccion = 0.max (produccion - (unaPlaga.daño()) * 0.1 + if (unaPlaga.transmiteEnfermedades()) 10 else 0)
}
}
  object nivelMinimoProduccion {
    var property valor = 100
  }

  class Mascota{
    var salud

    method esBueno() { return salud > 200 }
    method recibirUnAtaqueefectoDelAtaque(unaPlaga) = if (unaPlaga.transmiteEnfermedades()) salud = (salud - unaPlaga.daño()).max(0)
  }

  class Barrios {
    const elementos = []

    method esBueno(unElemento) = unElemento.esBueno()
    method esCopado(unElemento) = self.cantElementosBuenos() > self.cantELementosMalos()
    method cantElementosBuenos() = elementos.count ({e => e.esBueno()})
    method cantELementosMalos() = elementos.size() - self.cantElementosBuenos()

  }

