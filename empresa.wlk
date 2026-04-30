mensajeros.*
destinos.*
transportes.*
paquete.*

Object empresa {
   const mensajeros = []
   
   method mensajeros() = mensajeros //escribirlo asi es igual al otro metodo con llaves
   method contratarUnMensajero(unMensajero) {
      Mensajeros.add(unMensajero)
   }
   method despedirUnMensajero(unMensajero) {
      Mensajeros.remove(unMensajero)
   }
   method despedirATodos() {
      Mensajeros.clear()
   }
   method agregarListaDeMensajeros(unaLista) {
      mensajeros.adAll(unaLista)
   }
   method eliminarListaDeMensajeros(unaLista) {
      mensajeros.removeAll(unaLista)
   } 
   method esGrande(mensajeros) {
      return mensajeros.size() > 2
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
