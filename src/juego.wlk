import wollok.game.*
import configuracion.*
import niveles.*
import main.*
import nivel1.*

object juego{
	method iniciar() {
		cfg.configurarPantalla()
		imagenInicio.mostrar()
		game.schedule(5000, {gestorNiveles.nivelActual().iniciar(); gestorDeSonido.iniciar()})
		game.start()
	}
	
	method ganar(){
		//gestorDeSonido.pausar()
		game.clear()
		imagenGanadora.mostrar()
		gestorDeSonido.ganar()
		game.schedule(15000,{game.stop()})
	}
	
	method perder(){
		game.clear()
		imagenPerdedora.mostrar()
		game.schedule(5000,{gestorNiveles.volverAEmpezar()})
	}
}


