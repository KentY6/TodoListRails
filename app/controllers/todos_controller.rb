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

    private
        def todo_params
            params.permit(:text)
        end
end