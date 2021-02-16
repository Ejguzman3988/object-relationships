class Genre
    @@all = []

    attr_accessor :name, :author, :book

    def initialize(name, author_object, book_object)
        @name = name
        @author = author_object
        @book = book_object
        @@all << self
    end

    def authors
        @authors
    end

    def books
        @books
    end

    def self.all
        @@all
    end


end
