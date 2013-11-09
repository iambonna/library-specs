require './src/person'
require './src/library'
require './src/book'


describe 'reserving books' do
  it 'should let us go to a library' do
    kevin = Person.new
    library = Library.new
    kevin.go_to_library(library)
    kevin.location.should == "I'm in the Awesome Library"
  end

  it 'does not allow a user to checkout a book not in the library' do
    kevin = Person.new
    library = Library.new
    kevin.go_to_library(library)
    kevin.reserve_book("Ender's Game").should == 'That book is not in our library'
    kevin.reserved_books.should == []
    library.books_lent_out.should == []
  end

  it 'allows a user to reserve a book' do
    kevin = Person.new
    library = Library.new
    book = Book.new("Ender's Game", 'Orson Scott Card')
    books = [book]
    library.add_to_catalog(books)
    kevin.go_to_library(library)
    kevin.reserve_book("Ender's Game").should == "You have reserved Ender's Game by Orson Scott Card"
    kevin.reserved_books.should  == [book]
    library.books_lent_out.should == [book]
  end

  it 'allows users to go to more than 1 library to find a book' do
    kevin = Person.new
    sf_library = Library.new
    oakland_library = Library.new
    book = Book.new("Ender's Game", 'Orson Scott Card')
    books = [book]
    oakland_library.add_to_catalog(books)
    kevin.go_to_library(sf_library)
    kevin.reserve_book("Ender's Game").should == 'That book is not in our library'
    kevin.go_to_library(oakland_library)
    kevin.reserve_book("Ender's Game").should == "You have reserved Ender's Game by Orson Scott Card"
  end
end