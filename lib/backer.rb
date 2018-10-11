require 'pry'
require_relative './project'

class Backer 

    def initialize(name)
        @name = name 
        @backed_projects = []
    end 

    attr_accessor :name, :backed_projects
    
    def back_project(project)
        self.backed_projects << project
        project.backers << self
    end

end

backer = Backer.new("Avi")

#binding.pry