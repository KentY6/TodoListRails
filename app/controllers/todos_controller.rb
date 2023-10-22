class TodosController < ApplicationController
    # 全てのTodoを@tososに入れる
    def index
        @todos = Todo.all
    end
end