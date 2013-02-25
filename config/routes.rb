BuckeyeEats::Application.routes.draw do
  resources :openings
  resources :restaurants

  root :to => 'restaurants#index'

end
