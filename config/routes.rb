Rails.application.routes.draw do
  root to: 'sentences#index'

  resources :sentences, only: %i{index new create}
end
