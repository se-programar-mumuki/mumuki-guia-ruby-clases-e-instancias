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
julian = Aliado.new
anastasio = Aliado.new
candelo = Aliado.new
#Zombi y los objetos van aquí para no ensuciar la Biblioteca, que muestra el código de Sobreviviente.

it "La energía inicial de un aliado es 500" do
  expect(julian.energia).to eq 500
end

it "Si un aliado ataca su energía se reduce un 5%" do
  julian.atacar!(kiki, 5)
  expect(julian.energia).to eq 500 * 0.95
end

it "Si un aliado ataca masivamente su energía se reduce a la mitad" do
  zombis = []
  anastasio.ataque_masivo!(zombis)
  expect(anastasio.energia).to eq 500 / 2
end

it "Si un aliado bebe una bebida energética su energía aumenta un 10%" do
  candelo.beber!
  expect(candelo.energia).to eq 500 * 1.10
end

it "Si un aliado ataca con 5 puntos de daño a un zombi su salud disminuye en 10 puntos" do
  julian.atacar!(bouba, 5)
  expect(bouba.salud).to eq 90
end

it "Cuando un aliado ataca masivamente les reduce la vida a todos los zombis en 40 puntos" do
  zombis = []
  5.times { zombis.push(Zombi.new) }
  julian.ataque_masivo!(zombis)
  expect(zombis.all? { |zombi| zombi.salud == 60 } ). to be true
end