class TodosController < ApplicationController
    def index
      @todos = Todo.all
      @todo = Todo.new  #フォームを作るために必要
    end

    def create
      @todo = Todo.create(todo_params)
      redirect_to todos_path
    end

    def edit
      @todo = Todo.find(params[:id])
      #@todoはインスタンス変数。@とつけることでビューでもデータを使えるようになる
      #findはデータベースからidカラムからデータを探す
    end

    def update
      @todo = Todo.find(params[:id])
      @todo.update(todo_params)
      redirect_to todos_path
    end

    def destroy
      @todo = Todo.find(params[:id])
      @todo.destroy
      redirect_to todos_path
    end

    private
      def todo_params
        params.require(:todo).permit(:title)
      end

end