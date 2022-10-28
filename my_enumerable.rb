module MyEnumerable
  def all?
    check_enum = true
    each do |enum|
      check_enum = false unless yield enum
    end
    check_enum
  end

  def any?
    check_enum = false
    each do |enum|
      check_enum = true if yield enum
    end
    check_enum
  end

  def filter
    check_enum = []
    each do |enum|
      check_enum << enum if yield enum
    end
    check_enum
  end
end
