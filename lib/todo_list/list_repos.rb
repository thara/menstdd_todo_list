
module TodoList
  module TodoRepository
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
      throw :index_out_of_range unless (_in_range(@list, a) && _in_range(@list, b))
      @list[a], @list[b] = @list[b], @list[a]
    end

    private
    def _in_range(list, index)
      0 <= index && index < list.length
    end

  end
end
