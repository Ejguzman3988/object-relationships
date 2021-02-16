class Book
    @@all = []
    
    attr_accessor :title, :pages, :author

    def initialize(title, pages, author)
        self.title = title
        self.pages = pages
        @@all << self
    end

    def self.all
        @@all
    end

    # All of this specific instance of book, Looking for their genres
    def genres
        Genre.all.select{|genre| genre.books.include?(self) }
    end
    
    def authors
        binding.pry
    
    end


end