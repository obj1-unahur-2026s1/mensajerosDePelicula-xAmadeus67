import destinos.*
import mensajeros.*
import transportes.*

Object paquete {
   var estaPago = false
   var destino = brooklyn 

   method estaPago() {
      return estaPago
   }
   method registrarPago() {
      return estaPago = true 
   }
   method cancelarPago() {
      return estaPago = false 
   }
   method cambiarDestino(nuevoDestino) {
      return destino = nuevoDestino
   }
   method puedeEntregarse(unMensajero) {
      return destino.dejaPasar(unMensajero) &&  estaPago  
   }
}
