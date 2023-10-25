Rails.application.routes.draw do
  # ''は初期アクセス時のルートは何かを表している
  get '', to: 'todos#index'
  get 'todos', to: 'todos#index'
  post 'todos' , to: 'todos#create'
  delete 'todos/:id' , to: 'todos#destroy'
  get 'todos/:id/edit', to: 'todos#edit'
  patch 'todos/:id' , to: 'todos#update'
end
