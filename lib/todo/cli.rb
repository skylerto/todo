require 'thor'
require_relative 'todo_list'
module Todo
  class CLI < Thor

    desc "show", "Show all of the items in the todo list"
    def show
      TodoList.show
    end

    desc "add NAME", "Add a todo item with the given name"
    def add(name)
      TodoList.add(name)
      p "A todo item has been added with the name: #{name}"
    end

    desc "done", "Finish a todo item"
    def done(item)
    end
  end
end
