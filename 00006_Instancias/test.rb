it "bouba no sabe correr" do
  expect(bouba.sabe_correr?).to be false
end

it "kiki no sabe correr" do
  expect(kiki.sabe_correr?).to be false
end

it "bouba grita ¡agrrrg!" do
  expect(bouba.gritar).to eq "¡agrrrg!"
end

it "kiki grita ¡agrrrg!" do
  expect(kiki.gritar).to eq "¡agrrrg!"
end

it "bouba tiene 100 de salud inicialmente y está con vida" do
  expect(bouba.salud).to eq 100
  expect(bouba.sin_vida?).to eq false
end

it "kiki tiene 100 de salud inicialmente y está con vida" do
  expect(kiki.salud).to eq 100
  expect(kiki.sin_vida?).to eq false
end

it "Si bouba recibe 5 puntos de daño disminuye su salud en 10 puntos y está con vida" do
  bouba.recibir_danio!(5)
  expect(bouba.salud).to eq 90
  expect(bouba.sin_vida?).to eq false
end

it "Si kiki recibe 5 puntos de daño disminuye su salud en 10 puntos y está con vida" do
  kiki.recibir_danio!(5)
  expect(kiki.salud).to eq 90
  expect(kiki.sin_vida?).to eq false
end

it "Si bouba recibe mucho daño su salud es 0 y no está con vida" do
  bouba.recibir_danio!(69)
  expect(bouba.salud).to eq 0
  expect(bouba.sin_vida?).to eq true
end

it "Si kiki recibe mucho daño su salud es 0 y no está con vida" do
  kiki.recibir_danio!(69)
  expect(kiki.salud).to eq 0
  expect(kiki.sin_vida?).to eq true
end