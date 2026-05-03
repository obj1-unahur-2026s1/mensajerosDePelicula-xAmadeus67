import empresa.*
object paquetito {
   method estaPago() = true
   method puederSerEntregado(unMensajero) = true
}

object paquetonViajero {
   const destinos = #{}
   
   method precioTotal() {
      return destinos.size() * 100
   }

   method importePagado() = 0 

   method pagoParcial(unValor) {
      unValor + self.importePagado().min(self.precioTotal())
   }
   method estaPago() = self.importePagado() == self.precioTotal()
   
   method puederSerEntregado(unMensajero) {
      return self.estaPago() && destinos.all({d => d.dejaPasar(unMensajero)})
   }
}

object paquetePremium {

   method precioTotal() {
      return 200
   }
   method estaPago() = true
   method puederSerEntregado(unMensajero, valorPaquete) {
      self.esPremium(valorPaquete) 
   }
   method esPremium(unValor) {
      self.precioTotal() + unValor >= 250
   }
}
