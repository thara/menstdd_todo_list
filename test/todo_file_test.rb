require_relative "helper"

require "todo_list/list_repos"
require "todo_list/file_todo_list"

class TodoFileTest < MiniTest::Unit::TestCase

  def test_load
    file_path = 'test/fixture/todo.json'
    todo_file = TodoFile.load_from(file_path)
    assert_equal(file_path, todo_file.file_path)

    assert_equal(todo_file.get_all, ["HOGE", "VIM"])
  end

end
