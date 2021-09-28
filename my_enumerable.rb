module MyEnumerable
  def all?
    self.each { |num| return false unless yield num }
    true
  end

  def any?
    self.each { |num| return true if yield num }
    false
  end

  def filter
    filtered = []
    self.each { |num| filtered.push(num) if yield num }
    filtered
  end
end
