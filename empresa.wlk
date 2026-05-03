import mensajeros.*
import destinos.*
import transportes.*
import paquetes.*

object empresa {
   const mensajeros = []
   
   method mensajeros() = mensajeros //escribirlo asi es igual al otro metodo con llaves
   method contratarUnMensajero(unMensajero) {
      mensajeros.add(unMensajero)
   }
   method despedirUnMensajero(unMensajero) {
      mensajeros.remove(unMensajero)
   }
   method despedirATodos() {
      mensajeros.clear()
   }
   method agregarListaDeMensajeros(unaLista) {
      mensajeros.adAll(unaLista)
   }
   method eliminarListaDeMensajeros(unaLista) {
      mensajeros.removeAll(unaLista)
   } 
   method esGrande(unaLista) {
      return unaLista.size() > 2
   }
   method puedeSerEntregadoPorPrimerMensajero(unPaquete) {
      return unPaquete.puedeSerEntregado(self.primerEmpleado())
   }
   method primerEmpleado() {
    return  mensajeros.first() 
   }
   method ultimoEmpleado() {
      return mensajeros.last()
   }
   method saberPesoTotalUltimoEmpleado() {
      return self.ultimoEmpleado().pesoTotal()
   }
}
