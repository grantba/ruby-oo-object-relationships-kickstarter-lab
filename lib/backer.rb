#require 'pry'

class Backer

    attr_accessor :name, :backer, :project

    def initialize(name)
        @name = name
        @all = []
    end

    def back_project(project)
        ProjectBacker.new(project, self)
        self.project = project
        @all << project
    end

    def backed_projects
        @all.select do |instance|
            project == self.project
        end
    end
#binding.pry
end