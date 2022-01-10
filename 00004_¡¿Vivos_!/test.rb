it "Bouba no sabe correr" do
  expect(Bouba.sabe_correr?).to be false
end

it "Kiki no sabe correr" do
  expect(Kiki.sabe_correr?).to be false
end

it "Bouba grita ¡agrrrg!" do
  expect(Bouba.gritar).to eq "¡agrrrg!"
end

it "Kiki grita ¡agrrrg!" do
  expect(Kiki.gritar).to eq "¡agrrrg!"
end

it "Bouba tiene 100 de salud inicialmente y está con vida" do
  expect(Bouba.salud).to eq 100
  expect(Bouba.sin_vida?).to eq false
end

it "Kiki tiene 100 de salud inicialmente y está con vida" do
  expect(Kiki.salud).to eq 100
  expect(Kiki.sin_vida?).to eq false
end

it "Si Bouba recibe 5 puntos de daño disminuye su salud en 10 puntos y está con vida" do
  Bouba.recibir_danio!(5)
  expect(Bouba.salud).to eq 90
  expect(Bouba.sin_vida?).to eq false
end

it "Si Kiki recibe 5 puntos de daño disminuye su salud en 10 puntos y está con vida" do
  Kiki.recibir_danio!(5)
  expect(Kiki.salud).to eq 90
  expect(Kiki.sin_vida?).to eq false
end

it "Si Bouba recibe mucho daño su salud es 0 y no está con vida" do
  Bouba.recibir_danio!(69)
  expect(Bouba.salud).to eq 0
  expect(Bouba.sin_vida?).to eq true
end

it "Si Kiki recibe mucho daño su salud es 0 y no está con vida" do
  Kiki.recibir_danio!(69)
  expect(Kiki.salud).to eq 0
  expect(Kiki.sin_vida?).to eq true
end