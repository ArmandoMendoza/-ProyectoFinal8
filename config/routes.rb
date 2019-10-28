Rails.application.routes.draw do

  root "home#index"

  devise_for :users, controllers: {
         sessions: 'users/sessions',
         registrations: 'users/registrations'
       }

  devise_for :organizators, controllers: {
         sessions: 'organizators/sessions',
         registrations: 'organizators/registrations'
       }


    namespace :users do
        get :timeline, to: 'timeline#index'
        resource :profile
        resources :press_conferences, only: [:show] do
          get :application, on: :member
        end
      end


    namespace :organizators do
      resource :profile

      resources :press_conferences

    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
