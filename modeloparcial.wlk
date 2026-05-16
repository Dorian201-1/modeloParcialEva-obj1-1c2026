object eva01 {
    var campoAT = 2110
    var energia = 100

    method efectoSinCron(piloto) {
        energia -=25
        campoAT = 2150.min (campoAT + 1)
        piloto.entrenar(piloto.puntosDeEntrenamiento() + self.puntosQueOtorga())
    }
    method recargaEnergia(horas) {energia = 100.min(energia + 30*horas}
    method puedeSincronizarCon(piloto) { = piloto.puntosDeEntrenamiento() >= 4 and enrgia > 30
    method puntosQueOtorga() = 2
    }
}

object eva02 {
    var energia = 100
    var modo = estandar

    method campoAT() = 2114
    method efectoDeSincron(piloto) {
        energia -= modo.consumo()
        
    }
    method recargarEnergia(horas) {energia = 100.min(energia + 30*horas
   method puedeSincronizarCon(piloto) { = piloto.puntosDeEntrenamiento() >= 4 and enrgia > 30
    method puntosQueOtorga() = modo.puntosQueOtorga()
   }
}
object estandar {
    method consumo() = 10
    method puntosQueOtorga() = 1
}
object ataque {
    method consumo() = 20
    method puntosQueOtorga() = 3
}
object baserk {
    method consumo() = 35
    method puntosQueOtorga() = 6
}
object eva00{
    var campoAT = 2100
    var modo = estandar

    method efectoSinCron(piloto) {piloto.entrenar(self.puntosQueOtorga()) }
    //fuerza debe ser >=0
    method mejorarCampoAT(fuerza) {campoAT = (campoAT+fuerza).min(2150)}
    
    method puedeSincronizarCon(piloto) = true
    method puntosQueOtorga() = 1

}
object asuka {
    var puntosDeEntrenamiento = 5
    var ultimoEvaSincronizado = eva00
   method puedeSincronizarCon(eva) = eva.puedeSincronizarCon(self)
   method estaSatisfecha() = ultimoEvaSincronizado.campoAT() > 2115
method entrenar(puntos) {puntosDeEntrenamiento += puntos}
method efectoDeSincronizarCon(eva) = eva.puedeSincronizarCon(self)
}

object shinji {
    var puntosDeEntrenamiento = 2
    var estaCansado = false
   method puedeSincronizarCon(eva) = eva.puedeSincronizarCon(self)
   method estaSatisfecha() = ultimoEvaSincronizado.campoAT() > 2115
   method estaSatisfecha() = nerv.