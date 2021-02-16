require 'pry'
require_relative 'author'
require_relative 'book'
require_relative 'genre'




### Has Many / Belongs To
genre1 = Genre.new("Fiction")
genre2 = Genre.new("Test")


### jk_rowling.books => all of jks books
# author 
jk_rowling = Author.new("J.K. Rowling", 50)

eri = Author.new("Eri", 26)
# calling an instance method
book1 = Book.new("Test Book 1", 100, eri)
book2 = Book.new("Test Book 2", 100, eri)
book3 = Book.new("Test Book 3", 100, eri)


# book
potter1 = Book.new("Sorceror Stone", 377, jk_rowling)

potter2 = Book.new("Harry potter book 2", 377, jk_rowling)

potter3 = Book.new("Happy potter book 3", 377, jk_rowling)

jk_rowling.books #=> 2 books inside

#Fiction 
genre1.add_book(potter1)
genre1.add_book(potter2)
genre1.add_book(potter3)

genre2.add_book(book1)
genre2.add_book(book2)
genre2.add_book(book3)


genre1.add_author(jk_rowling)
genre1.add_author(eri)


genre2.add_author(eri)

book1.authors

binding.pry