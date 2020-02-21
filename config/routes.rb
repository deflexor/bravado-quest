Rails.application.routes.draw do
  root 'welcome#index'
  get '/users', to: 'welcome#users'
  get '/search/*any', to: 'welcome#index'
end
