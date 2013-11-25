require './src/library_system'
require './src/catalog_entry'
require 'byebug'

class Person
  attr_accessor :name, :library_membership
  def borrow_book_by_title(title)
    true
  end
end
