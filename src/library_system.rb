require './src/catalog_entry'
require 'byebug'

class LibrarySystem
  attr_accessor :catalog

  def get_catalog_entry_by_title(book_title)
    @catalog.each do |catalog_entry|
      if catalog_entry.book_title == book_title
        return catalog_entry
      end
    end
   nil
  end

  def find_library_with_book(book_title)
    if get_catalog_entry_by_title(book_title) != nil
      book_im_looking_for = get_catalog_entry_by_title(book_title)
      book_im_looking_for.library_name
    else
      'Book not found'
    end
  end

  def does_library_system_have_this_book?(book_title)
    !@catalog.select { |catalog_entry| catalog_entry.book_title == book_title }.empty?
  end
end