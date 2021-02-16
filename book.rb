class Book
    @@all = []
    attr_accessor :title, :pages

    def initialize(title, pages)
        self.title = title
        self.pages = pages
        @@all << self
    end

    def self.all
        @@all
    end

    # All of this specific instance of book, Looking for their genres
    def genres
        Genre.all.select{|genre| genre.book == self }
    end
    
    def authors
        # get all the authors through genre
        # This method should return an array of all the author objects that this book has
        self.genres.collect{ |genre| genre.author }
    end


end