# Author

# first name, last name, genre

# some_author.author_genre => want it to print genre of author_genre
# want program to do it on the fly

require 'ostruct'

class Author
  attr_accessor :first_name, :last_name, :genre 

  def author
    OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre)
  end

  def method_missing(method_name, *arguments, &block)
    if method_name.to_s =~ /author_(.*)/
      author.send($1, *arguments, &block)
    else
      super
    end
  end
  #attr accessor makes getter and setter methods available

end


r_scott_bakker = Author.new
r_scott_bakker.first_name = "R. Scott"
r_scott_bakker.last_name = "Bakker"
r_scott_bakker.genre = "Fantasy"

p r_scott_bakker.first_name
p r_scott_bakker.last_name
p r_scott_bakker.genre

p r_scott_bakker.respond_to?(:author_genre)

