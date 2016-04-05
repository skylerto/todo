require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter=> "mysql",
    :host => "localhost",
   :database=> "todo"
)

##
# A class that represents a Todo item
class TodoItem < ActiveRecord::Base

  ##
  # Is the task done?
  def done?
    self.done
  end

  ##
  # Show the name and state of a +TodoItem+
  def show
    self.done ? "#{self.name} is done" : "#{self.name} is not done"
  end

  ##
  # Complete a task
  def complete
    self.done = true
  end
end
