it "La energía inicial de Juliana es 1000" do
  expect(Juliana.energia).to eq 1000
end

it "Si Juliana ataca con 5 puntos de daño a Bouba su salud disminuye en 10 puntos" do
  Juliana.atacar!(Bouba, 5)
  expect(Bouba.salud).to eq 90
end

it "Si Juliana ataca con 10 puntos de daño a Bouba su salud disminuye en 20 puntos" do
  Juliana.atacar!(Bouba, 10)
  expect(Bouba.salud).to eq 70
end

it "Si Juliana ataca a Bouba con mucho daño su salud no puede ser menor a 0" do
  Juliana.atacar!(Bouba, 69)
  expect(Bouba.salud).to eq 0
end