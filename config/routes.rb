Rails.application.routes.draw do
  get 'advertises/index'

  get 'girls/index'

  get 'girls/show'

  get 'hours/index'

  get 'shops/show'

  devise_for :users
  root to: 'shops#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
