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

    def edit
        @todo = Todo.find(params[:id])
    end

    def update
        @todo = Todo.find(params[:id])
        if
            @todo.update(todo_params)
            redirect_to todos_path
        else
            render :edit
        end
    end

    private
        def todo_params
            params.require(:todo).permit(:text)
        end
end