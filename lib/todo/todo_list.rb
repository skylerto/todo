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
  end

  ##
  # Show all of the items in the +TodoList+.
  def self.show
    @todos.each do |item|
      puts "id: #{item.id}, Name: #{item.name}, Done: #{item.done}"
    end
  end

end
