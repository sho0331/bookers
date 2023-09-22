Rails.application.routes.draw do
  get '/' => 'homes#top'
  resources :books,except: [:new, :update, :show, :destroy]
  delete '/books/:id(.:format)' => 'books#destroy', as: 'destroy_book'
  get '/books/:id(.:format)' => 'books#show', as: 'show_book'
  patch '/books/:id(.:format)' => 'books#update', as: 'update_book'
  put '/books/:id(.:format)' => 'books#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
