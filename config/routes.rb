Rails.application.routes.draw do

  resources :shops , only: :show do
    resources :girls, only: [:index, :show]
  end


  devise_for :users
  ActiveAdmin.routes(self)
  #get 'advertises/index'

  # get 'girls/index'

  # get 'girls/show'

  # get 'hours/index'

  # get 'shops/show'



  root to: 'shops#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
