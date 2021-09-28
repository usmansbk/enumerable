require_relative 'my_enumerable'

class MyList < MyEnumerable
  def initialize(*list)
    super
    @list = list
  end
end

my_list = MyList.new(1, 2, 3, 4)

my_list.all? { |e| e < 5 }
my_list.all? { |e| e > 5 }

my_list.any? { |e| e == 2 }
my_list.any? { |e| e == 5 }

my_list.filter { e.even? }
