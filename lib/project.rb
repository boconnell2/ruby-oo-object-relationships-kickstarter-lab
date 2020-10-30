class Project

    attr_accessor :title, :backer

    @@all =[]

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def self.all
        @@all
    end

    def backers
        output = ProjectBacker.all.select do |ele|
            ele.project == self
        end
        output.map {|proj_backer| proj_backer.backer}
    end

end