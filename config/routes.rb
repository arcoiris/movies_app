MoviesApp::Application.routes.draw do
  root "movies#index"
  resources :movies, only: [:index, :new, :create, :update, :edit,:show]
  get "search", to: 'search#index'
end
