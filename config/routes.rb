Rails.application.routes.draw do
  resources :user_projects
  resources :projects
  resources :users

  get '/logged_in', to: 'sessions#logged_in'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
