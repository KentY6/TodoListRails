class TodosController < ApplicationController
    # 全てのTodoを@tososに入れる
    def index
        @todos = Todo.all
    end

    def new
        @todo = Todo.new
    end

    def create
        @todo = Todo.new(todo_params)
        if
            @todo.save
            puts "成功しました"
            redirect_to todos_path
        else
            puts "失敗しました"
        end
    end

    def destroy
        todo = Todo.find(params[:id])
        if
            todo.destroy
            puts "削除に成功しました"
            redirect_to todos_path
        else
            puts "処理に失敗しました"
            redirect_to todos_path
        end
    end

    private
        def todo_params
            params.permit(:text)
        end
end