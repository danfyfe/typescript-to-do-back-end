require 'test_helper'

class ToDoTest < ActiveSupport::TestCase
  
    test 'can create a to do' do
      to_do = ToDo.new(title: 'To Do', completed: false)
      assert to_do.save
    end

    test 'to do must have a unique title' do
      to_do_1 = ToDo.new(title:'To Do', completed: false)
      to_do_1.save
      to_do_2 = ToDo.new(title:'To Do', completed: false)
      assert_not to_do_2.save
    end

    # this test might be silly - it basically just tests active record?
    test 'can update status of to do' do
      to_do = ToDo.create(title:'To Do', completed: false)
      assert to_do.update(completed: true)
    end



end
