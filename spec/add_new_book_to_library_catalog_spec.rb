require './src/library_system'
require './src/library'
require './src/catalog_entry'
require './src/person'
require 'byebug'

describe 'adding new library member' do
  it 'should let a user to add new book to library catalog' do
    sf_library = Library.new('SF library')
    green_gables_book = CatalogEntry.new('Anne of Green Gable', 'SF library')
    sf_library.add_new_book_to_catalog(green_gables_book).size.should == 1
  end
end