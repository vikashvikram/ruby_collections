require 'securerandom'
module RubyCollections
  class Deque

    def initialize
      @hash = {size: 0, front: {data: nil, next: :rear, prev: nil}, 
              rear: {data: nil, next: nil, prev: :front}}
    end

    def empty?
      size.zero?
    end

    def size
      hash[:size]
    end

    def head
      hash[front[:next]][:data]
    end

    def tail
      hash[rear[:prev]][:data]
    end

    def add(data, index = 0)
      return nil if index > size
      if index == 0 then add_first(data) and return end
      setNext(getNode(index-1), data) if index > 0 and index < size
      hash[:size] += 1 
    end

    def add_first(data)
      setNext(:front, data)
      hash[:size] += 1
    end

    def add_last(data)
      setPrev(:rear, data)
      hash[:size] += 1
    end

    def get(index)
      return nil if index >= size
      hash[getNode(index)][:data]
    end

    def set(index, data)
      return nil if index >= size
      hash[getNode(index)][:data] = data
    end

    def remove(index)
      return nil if index >= size or index < 0
      node_id = getNode(index)
      hash[getNext(node_id)][:prev] = getPrev(node_id)
      hash[getPrev(node_id)][:next] = getNext(node_id)
      hash.delete(node_id)
      hash[:size] -= 1
    end

    def remove_first
      return nil if empty?
      remove(0)
    end

    def remove_last
      return nil if empty?
      node_id = getPrev(:rear)
      prev_id = getPrev(node_id)
      hash[prev_id][:next] = :rear
      rear[:prev] = prev_id
      hash.delete(node_id)
      hash[:size] -= 1
    end

    def to_s
      return "" if empty?
      data = []
      node_id = :front
      size.times do
        node_id = getNext(node_id)
        data << hash[node_id][:data]
      end
      return data.to_s
    end

    private

    def hash
      @hash
    end

    def front
      hash[:front]
    end

    def rear
      hash[:rear]
    end

    def setNext(node_id, data)
      uuid = SecureRandom.uuid
      hash[uuid] = {data: data, next: getNext(node_id), prev: node_id}
      hash[getNext(node_id)][:prev] = uuid
      hash[node_id][:next] = uuid
    end

    def setPrev(node_id, data)
      uuid = SecureRandom.uuid
      hash[uuid] = {data: data, next: node_id, prev: getPrev(node_id)}
      hash[getPrev(node_id)][:next] = uuid
      hash[node_id][:prev] = uuid
    end

    def getNext(node_id)
      hash[node_id][:next]
    end

    def getPrev(node_id)
      hash[node_id][:prev]
    end

    def getNode(index)
      node = front[:next]
      index.times {node = getNext(node)}
      return node
    end

  end
end