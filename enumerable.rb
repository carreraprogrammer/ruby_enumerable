module MyEnumerable
  def all?
    each { |e| return false unless yield e }
    true
  end

  def any?
    each { |e| return true if yield e }
    false
  end

  def filter
    filtered_array = []
    each { |e| filtered_array.push(e) if yield e }
    filtered_array
  end
end
