require './src/library_system'
require './src/catalog_entry'

describe 'Searching Catalog' do
  it 'should tell us if the catalog has the book' do
    ls = LibrarySystem.new
    ce1 = CatalogEntry.new('book1', 'SF library')
    ce2 = CatalogEntry.new('book2', 'Oakland library')
    ls.catalog = [ce1, ce2]

    ls.does_library_system_have_this_book?('book3').should == false
    ls.does_library_system_have_this_book?('book2').should == true
    ls.does_library_system_have_this_book?('book1').should == true
  end

  it 'should find a library that has the book I am looking for' do
    ls = LibrarySystem.new
    ce1 = CatalogEntry.new('book1', 'SF library')
    ce2 = CatalogEntry.new('book2', 'Oakland library')
    ls.catalog = [ce2, ce1]

    ls.find_library_with_book('book1').should == 'SF library'
    ls.find_library_with_book('book2').should == 'Oakland library'
    ls.find_library_with_book('book3').should == 'Book not found'
  end
end