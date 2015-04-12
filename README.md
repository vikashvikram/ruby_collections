# RubyCollections

Welcome to ruby_collections gem. This gem will provide you with an easy access to common data structures to be used in Ruby Language.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby_collections'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_collections

## Usage

Supported Data Structures: Max Heap, Min Heap, Stack, LinkedList, Deque, UnionFind

### RubyCollections::MaxHeap

```ruby

max_heap = RubyCollections::MaxHeap.new

max_heap.insert(1)

max_heap.insert(4)

max_heap.heap # => [nil, 1, 4]

max_heap.max # => 4

max_heap.extract_max # => 4

max_heap.max # => 1

```

Similarly we can use MinHeap as well.

### RubyCollections::Stack

```ruby

stack = RubyCollections::Stack.new

stack.push(1) # => [1]

stack.push(4) # => [4, 1]

stack.top # => 4

stack.pop # => 4

stack.top # => 1

```

### RubyCollections::LinkedList

```ruby

list = RubyCollections::LinkedList.new

list.size # => 0

list.header # => ""

list.empty? # => true

list.add(1) # => 1 (number of elements in list)

list.add(2) # => 2 (number of elements in list)

list.to_s # => "[2, 1]"

list.add(3,1) # => 3 (number of elements in list)

list.to_s # => "[2, 3, 1]"

list.remove(2) # => 2 (removes element at index 2)

list.to_s # => "[2, 3]"

list.get(1) # => 3 (returns element at index 1)

list.get(1).setNext(12) # => adds a new node after index 1 with value 12. list is now [2, 3, 12]

list.get(1).data = 5 # => changes the value at index 1. list is now [2, 5, 12]

list.get(1).getNext # => 12

```

### RubyCollections::Deque

```ruby

list = RubyCollections::Deque.new

list.size # => 0

list.head # => nil

list.empty? # => true

list.add(2) # => 1 (number of elements in list), list: [2]

list.add(1) # => 2 (number of elements in list), list: [1,2]

list.to_s # => "[1, 2]"

# add 3 at index 1

list.add(3,1) # => 3 (number of elements in list), list: [1, 3, 2]

# add 5 at first postion

list.add_first(5) # list: [5, 1, 3, 2]

# see tail element

list.tail # => 2

#add 6 at last position

list.add_last(6) # list: [5, 1, 3, 2, 6]

list.size # => 5

# get element at index 2

list.get(2) # => 3

# set element at index 1 to 10

list.set(1, 10) # list; [5, 10, 3, 2, 6]

# remove element at index 2

list.remove(2) # list: [5, 10, 2, 6]

# remove first element

list.remove_first # list: [10, 2, 6]

# remove last element

list.remove_last # list: [10, 2]

```

### RubyCollections::UnionFind

```ruby

# initialization takes an array argument. each element should have a to_s method defined which should return uniq val

uf = RubyCollections::UnionFind.new (1..8).to_a 

uf.union(1,3) # joins 1 and 3 and returns the leader

uf.union(5,6) # joins 5 and 6 and returns the leader

uf.union(2,4) # joins 2 and 4 and returns the leader

uf.union(1,7) # joins 1 and 7 and returns the leader

uf.find(7) # leader of the cluster containing 7

uf.to_a  # => [[1, 3, 7], [2, 4], [5, 6], [8]] i.e. returns array of all clusters

uf.cluster(1) # => [1, 3, 7] i.e. returns all elements in same cluster as of 1

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ruby_collections/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
