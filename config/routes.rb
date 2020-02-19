Rails.application.routes.draw do
  resources :tv_channels do
    get 'favroite'
  end
  root 'tv_channels#index'

  post 'tv_channels/search', to: "tv_channels#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
