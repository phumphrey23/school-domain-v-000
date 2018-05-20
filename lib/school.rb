# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def roster
    @roster
  end

  def grade
    @roster.detect do |x, y|
      if x == level
        return y
    end
   end
  end

  def sort
    @roster.each do |key,value|
      value.sort!
    end
  end

end
