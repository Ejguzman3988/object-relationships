### Object Relationships

### The different types of relationships 

## ASSOCIATIONS: creating a relationship between two things

1. belong_to / has_many
    example: pet belongs to owner, owner has many pets
2. has_many / has_many
    example: restaurant has many reviewer, and a reviewer may have restaurants
3. has_many Through
    example: Author, Book, Genres
    - Genre belongs to a Author
    - Genre belongs to a Book
    - Book has many Genres
    - Author has many Genres
    - Book has many Authors, through Genres
    - Author has many Books, through Genres

## Authors
    - name
    - age

## Books
    - title
    - pages

    
    ---------
    - author

## Genre 


### Multiple sources of truths - You have different information thorughout your association
     - One object knows it belongs to anothedr
     - Other object doesnt know it has that object
### Single source of truth

    - Object that belongs to another. As our single source of truth.