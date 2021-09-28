class MyEnumerable
  def all?
    @list.each do |num|
      return false if !yield num
    end
    true
  end

  def any?
    @list.each do |num|
      return true if yield num
    end
    false
  end

  def filter
    @list.each do |num|
      yield num
    end
  end
end
