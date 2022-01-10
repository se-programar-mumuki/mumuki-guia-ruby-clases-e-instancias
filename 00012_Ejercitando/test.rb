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
juliana = Sobreviviente.new
anastasia = Sobreviviente.new
candela = Sobreviviente.new
#Zombi y los objetos van aquí para no ensuciar la Biblioteca, que muestra el código de Sobreviviente.

it "La energía inicial de una sobreviviente es 1000" do
  expect(juliana.energia).to eq 1000
end

it "Si una sobreviviente ataca masivamente su energía se reduce a la mitad" do
  zombis = []
  anastasia.ataque_masivo!(zombis)
  expect(anastasia.energia).to eq 1000 / 2
end

it "Si una sobreviviente ataca normalmente su energía no se reduce" do
  candela.atacar!(kiki, 5)
  expect(candela.energia).to eq 1000
end

it "Si una sobreviviente bebe una bebida energética su energía aumenta un 25%" do
  juliana.beber!
  expect(juliana.energia).to eq 1000 * 1.25
end

it "Si una sobreviviente ataca con 5 puntos de daño a un zombi su salud disminuye en 10 puntos" do
  juliana.atacar!(bouba, 5)
  expect(bouba.salud).to eq 90
end

it "Cuando una sobreviviente ataca masivamente les reduce la vida a todos los zombis en 30 puntos" do
  zombis = []
  5.times { zombis.push(Zombi.new) }
  juliana.ataque_masivo!(zombis)
  expect(zombis.all? { |zombi| zombi.salud == 70 } ). to be true
end