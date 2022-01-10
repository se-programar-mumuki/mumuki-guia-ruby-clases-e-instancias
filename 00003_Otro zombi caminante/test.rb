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

it "Bouba tiene 100 de salud inicialmente" do
  expect(Bouba.salud).to eq 100
end

it "Kiki tiene 100 de salud inicialmente" do
  expect(Kiki.salud).to eq 100
end

it "Si Bouba recibe 5 puntos de daño disminuye su salud en 10 puntos" do
  Bouba.recibir_danio!(5)
  expect(Bouba.salud).to eq 90
end

it "Si Kiki recibe 5 puntos de daño disminuye su salud en 10 puntos" do
  Kiki.recibir_danio!(5)
  expect(Kiki.salud).to eq 90
end

it "Si Bouba recibe mucho daño su salud no puede ser menor a 0" do
  Bouba.recibir_danio!(69)
  expect(Bouba.salud).to eq 0
end

it "Si Kiki recibe mucho daño su salud no puede ser menor a 0" do
  Kiki.recibir_danio!(69)
  expect(Kiki.salud).to eq 0
end