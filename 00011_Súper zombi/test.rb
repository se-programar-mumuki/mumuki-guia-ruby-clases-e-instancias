zombi = SuperZombi.new(100)

it "Si creo un nuevo SuperZombi le puedo especificar su salud inicial" do
  zombi42 = SuperZombi.new(42)
  expect(zombi42.salud). to be 42
end

it "Un SuperZombi sabe correr" do
  expect(zombi.sabe_correr?).to be true
end

it "Un SuperZombi grita ¡agrrrg!" do
  expect(zombi.gritar).to eq "¡agrrrg!"
end

it "Un SuperZombi con salud inicial 100 no está sin vida" do
  expect(zombi.sin_vida?).to eq false
end

it "Si un SuperZombi de salud 100 recibe 5 puntos de daño disminuye su salud en 15 puntos y no está sin vida" do
  zombi.recibir_danio!(5)
  expect(zombi.salud).to eq 85
  expect(zombi.sin_vida?).to eq false
end

it "Si un SuperZombi recibe mucho daño su salud es 0 y está sin vida" do
  zombi.recibir_danio!(69)
  expect(zombi.salud).to eq 0
  expect(zombi.sin_vida?).to eq true
end

it "Si un SuperZombi se regenera su salud vuelve a 100" do
  zombi.regenerarse!
  expect(zombi.salud).to eq 100
end