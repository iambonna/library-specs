require './src/person'
require './src/library'
require './src/book'
require 'byebug'


describe 'borrowing books' do
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
    kevin.borrow_book("Ender's Game").should == 'That book is not in our library'
    kevin.books_i_borrowed.should == []
    library.books_lent_out.should == []
  end

  it 'allows a user to borrow a book' do
    kevin = Person.new
    library = Library.new
    book = Book.new("Ender's Game", 'Orson Scott Card')
    books = [book]
    library.add_to_catalog(books)
    kevin.go_to_library(library)
    kevin.borrow_book("Ender's Game").should == "You have reserved Ender's Game by Orson Scott Card"
    kevin.books_i_borrowed.should  == [book]
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
    kevin.borrow_book("Ender's Game").should == 'That book is not in our library'
    kevin.go_to_library(oakland_library)
    kevin.borrow_book("Ender's Game").should == "You have reserved Ender's Game by Orson Scott Card"
  end

  it 'each library maintains a list of books it lent out' do
    kevin = Person.new
    sf_library = Library.new
    oakland_library = Library.new
    book1 = Book.new('The Name of the Wind', 'Patrick Rothfuss')
    book2 = Book.new("A Wise Man's Fear", 'Patrick Rothfuss')
    oakland_library.add_to_catalog([book1])
    sf_library.add_to_catalog([book2])

    kevin.go_to_library(oakland_library)
    kevin.borrow_book('The Name of the Wind').should == "You have reserved The Name of the Wind by Patrick Rothfuss"

    kevin.go_to_library(sf_library)
    kevin.borrow_book("A Wise Man's Fear").should == "You have reserved A Wise Man's Fear by Patrick Rothfuss"

    kevin.books_i_borrowed.should == [book1, book2]
    oakland_library.books_lent_out.should == [book1]
    sf_library.books_lent_out.should == [book2]
  end
end