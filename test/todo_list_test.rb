require_relative "helper"

require "todo_list/list_repos"

class TodoListTest < MiniTest::Unit::TestCase

  def test_add
    todo_list = Class.new do
      include ListRepository
    end.new

    todo_list.add("HOGE")
    todo_list.add("HAGE")
    todo_list.add("VIM")
    assert_equal(todo_list.length, 3)
    assert_equal(todo_list.get_all, ["HOGE", "HAGE", "VIM"])
  end

  def test_get_last
    todo_list = Class.new do
      include ListRepository
    end.new

    todo_list.add("HOGE")
    todo_list.add("HAGE")
    todo_list.add("VIM")
    assert_equal(todo_list.get_last, "VIM")
  end

  def test_get_first
    todo_list = Class.new do
      include ListRepository
    end.new

    todo_list.add("HOGE")
    todo_list.add("HAGE")
    todo_list.add("VIM")
    assert_equal(todo_list.get_first, "HOGE")
  end

  def test_remove_first
    todo_list = Class.new do
      include ListRepository
    end.new

    todo_list.add("HOGE")
    todo_list.add("HAGE")
    todo_list.add("VIM")
    todo_list.remove_first
    assert_equal(todo_list.get_all, ["HAGE", "VIM"])
  end

  def test_remove_last
    todo_list = Class.new do
      include ListRepository
    end.new

    todo_list.add("HOGE")
    todo_list.add("HAGE")
    todo_list.add("VIM")
    todo_list.remove_last
    assert_equal(todo_list.get_all, ["HOGE", "HAGE"])
  end

  def test_swap
    todo_list = Class.new do
      include ListRepository
    end.new

    todo_list.add("VIM1")
    todo_list.add("VIM2")
    todo_list.add("VIM3")
    todo_list.add("VIM4")
    todo_list.swap(0,1)
    assert_equal(todo_list.get_all, ["VIM2", "VIM1", "VIM3", "VIM4"])
    todo_list.swap(1,2)
    assert_equal(todo_list.get_all, ["VIM2", "VIM3", "VIM1", "VIM4"])
  end

end
