require_relative 'todo_item'
require 'singleton'

##
# Todo List Manager, a singleton.
class TodoList
  include Singleton
  attr_accessor :todos

  @todos = TodoItem.all

  ##
  # Inititalize the +TodoList+
  def initialize
    @todos = TodoItem.all
  end

  ##
  # Get all +TodoItems+
  def self.todos
    @todos
  end

  ##
  # Show all the done
  def self.show_done
    @todos.find_by(:done => true)
  end

  ##
  # Create a new +TodoItem+ with the given name and status. Adds it to the list and stores it in the database.
  def self.add(name, done = false)
    todo = TodoItem.new(:name => name, :done => done)
    todo.save if todo
    @todos = TodoItem.all
    todo
  end

  def self.remove(id)
    todo = TodoItem.find_by_id(id)
    todo.delete
    @todos = TodoItem.all
    todo
  end

  ##
  # Show all of the items in the +TodoList+.
  def self.show
    @todos.each do |item|
      puts "id: #{item.id}, Name: #{item.name}, Done: #{item.done}"
    end
  end

  ##
  # Complete the +TodoItem+
  def self.complete(id)
    item = TodoItem.find_by_id(id)
    if item
      item.complete
      item.save
    end
    item
  end

end
