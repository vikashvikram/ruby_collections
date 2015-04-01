module RubyCollections
  class Stack

    def initialize(arr = [])
      @arr = arr
    end

    def size
      @arr.size
    end

    def isEmpty?
      @arr.size.zero?
    end

    def top
      @arr[0]
    end

    def push(e)
      @arr.unshift(e)
    end

    def pop
      @arr.shift
    end

  end
end