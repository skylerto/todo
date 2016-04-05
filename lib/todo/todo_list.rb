require_relative 'todo_item'

##
# Todo List Manager
class TodoList
  attr_accessor :todos

  ##
  # Inititalize the +TodoList+
  def initialize
    @todos = TodoItem.all
  end

  ##
  # Show all the done
  def show_done
    @todos.find_by(:done => true)
  end

  ##
  # Create a new +TodoItem+ with the given name and status. Adds it to the list and stores it in the database.
  def add(name, done = false)
    todo = TodoItem.new(:name => name, :done => done).save
    @todos = TodoItem.all
  end

end
