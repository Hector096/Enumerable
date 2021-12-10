module MyEnumerable
  def all?
    each do |e|
      return false unless yield(e)
    end
    true
  end

  def any?
    each do |e|
      return false if yield(e)
    end
    true
  end

  def filter?
    result = []
    each do |e|
      result << e if yield(e)
    end
    result
  end
end
