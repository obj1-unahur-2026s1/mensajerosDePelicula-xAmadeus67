import transportes.*
import destinos.*

object roberto {
  var transporte = bici
  var property peso = 90
  
  method puedeLlamar() {
     return false 
  }
  method pesoTotal() {
     return peso + transporte.peso() 
  }
  method cambiarTransporte(unTransporte) {
     transporte = unTransporte
  }
}

object chuckNorris {
  method puedeLlamar() {
     return true
  }
  method pesoTotal() {
     return 80 
  }
}

object neo {
  var saldo = true

  method tieneSaldo() {
     return saldo
  }
  method cargarSaldo() {
      saldo = true
  }
  method consumirSaldo() {
      saldo = false 
  }
  method puedeLlamar() {
     return saldo
  }
  method pesoTotal() {
     return 0 
  }
}

object johann {
   var saldo = true
   var transporte = bici
   var property peso = 90

   method tieneSaldo() = saldo

   method cargarSaldo() {
      saldo = true
   }
   method consumirSaldo() {
      saldo = false 
   }
   
   method puedeLlamar() = saldo

   method pesoTotal() {
     return peso + transporte.peso() 
  }
   method cambiarTransporte(unTransporte) {
     transporte = unTransporte
  }
}