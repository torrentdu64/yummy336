Rails.application.routes.draw do

  devise_for :users, ActiveAdmin::Devise.config

    scope '(:locale)', locale: /ch|en|jp/ do
      ActiveAdmin.routes(self)
      resources :shops , only: :show, path: 'brothel' do
        get :get_random_girl
        resources :girls, only: [:index, :show] , path: 'escorts' do
          get :next , path: 'next'
          get :prev , path: 'prev', only: [:show]

          resources :pricing_girls, only: [:show]
        end
        #resources :advertises, only: [:wechat]
        get 'job', to: 'advertises#job', :as => :job
        get 'wechat', to: 'advertises#wechat' , :as => :wechat
        get 'whatapp', to: 'advertises#whatapp' , :as => :whatapp
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

    # constraints(host: /^www\.(?!pinkygirls\.)/i) do

    #   match '(*any)', via: :all, to: redirect { |params, request|

    #     # parse the current request url
    #     # tap in and remove www.
    #     URI.parse(request.url).tap { |uri| uri.host.sub!(/^www\./i, '') }.to_s

    #   }

    # end

      match "/404", to: "errors#not_found", via: :all
      match "/422", to: "errors#unacceptable", via: :all
      match "/500", to: "errors#internal_server_error", via: :all

      #get '/brothel/:slug/escort/:slug', to: redirect('/brothel/%{:slug}/escort/%{:slug}', status: 301)

      # match '*_path' => redirect('/', status: 301) , via: :all
      # # 301 redirect from old URLs
      # # match "/*path/:id", to: redirect("/brothel/%{id}s"), via: :all
      #  match "/brothel/auckland/escort/:id", to: redirect("/shops/%{id}s/girls/%{id}s", status: 302), via: :all
      #get '/brothel/auckland/escort/:id', to: redirect('/shops/%{id}s/girls/%{id}s', status: 302)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
