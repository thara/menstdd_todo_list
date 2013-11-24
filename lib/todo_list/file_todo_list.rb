require 'json'

module TodoList
  class TodoFile
    include TodoRepository

    attr_reader :file_path

    def save

    end

    def self.load_from(file_path)
      todo_list = open(file_path) {|io| JSON.load(io)}
      self.new(file_path, todo_list)
    end

    private
    def initialize(file_path, list)
      # super
      @file_path = file_path
      @list = list
    end

  end
end
