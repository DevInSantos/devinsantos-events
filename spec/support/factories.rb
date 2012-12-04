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
    url "http://meetup.com/devinsantos/events/81805942"
    published_at Date.new(2012, 8, 11)
  end

  factory :next_devinsantos, :class => Event do
    name "5 DevInSantos"
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
    url "http://meetup.com/devinsantos/events/81805942"
  end

  factory :bruno, :class => Speaker do
    name "Bruno Costa"
    email "brunoadacosta@gmail.com"
    description "Señor Desenvolvedor"
    company "Cocento Tecnologia"
  end

  factory :cocento, :class => Sponsor do
    name "Cocento Tecnologia"
    sponsorship_type SponsorshipType::GOLD
    logo_url "http://logo.com/logo.jpg"
  end

  factory :caelum, :class => Sponsor do
    name "Caelum"
    sponsorship_type SponsorshipType::SILVER
    logo_url "http://logo.com/logo.jpg"
  end

  factory :sala1, :class => Room do
    name "Sala 1"
    association :event, :factory => :devinsantos
  end
end