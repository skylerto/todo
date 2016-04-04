require 'active_record'

# A class that represents a Todo item
class TodoItem < ActiveRecord::Base
  attr_accessor :name
  attr_accessor :done

  def initialize(name, done = false)
    @name = name
    @done = done
  end

=begin
  Is the task done?
=end
  def done?
    @done
  end

=begin
  Show the name and state of a todo item
=end
  def show
    @done ? "#{@name} is done" : "#{@name} is not done"
  end
end
