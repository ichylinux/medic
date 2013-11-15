Medic::Application.routes.draw do

  devise_for :users

  match 'welcome/get_seals', :to => 'welcome#get_seals'

  resources :seals do
    member do
      get 'download'
    end
  end

  resources :members do
    collection do
      get 'add_family_member'
    end
  end
  
  root :to => 'welcome#index'

end
