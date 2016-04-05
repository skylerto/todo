require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter=> "mysql",
  :host => "localhost",
  :database=> "todo"
)

class CreateTodos < ActiveRecord::Migration
  def self.up
    create_table :todo_items do |t|
      t.string :name, null: false
      t.boolean :done, null: false, default: false
    end
  end

CreateTodos.up

end

