Devinsantos::Application.routes.draw do
  devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :events, :only => [:index] do
    resources :speakers, :only => :index
    resources :sponsors, :only => :index
  end
end
