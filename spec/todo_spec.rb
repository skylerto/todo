require 'spec_helper'
require 'todo/todo_list'
require 'todo/todo_item'

describe Todo do

  it 'should be created with the list of todos' do
    expect(TodoList.new.todos).to eq(TodoItem.all)
  end

  it 'should get all completed tasks' do
    expect(TodoList.new.show_done).to eq(nil)
  end

  it 'should add a new todo item' do
    item = TodoItem.new(:name => "another item")
    expect(TodoList.new.add("another item").find_by_name("another item").name).to eq(item.name)
  end
end
