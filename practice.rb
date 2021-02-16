require 'pry'
require_relative 'author'
require_relative 'book'
require_relative 'genre'

### jk_rowling.books => all of jks books
# author 
jk_rowling = Author.new("J.K. Rowling", 50)
eri = Author.new("Eri", 26)

# Books
book1 = Book.new("Test Book 1", 100)
book2 = Book.new("Test Book 2", 100)
book3 = Book.new("Test Book 3", 100)

potter1 = Book.new("Sorceror Stone", 377)
potter2 = Book.new("Harry potter book 2", 377)
potter3 = Book.new("Happy potter book 3", 377)

#Creating Genres 
# CREATED AN ASSOCIATION BETWEEN THE BOOK and THE AUTHOR
genre1 = Genre.new("Test", eri, book1) #=> book1 & eri
genre2 = Genre.new("Test", eri, book2) #=> book1 & eri
genre3 = Genre.new("Test", eri, book3) #=> book1 & eri

# Create Potter Associations
Genre.new("Test", jk_rowling, potter1) #=> potter1 to jk_rowling
Genre.new("Test", jk_rowling, potter2) #=> potter2 to jk_rowling
Genre.new("Test", jk_rowling, potter3) #=> potter3 to jk_rowling

add_jk_to_book1 = Genre.new("Test", jk_rowling, book1) #=> jk rowling & book1
book1.authors

binding.pry


## HAS MANY THROUGH Relationship
# BOOK HAS MANY AUTHORS THROUGH GENRES
# AUTHOR HAS MANY BOOKS THROUGH GENRES