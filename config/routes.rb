Rails.application.routes.draw do
  root 'todos#index'
  get '/todos', to: 'todos#index', as: 'todos'
  post '/todos', to: 'todos#create'

  get '/todos/:id/edit', to: 'todos#edit', as: 'edit_todo' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  patch '/todos/:id', to: 'todo#update'
  #更新処理用ルーティング
  delete '/todos/:id', to: 'todos#destroy'
  #@todo = Todo.find(params[:id])で削除する項目(idで指定された項目)を@todoに入れる
  #destroyメソッドで削除
end
