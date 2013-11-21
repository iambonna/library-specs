require './src/catalog_entry'
require 'byebug'

class LibrarySystem
  attr_accessor :catalog

  def find_book_by_title(book_title)
    @catalog.each do |catalog_entry|
      if catalog_entry.book_title == book_title
        return catalog_entry
      end
      return false
    end
  end

  def find_library_with_book(book_title)
    if find_book_by_title(book_title)
      @catalog.each do |catalog_entry|
      end
      library_name = @catalog[0].library_name
    end
    return library_name
  end

  def does_library_have_this_book?(book_title)
    return find_book_by_title(book_title)
  end

end