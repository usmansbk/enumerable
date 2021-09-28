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
end
