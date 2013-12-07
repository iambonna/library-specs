require './src/library_system'
require './src/library'
require './src/catalog_entry'

describe 'Searching Catalog' do
  it 'should tell us if any library has the book' do
    ls = LibrarySystem.new
    book1 = CatalogEntry.new('book1')
    book2 = CatalogEntry.new('book2')
    ls.catalog = [book1, book2]
    ls.does_library_system_have_this_book?('book3').should == false
    ls.does_library_system_have_this_book?('book2').should == true
    ls.does_library_system_have_this_book?('book1').should == true
  end

  it 'should find a library that has the book I am looking for' do
    ls = LibrarySystem.new
    sf_library = Library.new('SF library')
    chicago_library = Library.new('Chicago library')
    ls.add_library(sf_library)
    ls.add_library(chicago_library)
    book1 = CatalogEntry.new('book1')
    book2 = CatalogEntry.new('book2')
    book3 = CatalogEntry.new('book3')
    ls.catalog = [book2, book1]
    sf_library.add_new_book_to_catalog(book1)
    sf_library.add_new_book_to_catalog(book2)
    chicago_library.add_new_book_to_catalog(book1)
    chicago_library.add_new_book_to_catalog(book2)
    chicago_library.add_new_book_to_catalog(book3)

    #ls.find_library_with_book('book1').should == ['SF library', 'Chicago library']
    #ls.find_library_with_book('book2').should == ['SF library', 'Chicago library']
   # ls.get_catalog_entry_by_title('book3').should == book3
    #ls.find_library_with_book('book3').should == ['Chicago library']
    #ls.find_library_with_book('book4').should == 'Book not found'
  end
end