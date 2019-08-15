Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  namespace :api, defaults: {format: 'json'} do
    
    scope module: :v1 do
      devise_scope :users do
        devise_for :users, only: []
        post 'users/sign_in', to: 'sessions#create'
      end

      get 'exams/index', to: 'exams#index'

      get 'users/profile_student', to: 'users#profile_student'
      get 'users/profile_staff', to: 'users#profile_staff'



    end






end
end