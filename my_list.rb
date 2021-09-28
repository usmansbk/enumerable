require_relative 'my_enumerable'

class MyList < MyEnumerable
  def initialize(*list)
    @list = list
  end
end
