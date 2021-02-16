class Genre
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @books = []
        @authors = []
        @@all << self
    end

    def add_book(book_object)
        @books << book_object
    end

    def add_author(author_object)
        @authors << author_object
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
