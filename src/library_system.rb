require './src/catalog_entry'
require 'byebug'

class LibrarySystem
  attr_accessor :catalog

  def find_book_by_title(book_title)
    @catalog.each do |catalog_entry|
      if catalog_entry.book_title == book_title
        return catalog_entry
      end
    end
    return false
  end

  def find_library_with_book(book_title)
    if find_book_by_title(book_title) != nil
      book_im_looking_for = find_book_by_title(book_title)
      return book_im_looking_for.library_name
    end

end

def does_library_have_this_book?(book_title)
  @catalog.each do |catalog_entry|
    if catalog_entry.book_title == book_title
      return true
    end
    return false
  end

end

end