require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter=> "mysql",
    :host => "localhost",
   :database=> "todo"
)

# A class that represents a Todo item
class TodoItem < ActiveRecord::Base

=begin
  Is thetask done?
=end
  def done?
    self.done
  end

=begin
  Show the name and state of a todo item
=end
  def show
    self.done ? "#{self.name} is done" : "#{self.name} is not done"
  end
end
