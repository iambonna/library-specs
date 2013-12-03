require './src/library_system'

describe 'LibrarySystem' do
  it 'should return a catalog entry object when you search the catalog by title' do
    catalog_entry = CatalogEntry.new('book_title', 'library_name')
    catalog = [catalog_entry]
    ls = LibrarySystem.new
    ls.catalog = catalog

    ls.get_catalog_entry_by_title('book_title').should == catalog_entry
  end

  it 'should allow the addition of a library to the library system' do
    ls = LibrarySystem.new
    ls.library_list.size.should == 0
    sf = Library.new('SF library')
    ls.add_library(sf).should == "#{sf.library_name} is now added to the library system"
    ls.library_list.size.should == 1
    ls.library_list.last.should == sf
  end

  it 'should not allow you to add a library that already exists' do
    ls = LibrarySystem.new
    ls.library_list.should == []
    sf = Library.new('SF library')
    ls.add_library(sf)
    ls.add_library(sf).should == "#{sf.library_name} already exist!"
    ls.library_list.size.should == 1
  end


end