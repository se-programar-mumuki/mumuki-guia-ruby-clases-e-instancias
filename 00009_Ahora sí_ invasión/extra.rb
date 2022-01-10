class Zombi
  def initialize
    @salud = 100
  end
  
  def gritar
    #<elipsis-for-student@
    "¡agrrrg!"
    #@elipsis-for-student>
    # La lógica de este método está oculta pero satisface lo requerido anteriormente.
  end

  def salud
    #<elipsis-for-student@
    @salud
    #@elipsis-for-student>
    # La lógica de este método está oculta pero satisface lo requerido anteriormente.
  end

  def sabe_correr?
    #<elipsis-for-student@
    false
    #@elipsis-for-student>
    # La lógica de este método está oculta pero satisface lo requerido anteriormente.
  end

  def recibir_danio!(puntos_danio)
    #<elipsis-for-student@
    @salud =  [@salud - (puntos_danio * 2), 0].max
    #@elipsis-for-student>
    # La lógica de este método está oculta pero satisface lo requerido anteriormente.
  end

  def sin_vida?
    #<elipsis-for-student@
    @salud == 0
    #@elipsis-for-student>
    # La lógica de este método está oculta pero satisface lo requerido anteriormente.
  end
  
end