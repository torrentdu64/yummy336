Rails.application.routes.draw do

  devise_for :users, ActiveAdmin::Devise.config

    scope '(:locale)', locale: /ch|en/ do
      ActiveAdmin.routes(self)
      resources :shops , only: :show, path: 'brothel' do
        get :get_random_girl
        resources :girls, only: [:index, :show] , path: 'escorts' do
          get :next
          get :prev
        end
        #resources :advertises, only: [:wechat]
        get 'job', to: 'advertises#job', :as => :job
        get 'wechat', to: 'advertises#wechat' , :as => :wechat
        get 'website', to: 'advertises#website', :as => :website
        get 'instagram', to: 'advertises#instagram', :as => :instagram

      end



      #get 'advertises/index'

      # get 'girls/index'

      # get 'girls/show'

      # get 'hours/index'

      # get 'shops/show'



      root to: 'shops#show'

    end
      match "/404", to: "errors#not_found", via: :all
      match "/422", to: "errors#unacceptable", via: :all
      match "/500", to: "errors#internal_server_error", via: :all

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
