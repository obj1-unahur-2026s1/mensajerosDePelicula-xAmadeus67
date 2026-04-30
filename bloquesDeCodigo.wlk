Object paquetito {
   method estaPago() = true
   method puederSerEntregado(unMensajero) = true
}

Object paquetonViajero {
   const destinos = #{}
   
   method precioTotal() {
      return destinos.size() * 100
   }
   method importePagado = 0 
   method pagoParcial(unValor) {
      importePagado =+ unValor.min(self.precioTotal())
   }
   method estaPago() = importePagado == self.precioTotal()
   method puederSerEntregado(unMensajero) {
      return self.estaPago() && destinos.all({d => d.dejaPasar(unMensajero)})
   }
}
