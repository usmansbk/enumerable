require_relative 'my_enumerable'

class MyList 
  include MyEnumerable

  def initialize(*list)
    @list = list
  end
end