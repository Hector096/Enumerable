require_relative "module"


Class MyList {
include MyEnumerable

def initialize (*list)
@list = list
end

def each(&data)
    @list.each(&data)
}

# Create our list
  list = MyList.new(1, 2, 3, 4)
# => #<MyList: @list=[1, 2, 3, 4]>

# Test #all?
  list.all? {|e| e < 5}
# => true
  list.all? {|e| e > 5}
# => false

# Test #any?
  list.any? {|e| e == 2}
# => true
  list.any? {|e| e == 5}
# => false

# Test #filter
  list.filter {|e| e.even?}
# => [2, 4]