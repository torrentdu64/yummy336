Rails.application.routes.draw do
  get 'girls/index'

  get 'girls/show'

  get 'hours/index'

  get 'shops/show'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
