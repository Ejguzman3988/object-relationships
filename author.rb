# ## Authors
# - name
# - age
require 'pry'

class Author
    attr_accessor :name
    attr_reader :age
    
    def initialize(name, age)
        @name = name
        @age = age 
    end

    def genres
        Genre.all.select { |genre| genre.author == self }
    end

    def books 
        # Book.all.select {|book| book.author == self}
        # get all books through genre
        self.genres.map{ |genre| genre.book }
    end

end

### author_object.books
