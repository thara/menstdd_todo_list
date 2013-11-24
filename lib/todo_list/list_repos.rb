
module TodoList
  module ListRepository
    def initialize()
      @list = []
    end

    def add(text)
      @list.push(text)
    end

    def length
      @list.length
    end

    def get_all
      @list.clone
    end

    def get_last
      @list.last
    end

    def get_first
      @list.first
    end

    def remove_first
      @list.shift
    end

    def remove_last
      @list.pop
    end

    def swap(a,b)
      @list[a], @list[b] = @list[b], @list[a]
    end

  end
end
