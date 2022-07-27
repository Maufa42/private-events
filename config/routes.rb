Rails.application.routes.draw do
  devise_for :users, :controllers =>{registrations: "registrations"}
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "events#index"
  get 'about', to: 'events#about'
  get 'event', to: "events#new"
end
