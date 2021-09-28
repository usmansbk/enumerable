require_relative 'my_enumerable'

class MyList < MyEnumerable
  def initialize(*list)
    super
    @list = list
  end
end
