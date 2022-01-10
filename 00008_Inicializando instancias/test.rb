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

it "juliana es Sobreviviente" do
  expect(juliana.instance_of? Sobreviviente). to be true
end

it "anastasia es Sobreviviente" do
  expect(anastasia.instance_of? Sobreviviente). to be true
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

it "Si juliana ataca con 10 puntos de daño a un zombi su salud disminuye en 20 puntos" do
  juliana.atacar!(bouba, 10)
  expect(bouba.salud).to eq 70
end

it "Si anastasia ataca con 10 puntos de daño a un zombi su salud disminuye en 20 puntos" do
  anastasia.atacar!(kiki, 10)
  expect(kiki.salud).to eq 70
end

it "Si juliana ataca a un zombi con mucho daño su salud no puede ser menor a 0" do
  juliana.atacar!(bouba, 69)
  expect(bouba.salud).to eq 0
end

it "Si anastasia ataca a un zombi con mucho daño su salud no puede ser menor a 0" do
  anastasia.atacar!(kiki, 69)
  expect(kiki.salud).to eq 0
end