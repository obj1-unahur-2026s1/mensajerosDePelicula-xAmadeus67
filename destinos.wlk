mensajeros.*

object brooklyn {
  method dejaPasar(unMensajero) {
     return unMensajero.pesoTotal() <= 1000
  }
}


Object laMatrix {
   method dejaPasar(unMensajero) {
      return unMensajero.puedeLlamar() 
   }
}
