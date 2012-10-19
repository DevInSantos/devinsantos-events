Devinsantos::Application.routes.draw do
  resources :events, :only => [:index] do
    resources :speakers, :only => :index
    resources :sponsors, :only => :index
  end
end
