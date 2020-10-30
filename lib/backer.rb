require 'pry'

class Backer

    attr_accessor :name, :project

    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def self.all
        @@all
    end

    # def backed_projects
    #     ProjectBacker.all.select do |ele|
    #         if ele.backer == self
    #            ele.backer.map {|pb| pb.project }
    #         end
    #     end
    # end

    def backed_projects
        output = ProjectBacker.all.select do |ele|
            ele.backer == self
        end
        output.map {|proj_backer| proj_backer.project}
    end


end