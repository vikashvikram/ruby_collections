# RubyCollections

Welcome to ruby_collections gem. This gem will provide you with an easy access to common data structures to be used in ruby language.

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

Supported Data Structures: Max Heap, Min Heap, Stack, LinkedList

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

list.top # => nil

list.isEmpty? # => true

list.add(1) # => 1 (number of elements in list)

list.add(2) # => 2 (number of elements in list)

list.to_s # => "[2, 1]"

list.add(3,1) # => 3 (number of elements in list)

list.to_s # => "[2, 3, 1]"

list.remove(2) # => removes element at index 2

list.to_s # => "[2, 3]"

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
