Devinsantos::Application.routes.draw do
  devise_for :users

  root :to => "events#index"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :events, :only => [:index] do
    resources :speakers, :only => :index
    resources :sponsors, :only => :index
  end

  get "speaker/:id" => "speakers#speaker", as: :speaker
end
