# Object Oriented Kickstarter

## Objectives

- Build classes that produce objects that relate to one another.

## Description

In this lab, we are going to be creating a very, very simple version of
Kickstarter. We'll have Projects and Backers (and no concept of money at all),
and they will need to interact with one another in a realistic way.

We want our interface to work something like this:

```ruby
bob = Backer.new("Bob")
awesome_project = Project.new("This is an Awesome Project")

bob.back_project(awesome_project)

bob.backed_projects
# => [#<Project:0x000001018683d0 @title="This is an Awesome Project"...>]

awesome_project.backers
# => [#<Backer:0x000001018b9370 @name="Bob"...>]
```

The tricky thing here is that projects can have many backers and backers can
back many projects.

## Instructions

The specs have been set to run in default order, and are written in such a way
that tests for the Backer and Project classes are mixed in with one another.
This is not how you'd normally see specs for multiple objects. For the purposes
of this lab, though, following the specs in order will eventually lead you to
the correct relationships between your classes.

- When a `Backer` instance is initialized, it should be initialized with a
  `@backed_projects` variable set to an empty array. Instances of the `Backer`
  class should have an `attr_reader` for backed projects. This way, a backer can
  report on the projects they back.

- When a `Project` instance is initialized, it should be initialized with a
  `@backers` variable set to an empty array. Instances of the `Project` class
  should have an `attr_reader` for backers. This way, a project can report on
  who its backers are.

- Once both classes have their attributes and readers set up, write a method on
  the Backer class called `back_project()` that takes in a Project instance and
  adds the project to its `@backed_projects` attribute.

- Similarly, write a method on the Project class called `add_backer()` that
  takes in a Backer instance and adds the backer to its `@backers` attribute.

Great! We've got backers keeping track of the projects they back and projects
keeping track of their backers.

But... do you see the problem? Both sides of this relationship, backer and
project, are keeping track of each other, and to maintain consistent data,
if one side is updated, the other side should be as well.

- Whenever `back_project()` is called to update `@backed_projects`, the project
  _should alsoupdate its `@backers` list_.

- Similarly, whenever `add_backer()` is called to update `@backers`, the backer
  _should also update its `@backed_projects` list_.

You may realize that this set up does not maintain a single source of truth. The
trouble here is that our usual way of maintaining a "has-many" / "belongs-to"
relationship won't work here. We'll address this is upcoming lessons, 

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/oo-kickstarter' title='Object Oriented Kickstarter'>Object Oriented Kickstarter</a> on Learn.co and start learning to code for free.</p>
