
# Object Oriented Kickstarter

## Description

In this mini-lab, we are going to be creating a very, very simple version of Kickstarter.
We'll have Projects and Backers (and no concept of money at all), and they will need to interact with one another in a realistic way.

We want our interface to work something like this:

```ruby
bob = Backer.new("Bob")
awesome_project = Project.new("This is an Awesome Project")

bob.back_project(awesome_project)

bob.backed_projects
# => #<Project:0x000001018683d0 @title="This is an Awesome Project"...>

awesome_project.backers
# => #<Backer:0x000001018b9370 @name="Bob"...>
```

## Instructions

The specs have been set to run in default order, and are written in such a way that tests for the Backer and Project classes are mixed in with one another. This is not how you'd normally see specs for multiple objects. For the purposes of this lab, though, following the specs, in order, will eventually lead you to the correct relationships between your classes.

Run the specs by typing `rspec` on your command line.
