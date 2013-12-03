require './src/library_system'
require './src/catalog_entry'
require 'byebug'

class Person
  attr_accessor :name, :library_membership_number

  def initialize(person)
    @name = person.to_s
    #@library_membership_number = 0
  end

  def borrow_book_by_title(title)
    true
  end
end
