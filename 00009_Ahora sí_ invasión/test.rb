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
#Zombi, bouba y kiki van aquí para no ensuciar la Biblioteca, que muestra el código de Juliana.

it "caminantes tiene veinte elementos" do
  expect(caminantes.size). to eq 20
end

it "Todos los caminantes son zombies" do
  expect(caminantes.all? { |caminante| caminante.instance_of? Zombi } ). to be true
end

it "La energía inicial de juliana es 1000" do
  expect(juliana.energia).to eq 1000
end

it "La energía inicial de anastasia es 1000" do
  expect(anastasia.energia).to eq 1000
end

it "Si juliana ataca con 5 puntos de daño a un zombi su salud disminuye en 10 puntos" do
  juliana.atacar!(bouba, 5)
  expect(bouba.salud).to eq 90
end

it "Si anastasia ataca con 5 puntos de daño a un zombi su salud disminuye en 10 puntos" do
  anastasia.atacar!(kiki, 5)
  expect(kiki.salud).to eq 90
end

it "Cuando juliana ataca masivamente les reduce la vida a todos los zombis en 30 puntos" do
  zombis = []
  5.times { zombis.push(Zombi.new) }
  juliana.ataque_masivo!(zombis)
  expect(zombis.all? { |zombi| zombi.salud == 70 } ). to be true
end

it "Cuando anastasia ataca masivamente les reduce la vida a todos los zombis en 30 puntos" do
  zombis = []
  5.times { zombis.push(Zombi.new) }
  anastasia.ataque_masivo!(zombis)
  expect(zombis.all? { |zombi| zombi.salud == 70 } ). to be true
end