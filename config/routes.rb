Hackuna::Application.routes.draw do
  resources :my_feedbacks

  resources :courses

  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  authenticated :user do
    root to: 'courses#index', :as => "authenticated_root"
  end
  root :to => "home#index"
  get "pro" => "home#pro"

end