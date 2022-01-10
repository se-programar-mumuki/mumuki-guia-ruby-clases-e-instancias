zombi = Zombi.new

it "Un Zombi no sabe correr" do
  expect(zombi.sabe_correr?).to be false
end

it "Un Zombi grita ¡agrrrg!" do
  expect(zombi.gritar).to eq "¡agrrrg!"
end

it "Un Zombi tiene 100 de salud inicialmente y no está sin vida" do
  expect(zombi.salud).to eq 100
  expect(zombi.sin_vida?).to eq false
end

it "Si un Zombi recibe 5 puntos de daño disminuye su salud en 10 puntos y no está sin vida" do
  zombi.recibir_danio!(5)
  expect(zombi.salud).to eq 90
  expect(zombi.sin_vida?).to eq false
end

it "Si un Zombi recibe mucho daño su salud es 0 y está sin vida" do
  zombi.recibir_danio!(69)
  expect(zombi.salud).to eq 0
  expect(zombi.sin_vida?).to eq true
end