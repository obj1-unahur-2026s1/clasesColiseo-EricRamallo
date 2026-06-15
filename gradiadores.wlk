import coliseo.*
import equipamiento.*
class Gladiador {
    const vida = 100
    method vida() = vida 
    method fuerza()
    method destresa()
    method contraAtacar(unGladiador) {
      if (vida!=vida) self.atacarA(unGladiador)
    }
    method atacarA(unGradiador) 
}
class Mirmillones inherits Gladiador{
    var equipado
    var fuerza
    var arma
    method cambiarDeArma(unArma) {
        arma = unArma
  }
    override method fuerza() = fuerza
    override method destresa() = 15
    method cambiarDeArmadura(unaArmadura){
        equipado = unaArmadura
    }
    method poderDeAtaque(unArma) = unArma.valorDeAtaque() + self.fuerza()
    override method atacarA(unGladiador){
        unGladiador.vida() - (self.poderDeAtaque(arma) - unGladiador.defensa())
    }
    method defensa() = equipado.proteccion(self) + self.destresa()
    method crearGrupo() {
      new Grupo(nombre ="mirmillolandia", cantDeBatallas=0, miembros=[])
    }
}
class Dimachaerus inherits Gladiador{
    const property armas = []
    var unaDestreza
    override method fuerza()=10
    override method destresa()= unaDestreza
    method poderDeAtaque(unArma) = unArma.sum({a => a.valorDeAtaque()})
    override method atacarA(unGladiador) {
      unGladiador.vida() - (self.poderDeAtaque(armas) - unGladiador.defensa())
      unaDestreza = unaDestreza + 1
    }
    method defensa() = self.destresa() / 2
    method crearGrupo() {
      new Grupo(nombre= "D" + self.sumaDeAtaque(), cantDeBatallas=0, miembros=[])
    }
    method sumaDeAtaque() = self.poderDeAtaque(armas) + "D".sum({m=>m.poderDeAtaque(self)})
}