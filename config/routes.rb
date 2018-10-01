Rails.application.routes.draw do
  resources :devizes do
      resources :valutes
  end
  get 'test/', to: 'valutes#hnbApi'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
