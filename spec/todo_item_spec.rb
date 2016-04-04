require 'spec_helper'

describe TodoItem do
  it 'Can Create a todo item' do
    expect(TodoItem.new(:name => "")).not_to be nil
  end

  it 'Can be created with a name' do
    expect(TodoItem.new(:name => "This is a new item").name).to eq("This is a new item")
  end

  it 'is created without being done' do
    expect(TodoItem.new(:name => "This is a new item").done?).to be false
  end


  it 'is created with being done' do
    expect(TodoItem.new(:name => "This is a new item", :done => true).done?).to be true
  end

  it 'can show the information' do
    expect(TodoItem.new(:name => "This is a new item").show).to eq("This is a new item is not done")
    expect(TodoItem.new(:name => "This is a new item", :done => true).show).to eq("This is a new item is done")
  end

end
