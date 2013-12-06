require './src/library_system'

class CatalogEntry
  attr_accessor :book_title, :library_name, :renter

  def initialize(book_title, library_name)
    @book_title = book_title
    @library_name = library_name
  end
end