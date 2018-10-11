require 'pry'
require_relative './backer'


class Project

    def initialize(title)
        @title = title
        @backers = []
    end

    attr_accessor :title, :backers

    def add_backer(backer) 
        self.backers << backer
        backer.backed_projects << self
    end

end

project = Project.new("Project With So Much Amaze")