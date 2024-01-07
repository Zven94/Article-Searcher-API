# frozen_string_literal: true

Rails.application.routes.draw do
  resources :search, only: [:index]
  resources :searched_terms, only: [:index]
  
  get '/most_searched_terms', to: 'searched_terms#index'
end
