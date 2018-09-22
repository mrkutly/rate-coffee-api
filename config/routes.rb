Rails.application.routes.draw do

  resources :coffees, only: [:show, :index, :create, :update] do
    resources :reviews, only: [:index, :create]
  end

end
