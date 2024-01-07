# frozen_string_literal: true

Rails.application.routes.draw do
  resources :search, only: [:index]
  resources :query_histories, only: [:index] do
    collection do
      get 'json'
    end
  end
end
