require './src/library_system'
require './src/catalog_entry'

describe 'Searching Catalog' do
  it 'should tell us if the catalog has the book' do
    ls = LibrarySystem.new
    ce1 = CatalogEntry.new('book1', 'SF library')
    ce2 = CatalogEntry.new('book2', 'Oakland library')
    ls.catalog = [ce1, ce2]

    ls.does_library_have_this_book?('book1').should == true
    ls.does_library_have_this_book?('book3').should == false
  end

  it 'should find a library that has the book I am looking for' do
    ls = LibrarySystem.new
    ce1 = CatalogEntry.new('book1', 'SF library')
    ce2 = CatalogEntry.new('book2', 'Oakland library')
    ls.catalog = [ ce2, ce1]

    ls.find_library_with_book('book1').should == 'SF library'

    ls.find_book_by_title('book3').should == false
    ls.find_book_by_title('book2').should == ce2
    ls.find_book_by_title('book1').should == ce1
    ls.find_library_with_book('book2').should == 'Oakland library'
  end
end