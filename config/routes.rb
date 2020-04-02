Rails.application.routes.draw do
  root'bookers#top'
  get 'bookers/index', to:'bookers#index',as:'index'
  get 'bookers/:id/edit', to:'bookers#edit',as:'edit'
  post '/bookers', to:'bookers#create'
  get 'bookers/:id', to:'bookers#show',as:'show'
  patch 'bookers/:id', to:'bookers#update'
  delete 'bookers/:id', to:'bookers#destroy',as:'destroy'
end
