class MyEnumerable
  def all?
    @list.each do |num|
      return false unless yield num
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
    filtered = []
    @list.each do |num|
      if (yield num)
        filtered.push(num)
      end
    end
    
    filtered
  end
end
