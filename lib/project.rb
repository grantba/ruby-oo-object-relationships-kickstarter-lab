#require 'pry'

class Project

    attr_accessor :title, :project, :backer

    def initialize(title)
        @title = title
        @all = []
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
        self.backer = backer
        @all << backer
    end

    def backers
        @all.select do |instance|
            backer == self.backer
        end
    end

end

