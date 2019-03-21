require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

john = Author.new("John")
pets = Magazine.new("Pets", "animals")
peter = Author.new("Peter")
lego = Magazine.new("Lego", "toys")
Article.new(john, pets, "Dogs", "about dogs")
Article.new(peter, pets, "Cats", "about cats")
Article.new(john, lego, "Houses", "about houses")
Article.new(john, lego, "Cars", "about cars")







### DO NOT REMOVE THIS
binding.pry

0
