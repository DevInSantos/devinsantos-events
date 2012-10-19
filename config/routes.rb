Devinsantos::Application.routes.draw do
  resources :events, :only => [:index] do
    resources :speakers, :only => :index
  end
end
