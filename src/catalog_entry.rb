require './src/library_system'
require './src/library'

class CatalogEntry
  attr_accessor :book_title, :libraries_that_have_this_book, :renter

  def initialize(book_title)
    @book_title = book_title
    @libraries_that_have_this_book = []
  end
end