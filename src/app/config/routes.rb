Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/utility_charge', to: 'utility_charges#index'
  get '/utility_charge/new', to: 'utility_charges#new'
  get '/utility_charge/show', to: 'utility_charges#show'
  post '/utility_charge/create', to: 'utility_charges#create'
  namespace :utility_charge do
    get '/water', to: 'water#index'
    get '/electricity', to: 'electricity#index'
    get '/gas', to: 'gas#index'
    get '/mobile_phone', to: 'mobile_phone#index'
  end
end
