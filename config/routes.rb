Rails.application.routes.draw do
  root :to => 'stories#index'

  resources :stories do
    resources :sentences, :except => [:show, :index]
  end
end
