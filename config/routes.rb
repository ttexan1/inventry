Rails.application.routes.draw do
  resources :audio_texts, only: [:create]
  root 'landing#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
