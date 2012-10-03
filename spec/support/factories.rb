# encoding: utf-8
FactoryGirl.define do
  factory :devinsantos, :class => Event do
    name "DevInSantos"
    place "Unimonte"
    address "Rua Comendador Martins, 52, Vila Mathias, Santos / SP"
    description <<-DESCRICAO
    Olá pessoal, com muita satisfação anunciamos o 4º DevInSantos \o/.
    Prometemos ter internet funcionando (wifi), trabalhar ao máximo para não atrasar as palestras,
    ter bebida gelada e comida quente no coffee, e... tomar cuidado com piadinhas com as moças :)

    Temos uma novidade, além de cada membro ganhar camiseta e brindes, teremos mais de 6 palestras em um único dia.
    Nossa agenda será dividida em duas salas.
    As palestras serão simultâneas.
    Vamos manter a alta qualidade das palestras, só que agora teremos palestras de nível mais básico também,
    além das de nível intermediárias/avançadas.
    DESCRICAO
    date Date.new(2012, 10, 11)
  end
end