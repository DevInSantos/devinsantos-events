User.create :email => 'admin@devinsantos.com.br', :password => '123456', :password_confirmation => '123456'

Speaker.find_or_create_by_name "Ricardo Valeriano",
              email: "ricardo.valeriano@gmail.com"
