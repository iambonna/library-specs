require './src/library_system'
require './src/library'
require './src/catalog_entry'
require './src/person'
require 'byebug'

describe 'adding new library member' do
  it 'should let a user to add new book to library catalog' do
    sf_library = Library.new('SF library')
    chicago_library = Library.new('Chicago library')
    green_gables_book = CatalogEntry.new('Anne of Green Gable')
    candy = CatalogEntry.new('Candy')

    sf_library.add_new_book_to_catalog(green_gables_book).size.should == 1
    sf_library.add_new_book_to_catalog(candy).size.should == 2
    chicago_library.add_new_book_to_catalog(green_gables_book).size.should == 1
  end
end