require './src/catalog_entry'
require './src/library'
require 'byebug'

class LibrarySystem
  attr_accessor :catalog, :library_list

  def initialize
  @library_list =['SF library']
  end

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

  def add_new_library_member(personal_info, library_name)
    ls = LibrarySystem.new
    ls.library_list.each do |library_in_system|
      if library_in_system == library_name
        library = Library.new(library_name)
        if library.members.eql? []
          library.members << personal_info
          return "#{personal_info} is now a member of a #{library_name}."
        else
        library.members.each do |library_member |
          if personal_info == library_member
            return "#{personal_info} is already a member of a #{library_name}"
          else
            library.members << personal_info
            return "#{personal_info} is now a member of a #{library_name}."
          end
        end
        end
      else
        ls.library_list << library_name
        return "#{library_name} doesn't exist so we will add one. and let's see how we can add u as a member of that lib."
      end
    end
  end
end