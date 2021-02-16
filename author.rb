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

    def books 
        # Book.all.select {|book| book.author == self}
    end

end

### author_object.books
