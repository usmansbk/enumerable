class MyEnumerable
  def all?
    @list.each { |num| yield num }
  end

  def any?
    @list.each { |num| yield num }
  end

  def filter
    @list.each { |num| yield num }
  end
end