require 'spec_helper'

describe 'Backer - ::new' do
  it 'takes a name on initialization' do
    backer = Backer.new("Avi")
    expect(backer.name).to eq("Avi")
  end
end

describe 'Project - ::new' do
  it 'takes a title on initialization' do
    project = Project.new("Project With So Much Amaze")
    expect(project.name).to eq("Project With So Much Amaze")
  end
end

describe 'Backer - #back_project' do
  it 'accepts a Project as an argument and stores it in a backed_projects array' do
    spencer = Backer.new("Spencer")
    magic = Project.new("Magic The Gathering Thing")
    spencer.back_project(magic)

    expect(spencer.backed_projects).to include(magic)
  end
end

describe 'Project - #add_backer' do
  it 'accepts a Backer as an argument and stores it in a backers array' do
    book = Project.new("Ruby, Ruby, and More Ruby")
    steven = Backer.new("Steven")
    book.add_backer(steven)

    expect(book.backers).to include(steven)
  end
end

describe 'Backer - More Advanced #back_project' do
  it 'also adds the backer to the project\'s backers array' do
    logan = Backer.new("Logan")
    hoverboard = Project.new("Awesome Hoverboard")
    logan.back_project(hoverboard)

    expect(hoverboard.backers).to include(logan)
  end
end

describe 'Project - More Advanced #add_backer' do
  it 'also adds the project to the backer\'s backed_projects array' do
    ropes = Project.new("All The Ropes")
    arel = Backer.new("Arel")
    ropes.add_backer(arel)

    expect(arel.backed_projects).to include(ropes)
  end
end