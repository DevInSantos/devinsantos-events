#encoding:utf-8
User.create :email => 'admin@devinsantos.com.br', :password => '123456', :password_confirmation => '123456'

Speaker.create name: "Ricardo Valeriano", email: "ricardo.valeriano@gmail.com"

Event.create(name: "5º DevInSantos",
      price: 999_999.99,
      address: "Carvalho de Mendonça, 7283 7º andar, Vila Belmiro, Santos/SP",
      date: DateTime.new(2012, 12, 1),
      description: "O evento mais maroto de Santos",
      place: "Faculdade Clips",
      url: "http://www.devinsantos.com.br") {|e|
          e.published_at = DateTime.new(2012, 12, 1) }.save
