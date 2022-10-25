class Employee

    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        if !@title.include?("Manager")
            bonus = (self.salary) * multiplier
        end
    end 
end

class Manager < Employee

    attr_reader :employees, :total_salaries

    def initalize(name, title, salary, boss, employees)
        super
        @employees = []
    end
    def bonus(multiplier)
        bonus = (self.total_subsalary) * multiplier
    end

    def total_subsalary
        total = 0
        @employees.each do |employee|
            if employee.is_a?(Manager)
                total += employee.salary + employee.total_subsalary
            else
                total += employee.salary
            end
        end
        total
    end

    def get_employees(employee)
        if employee.boss.name == self.name
            @employees << employee
        end
    end
end
