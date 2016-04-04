require 'thor'
require_relative 'todo_list'
module Todo
    class CLI < Thor

      desc "add ITEM", "Add item to todo list"
      def add(item)
      end

      desc "done", "Finish a todo item"
      def done(item)
      end
    end
end
