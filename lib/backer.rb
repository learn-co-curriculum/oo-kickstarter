require "pry"

class Backer

  attr_reader :backed_projects, :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(title)
    # binding.pry
    @backed_projects << title
    title.backers << self

  end


end
