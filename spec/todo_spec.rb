require 'spec_helper'
require 'todo/todo_list'
require 'todo/todo_item'

describe Todo do
  ##
  # Before all test cases
  before(:all) do
  end

  ##
  # After all test cases
  after(:all) do
  end

  it 'should be created with the list of todos' do
    expect(TodoList.todos).to eq(TodoItem.all)
  end

  it 'should get all completed tasks' do
    expect(TodoList.show_done).to eq(nil)
  end

  it 'should add a new todo item' do
    item = TodoItem.new(:name => "another item")
    expect(TodoList.add("another item").find_by_name("another item").name).to eq(item.name)
  end

  it 'should complete a todo item' do
    TodoList.add("Complete this task")
    item = TodoList.todos.find_by_name("Complete this task")
    TodoList.complete(item.id)
    expect(item.done?).to be(true)
  end

  
  it 'should remove a todo item' do
    TodoList.add("Complete this task")
    item = TodoList.todos.find_by_name("Complete this task")
    TodoList.remove(item.id)
    expect(TodoList.todos.find_by_id(item.id)).to be(nil)

  end
end
