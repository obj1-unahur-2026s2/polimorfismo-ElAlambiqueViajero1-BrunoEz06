object alambiqueVeloz{
    var combustible = 50

    method combustible(){
        return combustible
    }

    method recargarCombustible(cantidad){
        combustible = 50
    }

    method esRapido(){
        return true
    }

    method sufrirConsecuenciasDelViaje(){
        combustible = combustible - 10
    }
}

object superChatarraEspecial{

    var tieneCanionesPuestos = false

    method tieneCanionesPuestos(){
        return tieneCanionesPuestos
    }

    method esRapido(){
        return false
    }

    method combustible(){
        if (self.tieneCanionesPuestos()) {
            return 50
        } else {
            return 80
        }
    }

    method sufrirConsecuenciasDelViaje(){
        tieneCanionesPuestos = not tieneCanionesPuestos
    }
}

object antiguallaBlindada{
    var cantidadDeGangster = 5

    method cantidadDeGangster(){
        return cantidadDeGangster
    }

    method esRadida(){
        return (cantidadDeGangster < 7)
    }

    method cambiarCantidadDeGangsters(nuevaCantidad){
        cantidadDeGangster = (nuevaCantidad).max(1)
    }

    method combustible(){
        return 50
    }

}

object paris{

    method recuerdo(){
        return "Llavero de torre eiffel"
    }

    method restriccionAlViajar(unVehiculo){
        unVehiculo.combustible() >= 10
    }
}

object buenosAires{

    var presidenteEsBueno = true

    method presidenteEsBueno(){
        return presidenteEsBueno
    }

    method puebloEligePresidenteBueno(){
        presidenteEsBueno = true

    }

    method puebloEligePresidenteMalo(){
        presidenteEsBueno = false

    }

    method recuerdo(){
        return if (presidenteEsBueno) "mate con yerba" else "mate sin yerba"
    
    }

    method restriccionAlViajar(unVehiculo){
        return unVehiculo.esRapido()
    }
}

object bagdad{
    var recuerdo = "bidon de crudo"

    method recuerdo(){
        return recuerdo
    }

    method cambiarRecuerdo(nuevoRecuerdo){
        recuerdo = nuevoRecuerdo
    }

    method restriccionAlViajar(){
        return true
    }
}

object lasVegas{
    var ciudadHomenajeada = paris

    method ciudadHomenajeada(){
        return ciudadHomenajeada
    }

    method cambiarCiudadHomenajeada(unaCiudad){
        ciudadHomenajeada = unaCiudad
    }

    method recuerdo(){
        ciudadHomenajeada.recuerdo()
    }

    method restriccionAlViajar(unVehiculo){
        return ciudadHomenajeada.restriccionAlViajar(unVehiculo)
    }
}

