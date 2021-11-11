Rails.application.routes.draw do
  resources :books
  root to: 'homes#top'
  post 'books' => 'books#create'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
