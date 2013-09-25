Medic::Application.routes.draw do

  devise_for :users

  resources :seals

  root :to => 'welcome#index'

end
