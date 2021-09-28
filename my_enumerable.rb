module MyEnumerable
  def all?
    @list.each { |num| return false unless yield num }
    true
  end

  def any?
    @list.each { |num| return true if yield num }
    false
  end

  def filter
    filtered = []
    @list.each { |num| filtered.push(num) if yield num }
    filtered
  end
end
