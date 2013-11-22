require './src/library_system'

describe 'LibrarySystem' do
  it 'should return a catalog entry object when you search the catalog by title' do
    catalog_entry = CatalogEntry.new('book_title', 'library_name')
    catalog = [catalog_entry]
    ls = LibrarySystem.new
    ls.catalog = catalog

    ls.get_catalog_entry_by_title('book_title').should == catalog_entry
  end
end