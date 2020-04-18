Rails.application.routes.draw do
  root   'bookers#top',                         as:'root'
  get    'books/index',    to:'bookers#index',  as:'books'
  post  '/books',          to:'bookers#create'
  get    'books/:id/edit', to:'bookers#edit',   as:'edit_book'
  get    'books/:id',      to:'bookers#show',   as:'book'
  patch  'books/:id',      to:'bookers#update'
  delete 'books/:id',      to:'bookers#destroy',as:'destroy'
end
