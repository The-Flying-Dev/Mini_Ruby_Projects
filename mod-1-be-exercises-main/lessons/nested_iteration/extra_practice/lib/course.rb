require_relative 'student'

class Course
  attr_reader :name, :professor, :students

  def initialize(name, professor)
    @name = name
    @professor = professor
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def groups_represented
    listed_groups = []
    @students.each do |student| # calling the group attr on block variable and adding to array
      listed_groups << student.group
    end 
    listed_groups.uniq 
  end
end

