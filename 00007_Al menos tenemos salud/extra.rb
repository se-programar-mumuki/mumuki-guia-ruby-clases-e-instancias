module Juliana
  def self.atacar!(zombi, puntos)
    zombi.recibir_danio!(puntos)
  end
end

class Zombi
  def initialize
    @salud = 100
  end
  
  def salud
    @salud
  end
  
  def sabe_correr?
    false
  end
  
  def sin_vida?
    @salud == 0
  end
  
  def recibir_danio!(puntos)
    @salud = [@salud - puntos * 2, 0].max
  end

  def gritar
    "agrrrg!"
  end
end

bouba = Zombi.new
kiki = Zombi.new