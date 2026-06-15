object coliseo {
  const property grupos = []
  
}
class Grupo {
    const property nombre
    var property cantDeBatallas
    const property miembros = []
    method cantDeBatallas() = cantDeBatallas
    method agregarAGrupo(unGladiador) {
      miembros.add(unGladiador)
    }
    method quitarDelGrupo(unGladiador) {
      miembros.remove(unGladiador)
    }
    method elCampionDelGrupo() = miembros.find({m=>m.vida()>=1 && m.fuerza().max()})

}