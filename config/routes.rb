Rails.application.routes.draw do
  # ''は初期アクセス時のルートは何かを表している
  get '', to: 'todos#index'
  get 'todos', to: 'todos#index'
  post 'todos' , to: 'todos#create'
end
