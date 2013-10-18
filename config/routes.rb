Medic::Application.routes.draw do

  devise_for :users

  resources :seals do
    member do
      get 'download'
    end
  end

  resources :members
  
  root :to => 'welcome#index'

end
