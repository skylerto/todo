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

    desc "done ID", "Finish todo item with the given ID"
    def done(id)
      item = TodoList.complete(id)
      puts "Good job! You completed: #{item.name}" if item.done?
    end

    desc "remove ID", "Remove the todo with the given ID"
    def remove(id)
      todo = TodoList.remove(id)
      puts "You have successfully deleted: #{todo.name}"
    end
  end
end
