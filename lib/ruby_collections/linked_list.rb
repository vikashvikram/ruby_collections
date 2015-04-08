module RubyCollections
  class LinkedList
    attr_accessor :size, :top

    def initialize
      @size = 0
      @top = nil
    end

    def isEmpty?
      size.zero?
    end

    def add(data, index = nil)
      return nil if index and index >= size
      if index
        new_node = Node.new data, nil
        get(index-1).setNext(new_node)
      else
        node = Node.new(data, top)
        @top = node
      end
      @size += 1 
    end

    def get(index)
      node = top
      index.times {node = node.getNext}
      return node
    end

    def remove(index)
      node = get(index-1)
      to_be_removed = node.getNext
      node.setNext(to_be_removed.getNext)
      @size -= 1
    end

    def to_s
      data = []
      data << (node = top).data
      (size-1).times {data << (node = node.getNext).data}
      return data.to_s
    end

    class Node
      attr_accessor :data

      def initialize(data, next_node)
        @data = data
        @next = next_node.object_id
      end

      def getNext
        ObjectSpace._id2ref(@next)
      end

      def setNext(node)
        return if node.nil?
        next_node_id = instance_variable_get(:@next)
        @next = node.object_id
        node.instance_variable_set(:@next, next_node_id)
        return node
      end

      def to_s
        "#{data}"
      end
    end

  end

end