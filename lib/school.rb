require 'pry'
class School 

    attr_accessor :name, :roster    #:student, :grade
    def initialize(name)
        @name = name
        @roster = {}
    end

    # def student(student)
    #     @student = student
    # end

    def grade(stu_grade)
        @stu_grade = stu_grade
    end

    def add_student(student, stu_grade)
        if @roster.has_key?(stu_grade)
           @roster[stu_grade].push(student)
        #    binding.pry
        else
            @roster[stu_grade] = []
            @roster[stu_grade].push(student)  
        end  
    end
    def grade(stu_grade)
        return @roster[stu_grade]
    end

    def sort
        @roster.each do |k, v|
            @roster[k] = v.sort!
            # binding.pry
            # grades.each do |students|
            #     students.sort! 
            # end
        end
        @roster
    end
end