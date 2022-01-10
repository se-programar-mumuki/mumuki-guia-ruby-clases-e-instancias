zombi = Zombi.new(100)

it "Si creo un nuevo Zombi le puedo especificar su salud inicial" do
  zombi42 = Zombi.new(42)
  expect(zombi42.salud). to eq 42
end

it "Un Zombi no sabe correr" do
  expect(zombi.sabe_correr?).to be false
end

it "Un Zombi grita ¡agrrrg!" do
  expect(zombi.gritar).to eq "¡agrrrg!"
end

it "Un Zombi con salud inicial 100 no está sin vida" do
  expect(zombi.sin_vida?).to be false
end

it "Si un Zombi de salud 100 recibe 5 puntos de daño disminuye su salud en 10 puntos y no está sin vida" do
  zombi.recibir_danio!(5)
  expect(zombi.salud).to eq 90
  expect(zombi.sin_vida?).to be false
end

it "Si un Zombi recibe mucho daño su salud es 0 y está sin vida" do
  zombi.recibir_danio!(69)
  expect(zombi.salud).to eq 0
  expect(zombi.sin_vida?).to be true
end