import destinos.*
import mensajeros.*
import transportes.*

object paquete {
   var estaPago = false
   var destino = brooklyn 

   method estaPago() {
      return estaPago
   }
   method registrarPago() {
      estaPago = true 
   }
   method cancelarPago() {
      estaPago = false 
   }
   method cambiarDestino(nuevoDestino) {
      destino = nuevoDestino
   }
   method puedeEntregarse(unMensajero) {
      return destino.dejaPasar(unMensajero) && estaPago  
   }
}
