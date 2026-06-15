class Armas {
  method valorDeAtaque() 
}
class Filo inherits Armas{
  const filo
  const longitud
  override method valorDeAtaque() = longitud*filo.min(1)

}
class Contundentes inherits Armas{
  const peso
  override method valorDeAtaque() = peso
}

object casco {
  method proteccion(suPortador)= 10
}
object escudo {
  method proteccion(suPortador)= 5 + suPortador.destresa() * 0.1
}